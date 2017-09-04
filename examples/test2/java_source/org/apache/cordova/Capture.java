package org.apache.cordova;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Capture
  extends CordovaPlugin
{
  private static final String AUDIO_3GPP = "audio/3gpp";
  private static final int CAPTURE_AUDIO = 0;
  private static final int CAPTURE_IMAGE = 1;
  private static final int CAPTURE_INTERNAL_ERR = 0;
  private static final int CAPTURE_NO_MEDIA_FILES = 3;
  private static final int CAPTURE_VIDEO = 2;
  private static final String IMAGE_JPEG = "image/jpeg";
  private static final String LOG_TAG = "Capture";
  private static final String VIDEO_3GPP = "video/3gpp";
  private static final String VIDEO_MP4 = "video/mp4";
  private CallbackContext callbackContext;
  private double duration;
  private long limit;
  private int numPics;
  private JSONArray results;
  
  public Capture() {}
  
  private void captureAudio()
  {
    Intent localIntent = new Intent("android.provider.MediaStore.RECORD_SOUND");
    cordova.startActivityForResult(this, localIntent, 0);
  }
  
  private void captureImage()
  {
    numPics = queryImgDB(whichContentStore()).getCount();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", Uri.fromFile(new File(DirectoryManager.getTempDirectoryPath(cordova.getActivity()), "Capture.jpg")));
    cordova.startActivityForResult(this, localIntent, 1);
  }
  
  private void captureVideo(double paramDouble)
  {
    Intent localIntent = new Intent("android.media.action.VIDEO_CAPTURE");
    if (Build.VERSION.SDK_INT > 8) {
      localIntent.putExtra("android.intent.extra.durationLimit", paramDouble);
    }
    cordova.startActivityForResult(this, localIntent, 2);
  }
  
  private void checkForDuplicateImage()
  {
    Uri localUri = whichContentStore();
    Cursor localCursor = queryImgDB(localUri);
    if (localCursor.getCount() - numPics == 2)
    {
      localCursor.moveToLast();
      int i = Integer.valueOf(localCursor.getString(localCursor.getColumnIndex("_id"))).intValue();
      localUri = Uri.parse(localUri + "/" + (i - 1));
      cordova.getActivity().getContentResolver().delete(localUri, null, null);
    }
  }
  
  private JSONObject createErrorObject(int paramInt, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("code", paramInt);
      localJSONObject.put("message", paramString);
      return localJSONObject;
    }
    catch (JSONException paramString) {}
    return localJSONObject;
  }
  
  private JSONObject createMediaFile(Uri paramUri)
  {
    File localFile = new File(FileHelper.getRealPath(paramUri, cordova));
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject.put("name", localFile.getName());
        localJSONObject.put("fullPath", "file://" + localFile.getAbsolutePath());
        if ((localFile.getAbsoluteFile().toString().endsWith(".3gp")) || (localFile.getAbsoluteFile().toString().endsWith(".3gpp")))
        {
          if (paramUri.toString().contains("/audio/"))
          {
            localJSONObject.put("type", "audio/3gpp");
            localJSONObject.put("lastModifiedDate", localFile.lastModified());
            localJSONObject.put("size", localFile.length());
            return localJSONObject;
          }
          localJSONObject.put("type", "video/3gpp");
          continue;
        }
        localJSONObject.put("type", FileHelper.getMimeType(localFile.getAbsolutePath(), cordova));
      }
      catch (JSONException paramUri)
      {
        paramUri.printStackTrace();
        return localJSONObject;
      }
    }
  }
  
  private JSONObject getAudioVideoData(String paramString, JSONObject paramJSONObject, boolean paramBoolean)
    throws JSONException
  {
    MediaPlayer localMediaPlayer = new MediaPlayer();
    try
    {
      localMediaPlayer.setDataSource(paramString);
      localMediaPlayer.prepare();
      paramJSONObject.put("duration", localMediaPlayer.getDuration() / 1000);
      if (paramBoolean)
      {
        paramJSONObject.put("height", localMediaPlayer.getVideoHeight());
        paramJSONObject.put("width", localMediaPlayer.getVideoWidth());
      }
      return paramJSONObject;
    }
    catch (IOException paramString)
    {
      Log.d("Capture", "Error: loading video file");
    }
    return paramJSONObject;
  }
  
  private JSONObject getFormatData(String paramString1, String paramString2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("height", 0);
    localJSONObject.put("width", 0);
    localJSONObject.put("bitrate", 0);
    localJSONObject.put("duration", 0);
    localJSONObject.put("codecs", "");
    String str;
    if ((paramString2 != null) && (!paramString2.equals("")))
    {
      str = paramString2;
      if (!"null".equals(paramString2)) {}
    }
    else
    {
      str = FileHelper.getMimeType(paramString1, cordova);
    }
    Log.d("Capture", "Mime type = " + str);
    if ((str.equals("image/jpeg")) || (paramString1.endsWith(".jpg"))) {
      paramString2 = getImageData(paramString1, localJSONObject);
    }
    do
    {
      return paramString2;
      if (str.endsWith("audio/3gpp")) {
        return getAudioVideoData(paramString1, localJSONObject, false);
      }
      if (str.equals("video/3gpp")) {
        break;
      }
      paramString2 = localJSONObject;
    } while (!str.equals("video/mp4"));
    return getAudioVideoData(paramString1, localJSONObject, true);
  }
  
  private JSONObject getImageData(String paramString, JSONObject paramJSONObject)
    throws JSONException
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(FileHelper.stripFileProtocol(paramString), localOptions);
    paramJSONObject.put("height", outHeight);
    paramJSONObject.put("width", outWidth);
    return paramJSONObject;
  }
  
  private String getTempDirectoryPath()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (File localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + cordova.getActivity().getPackageName() + "/cache/");; localFile = cordova.getActivity().getCacheDir())
    {
      localFile.mkdirs();
      return localFile.getAbsolutePath();
    }
  }
  
  private Cursor queryImgDB(Uri paramUri)
  {
    return cordova.getActivity().getContentResolver().query(paramUri, new String[] { "_id" }, null, null, null);
  }
  
  private Uri whichContentStore()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {
      return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }
    return MediaStore.Images.Media.INTERNAL_CONTENT_URI;
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    callbackContext = paramCallbackContext;
    limit = 1L;
    duration = 0.0D;
    results = new JSONArray();
    JSONObject localJSONObject = paramJSONArray.optJSONObject(0);
    if (localJSONObject != null)
    {
      limit = localJSONObject.optLong("limit", 1L);
      duration = localJSONObject.optDouble("duration", 0.0D);
    }
    if (paramString.equals("getFormatData"))
    {
      paramCallbackContext.success(getFormatData(paramJSONArray.getString(0), paramJSONArray.getString(1)));
      return true;
    }
    if (paramString.equals("captureAudio"))
    {
      captureAudio();
      return true;
    }
    if (paramString.equals("captureImage"))
    {
      captureImage();
      return true;
    }
    if (paramString.equals("captureVideo"))
    {
      captureVideo(duration);
      return true;
    }
    return false;
  }
  
  public void fail(JSONObject paramJSONObject)
  {
    callbackContext.error(paramJSONObject);
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_2
    //   1: iconst_m1
    //   2: if_icmpne +455 -> 457
    //   5: iload_1
    //   6: ifne +64 -> 70
    //   9: aload_3
    //   10: invokevirtual 442	android/content/Intent:getData	()Landroid/net/Uri;
    //   13: astore_3
    //   14: aload_0
    //   15: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   18: aload_0
    //   19: aload_3
    //   20: invokespecial 444	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   23: invokevirtual 447	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   26: pop
    //   27: aload_0
    //   28: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   31: invokevirtual 449	org/json/JSONArray:length	()I
    //   34: i2l
    //   35: aload_0
    //   36: getfield 392	org/apache/cordova/Capture:limit	J
    //   39: lcmp
    //   40: iflt +25 -> 65
    //   43: aload_0
    //   44: getfield 390	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   47: new 451	org/apache/cordova/api/PluginResult
    //   50: dup
    //   51: getstatic 457	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   54: aload_0
    //   55: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   58: invokespecial 460	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   61: invokevirtual 464	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   64: return
    //   65: aload_0
    //   66: invokespecial 425	org/apache/cordova/Capture:captureAudio	()V
    //   69: return
    //   70: iload_1
    //   71: iconst_1
    //   72: if_icmpne +281 -> 353
    //   75: new 466	android/content/ContentValues
    //   78: dup
    //   79: invokespecial 467	android/content/ContentValues:<init>	()V
    //   82: astore 4
    //   84: aload 4
    //   86: ldc_w 469
    //   89: ldc 21
    //   91: invokevirtual 471	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload_0
    //   95: getfield 56	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   98: invokeinterface 89 1 0
    //   103: invokevirtual 177	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   106: getstatic 383	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   109: aload 4
    //   111: invokevirtual 475	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   114: astore_3
    //   115: new 477	java/io/FileInputStream
    //   118: dup
    //   119: new 150	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 151	java/lang/StringBuilder:<init>	()V
    //   126: aload_0
    //   127: getfield 56	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   130: invokeinterface 89 1 0
    //   135: invokestatic 95	org/apache/cordova/DirectoryManager:getTempDirectoryPath	(Landroid/content/Context;)Ljava/lang/String;
    //   138: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc_w 479
    //   144: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokespecial 480	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   153: astore 4
    //   155: aload_0
    //   156: getfield 56	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   159: invokeinterface 89 1 0
    //   164: invokevirtual 177	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   167: aload_3
    //   168: invokevirtual 484	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   171: astore 5
    //   173: sipush 4096
    //   176: newarray byte
    //   178: astore 6
    //   180: aload 4
    //   182: aload 6
    //   184: invokevirtual 488	java/io/FileInputStream:read	([B)I
    //   187: istore_1
    //   188: iload_1
    //   189: iconst_m1
    //   190: if_icmpeq +88 -> 278
    //   193: aload 5
    //   195: aload 6
    //   197: iconst_0
    //   198: iload_1
    //   199: invokevirtual 494	java/io/OutputStream:write	([BII)V
    //   202: goto -22 -> 180
    //   205: astore_3
    //   206: aload_3
    //   207: invokevirtual 495	java/io/IOException:printStackTrace	()V
    //   210: aload_0
    //   211: aload_0
    //   212: iconst_0
    //   213: ldc_w 497
    //   216: invokespecial 499	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   219: invokevirtual 501	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   222: return
    //   223: astore_3
    //   224: ldc 24
    //   226: ldc_w 503
    //   229: invokestatic 507	org/apache/cordova/api/LOG:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload_0
    //   233: getfield 56	org/apache/cordova/Capture:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   236: invokeinterface 89 1 0
    //   241: invokevirtual 177	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   244: getstatic 386	android/provider/MediaStore$Images$Media:INTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   247: aload 4
    //   249: invokevirtual 475	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   252: astore_3
    //   253: goto -138 -> 115
    //   256: astore_3
    //   257: ldc 24
    //   259: ldc_w 509
    //   262: invokestatic 507	org/apache/cordova/api/LOG:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: aload_0
    //   266: aload_0
    //   267: iconst_0
    //   268: ldc_w 511
    //   271: invokespecial 499	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   274: invokevirtual 501	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   277: return
    //   278: aload 5
    //   280: invokevirtual 514	java/io/OutputStream:flush	()V
    //   283: aload 5
    //   285: invokevirtual 517	java/io/OutputStream:close	()V
    //   288: aload 4
    //   290: invokevirtual 518	java/io/FileInputStream:close	()V
    //   293: aload_0
    //   294: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   297: aload_0
    //   298: aload_3
    //   299: invokespecial 444	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   302: invokevirtual 447	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   305: pop
    //   306: aload_0
    //   307: invokespecial 520	org/apache/cordova/Capture:checkForDuplicateImage	()V
    //   310: aload_0
    //   311: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   314: invokevirtual 449	org/json/JSONArray:length	()I
    //   317: i2l
    //   318: aload_0
    //   319: getfield 392	org/apache/cordova/Capture:limit	J
    //   322: lcmp
    //   323: iflt +25 -> 348
    //   326: aload_0
    //   327: getfield 390	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   330: new 451	org/apache/cordova/api/PluginResult
    //   333: dup
    //   334: getstatic 457	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   337: aload_0
    //   338: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   341: invokespecial 460	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   344: invokevirtual 464	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   347: return
    //   348: aload_0
    //   349: invokespecial 428	org/apache/cordova/Capture:captureImage	()V
    //   352: return
    //   353: iload_1
    //   354: iconst_2
    //   355: if_icmpne -291 -> 64
    //   358: aconst_null
    //   359: astore 4
    //   361: aload_3
    //   362: ifnull +9 -> 371
    //   365: aload_3
    //   366: invokevirtual 442	android/content/Intent:getData	()Landroid/net/Uri;
    //   369: astore 4
    //   371: aload 4
    //   373: astore_3
    //   374: aload 4
    //   376: ifnonnull +21 -> 397
    //   379: new 85	java/io/File
    //   382: dup
    //   383: aload_0
    //   384: invokespecial 522	org/apache/cordova/Capture:getTempDirectoryPath	()Ljava/lang/String;
    //   387: ldc_w 524
    //   390: invokespecial 100	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   393: invokestatic 106	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   396: astore_3
    //   397: aload_0
    //   398: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   401: aload_0
    //   402: aload_3
    //   403: invokespecial 444	org/apache/cordova/Capture:createMediaFile	(Landroid/net/Uri;)Lorg/json/JSONObject;
    //   406: invokevirtual 447	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   409: pop
    //   410: aload_0
    //   411: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   414: invokevirtual 449	org/json/JSONArray:length	()I
    //   417: i2l
    //   418: aload_0
    //   419: getfield 392	org/apache/cordova/Capture:limit	J
    //   422: lcmp
    //   423: iflt +25 -> 448
    //   426: aload_0
    //   427: getfield 390	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   430: new 451	org/apache/cordova/api/PluginResult
    //   433: dup
    //   434: getstatic 457	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   437: aload_0
    //   438: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   441: invokespecial 460	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   444: invokevirtual 464	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   447: return
    //   448: aload_0
    //   449: aload_0
    //   450: getfield 394	org/apache/cordova/Capture:duration	D
    //   453: invokespecial 431	org/apache/cordova/Capture:captureVideo	(D)V
    //   456: return
    //   457: iload_2
    //   458: ifne +48 -> 506
    //   461: aload_0
    //   462: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   465: invokevirtual 449	org/json/JSONArray:length	()I
    //   468: ifle +25 -> 493
    //   471: aload_0
    //   472: getfield 390	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   475: new 451	org/apache/cordova/api/PluginResult
    //   478: dup
    //   479: getstatic 457	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   482: aload_0
    //   483: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   486: invokespecial 460	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   489: invokevirtual 464	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   492: return
    //   493: aload_0
    //   494: aload_0
    //   495: iconst_3
    //   496: ldc_w 526
    //   499: invokespecial 499	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   502: invokevirtual 501	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   505: return
    //   506: aload_0
    //   507: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   510: invokevirtual 449	org/json/JSONArray:length	()I
    //   513: ifle +25 -> 538
    //   516: aload_0
    //   517: getfield 390	org/apache/cordova/Capture:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   520: new 451	org/apache/cordova/api/PluginResult
    //   523: dup
    //   524: getstatic 457	org/apache/cordova/api/PluginResult$Status:OK	Lorg/apache/cordova/api/PluginResult$Status;
    //   527: aload_0
    //   528: getfield 399	org/apache/cordova/Capture:results	Lorg/json/JSONArray;
    //   531: invokespecial 460	org/apache/cordova/api/PluginResult:<init>	(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    //   534: invokevirtual 464	org/apache/cordova/api/CallbackContext:sendPluginResult	(Lorg/apache/cordova/api/PluginResult;)V
    //   537: return
    //   538: aload_0
    //   539: aload_0
    //   540: iconst_3
    //   541: ldc_w 528
    //   544: invokespecial 499	org/apache/cordova/Capture:createErrorObject	(ILjava/lang/String;)Lorg/json/JSONObject;
    //   547: invokevirtual 501	org/apache/cordova/Capture:fail	(Lorg/json/JSONObject;)V
    //   550: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	551	0	this	Capture
    //   0	551	1	paramInt1	int
    //   0	551	2	paramInt2	int
    //   0	551	3	paramIntent	Intent
    //   82	293	4	localObject	Object
    //   171	113	5	localOutputStream	java.io.OutputStream
    //   178	18	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   75	94	205	java/io/IOException
    //   94	115	205	java/io/IOException
    //   115	180	205	java/io/IOException
    //   180	188	205	java/io/IOException
    //   193	202	205	java/io/IOException
    //   224	232	205	java/io/IOException
    //   232	253	205	java/io/IOException
    //   257	277	205	java/io/IOException
    //   278	347	205	java/io/IOException
    //   348	352	205	java/io/IOException
    //   94	115	223	java/lang/UnsupportedOperationException
    //   232	253	256	java/lang/UnsupportedOperationException
  }
}
