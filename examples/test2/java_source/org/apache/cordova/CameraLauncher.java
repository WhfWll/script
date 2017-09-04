package org.apache.cordova;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.codec.binary.Base64;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;

public class CameraLauncher
  extends CordovaPlugin
  implements MediaScannerConnection.MediaScannerConnectionClient
{
  private static final int ALLMEDIA = 2;
  private static final int CAMERA = 1;
  private static final int DATA_URL = 0;
  private static final int FILE_URI = 1;
  private static final String GET_All = "Get All";
  private static final String GET_PICTURE = "Get Picture";
  private static final String GET_VIDEO = "Get Video";
  private static final int JPEG = 0;
  private static final String LOG_TAG = "CameraLauncher";
  private static final int NATIVE_URI = 2;
  private static final int PHOTOLIBRARY = 0;
  private static final int PICTURE = 0;
  private static final int PNG = 1;
  private static final int SAVEDPHOTOALBUM = 2;
  private static final int VIDEO = 1;
  public CallbackContext callbackContext;
  private MediaScannerConnection conn;
  private boolean correctOrientation;
  private int encodingType;
  private Uri imageUri;
  private int mQuality;
  private int mediaType;
  private int numPics;
  private boolean saveToPhotoAlbum;
  private Uri scanMe;
  private int targetHeight;
  private int targetWidth;
  
  public CameraLauncher() {}
  
  public static int calculateSampleSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 / paramInt2 > paramInt3 / paramInt4) {
      return paramInt1 / paramInt3;
    }
    return paramInt2 / paramInt4;
  }
  
  private void checkForDuplicateImage(int paramInt)
  {
    int j = 1;
    Uri localUri = whichContentStore();
    Cursor localCursor = queryImgDB(localUri);
    int k = localCursor.getCount();
    int i = j;
    if (paramInt == 1)
    {
      i = j;
      if (saveToPhotoAlbum) {
        i = 2;
      }
    }
    if (k - numPics == i)
    {
      localCursor.moveToLast();
      j = Integer.valueOf(localCursor.getString(localCursor.getColumnIndex("_id"))).intValue();
      paramInt = j;
      if (i == 2) {
        paramInt = j - 1;
      }
      localUri = Uri.parse(localUri + "/" + paramInt);
      cordova.getActivity().getContentResolver().delete(localUri, null, null);
    }
  }
  
  private void cleanup(int paramInt, Uri paramUri1, Uri paramUri2, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
    new File(FileHelper.stripFileProtocol(paramUri1.toString())).delete();
    checkForDuplicateImage(paramInt);
    if ((saveToPhotoAlbum) && (paramUri2 != null)) {
      scanForGallery(paramUri2);
    }
    System.gc();
  }
  
  private File createCaptureFile(int paramInt)
  {
    if (paramInt == 0) {
      return new File(DirectoryManager.getTempDirectoryPath(cordova.getActivity()), ".Pic.jpg");
    }
    if (paramInt == 1) {
      return new File(DirectoryManager.getTempDirectoryPath(cordova.getActivity()), ".Pic.png");
    }
    throw new IllegalArgumentException("Invalid Encoding Type: " + paramInt);
  }
  
  private Bitmap getRotatedBitmap(int paramInt, Bitmap paramBitmap, ExifHelper paramExifHelper)
  {
    Matrix localMatrix = new Matrix();
    if (paramInt == 180) {
      localMatrix.setRotate(paramInt);
    }
    for (;;)
    {
      paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
      paramExifHelper.resetOrientation();
      return paramBitmap;
      localMatrix.setRotate(paramInt, paramBitmap.getWidth() / 2.0F, paramBitmap.getHeight() / 2.0F);
    }
  }
  
  private Bitmap getScaledBitmap(String paramString)
  {
    Object localObject2 = null;
    Object localObject1;
    if ((targetWidth <= 0) && (targetHeight <= 0)) {
      localObject1 = BitmapFactory.decodeFile(paramString);
    }
    int[] arrayOfInt;
    do
    {
      BitmapFactory.Options localOptions;
      do
      {
        do
        {
          return localObject1;
          localOptions = new BitmapFactory.Options();
          inJustDecodeBounds = true;
          BitmapFactory.decodeFile(paramString, localOptions);
          localObject1 = localObject2;
        } while (outWidth == 0);
        localObject1 = localObject2;
      } while (outHeight == 0);
      arrayOfInt = calculateAspectRatio(outWidth, outHeight);
      inJustDecodeBounds = false;
      inSampleSize = calculateSampleSize(outWidth, outHeight, targetWidth, targetHeight);
      paramString = BitmapFactory.decodeFile(paramString, localOptions);
      localObject1 = localObject2;
    } while (paramString == null);
    return Bitmap.createScaledBitmap(paramString, arrayOfInt[0], arrayOfInt[1], true);
  }
  
  private Uri getUriFromMediaStore()
  {
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("mime_type", "image/jpeg");
    try
    {
      Uri localUri = cordova.getActivity().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject);
      return localUri;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException2)
    {
      LOG.d("CameraLauncher", "Can't write to external media storage.");
      try
      {
        localObject = cordova.getActivity().getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, (ContentValues)localObject);
        return localObject;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException1)
      {
        LOG.d("CameraLauncher", "Can't write to internal media storage.");
      }
    }
    return null;
  }
  
  private Cursor queryImgDB(Uri paramUri)
  {
    return cordova.getActivity().getContentResolver().query(paramUri, new String[] { "_id" }, null, null, null);
  }
  
  private void scanForGallery(Uri paramUri)
  {
    scanMe = paramUri;
    if (conn != null) {
      conn.disconnect();
    }
    conn = new MediaScannerConnection(cordova.getActivity().getApplicationContext(), this);
    conn.connect();
  }
  
  private Uri whichContentStore()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {
      return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }
    return MediaStore.Images.Media.INTERNAL_CONTENT_URI;
  }
  
  private void writeUncompressedImage(Uri paramUri)
    throws FileNotFoundException, IOException
  {
    FileInputStream localFileInputStream = new FileInputStream(FileHelper.stripFileProtocol(imageUri.toString()));
    paramUri = cordova.getActivity().getContentResolver().openOutputStream(paramUri);
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = localFileInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramUri.write(arrayOfByte, 0, i);
    }
    paramUri.flush();
    paramUri.close();
    localFileInputStream.close();
  }
  
  public int[] calculateAspectRatio(int paramInt1, int paramInt2)
  {
    int j = targetWidth;
    int k = targetHeight;
    int i;
    if ((j <= 0) && (k <= 0))
    {
      j = paramInt1;
      i = paramInt2;
    }
    for (;;)
    {
      return new int[] { j, i };
      if ((j > 0) && (k <= 0))
      {
        i = j * paramInt2 / paramInt1;
      }
      else if ((j <= 0) && (k > 0))
      {
        j = k * paramInt1 / paramInt2;
        i = k;
      }
      else
      {
        double d1 = j / k;
        double d2 = paramInt1 / paramInt2;
        if (d2 > d1)
        {
          i = j * paramInt2 / paramInt1;
        }
        else
        {
          i = k;
          if (d2 < d1)
          {
            j = k * paramInt1 / paramInt2;
            i = k;
          }
        }
      }
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    callbackContext = paramCallbackContext;
    if (paramString.equals("takePicture"))
    {
      saveToPhotoAlbum = false;
      targetHeight = 0;
      targetWidth = 0;
      encodingType = 0;
      mediaType = 0;
      mQuality = 80;
      mQuality = paramJSONArray.getInt(0);
      int i = paramJSONArray.getInt(1);
      int j = paramJSONArray.getInt(2);
      targetWidth = paramJSONArray.getInt(3);
      targetHeight = paramJSONArray.getInt(4);
      encodingType = paramJSONArray.getInt(5);
      mediaType = paramJSONArray.getInt(6);
      correctOrientation = paramJSONArray.getBoolean(8);
      saveToPhotoAlbum = paramJSONArray.getBoolean(9);
      if (targetWidth < 1) {
        targetWidth = -1;
      }
      if (targetHeight < 1) {
        targetHeight = -1;
      }
      if (j == 1) {
        takePicture(i, encodingType);
      }
      for (;;)
      {
        paramString = new PluginResult(PluginResult.Status.NO_RESULT);
        paramString.setKeepCallback(true);
        paramCallbackContext.sendPluginResult(paramString);
        return true;
        if ((j == 0) || (j == 2)) {
          getImage(j, i);
        }
      }
    }
    return false;
  }
  
  public void failPicture(String paramString)
  {
    callbackContext.error(paramString);
  }
  
  public void getImage(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent();
    String str = "Get Picture";
    if (mediaType == 0)
    {
      localIntent.setType("image/*");
      if (Build.VERSION.SDK_INT >= 19) {
        break label141;
      }
      localIntent.setAction("android.intent.action.GET_CONTENT");
      localIntent.addCategory("android.intent.category.OPENABLE");
      if (cordova != null) {
        cordova.startActivityForResult(this, Intent.createChooser(localIntent, new String(str)), (paramInt1 + 1) * 16 + paramInt2 + 1);
      }
    }
    label141:
    do
    {
      return;
      if (mediaType == 1)
      {
        localIntent.setType("video/*");
        str = "Get Video";
        break;
      }
      if (mediaType != 2) {
        break;
      }
      localIntent.setType("*/*");
      str = "Get All";
      break;
      localIntent.setAction("android.intent.action.PICK");
      localIntent.setData(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    } while (cordova == null);
    cordova.startActivityForResult(this, localIntent, (paramInt1 + 1) * 16 + paramInt2 + 1);
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: bipush 16
    //   3: idiv
    //   4: iconst_1
    //   5: isub
    //   6: istore 6
    //   8: iload_1
    //   9: bipush 16
    //   11: irem
    //   12: iconst_1
    //   13: isub
    //   14: istore 5
    //   16: iconst_0
    //   17: istore_1
    //   18: iconst_0
    //   19: istore 4
    //   21: iload 6
    //   23: iconst_1
    //   24: if_icmpne +551 -> 575
    //   27: iload_2
    //   28: iconst_m1
    //   29: if_icmpne +526 -> 555
    //   32: new 220	org/apache/cordova/ExifHelper
    //   35: dup
    //   36: invokespecial 472	org/apache/cordova/ExifHelper:<init>	()V
    //   39: astore 10
    //   41: iload 4
    //   43: istore_1
    //   44: aload_0
    //   45: getfield 377	org/apache/cordova/CameraLauncher:encodingType	I
    //   48: ifne +50 -> 98
    //   51: aload 10
    //   53: new 102	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   60: aload_0
    //   61: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   64: invokeinterface 135 1 0
    //   69: invokestatic 187	org/apache/cordova/DirectoryManager:getTempDirectoryPath	(Landroid/content/Context;)Ljava/lang/String;
    //   72: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: ldc_w 474
    //   78: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokevirtual 477	org/apache/cordova/ExifHelper:createInFile	(Ljava/lang/String;)V
    //   87: aload 10
    //   89: invokevirtual 480	org/apache/cordova/ExifHelper:readExifData	()V
    //   92: aload 10
    //   94: invokevirtual 483	org/apache/cordova/ExifHelper:getOrientation	()I
    //   97: istore_1
    //   98: aconst_null
    //   99: astore 9
    //   101: aconst_null
    //   102: astore 7
    //   104: aconst_null
    //   105: astore 8
    //   107: iload 5
    //   109: ifne +1044 -> 1153
    //   112: aload_0
    //   113: aload_0
    //   114: getfield 344	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   117: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   120: invokestatic 163	org/apache/cordova/FileHelper:stripFileProtocol	(Ljava/lang/String;)Ljava/lang/String;
    //   123: invokespecial 485	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   126: astore 9
    //   128: aload 9
    //   130: astore 7
    //   132: aload 9
    //   134: ifnonnull +18 -> 152
    //   137: aload_3
    //   138: invokevirtual 489	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   141: ldc_w 491
    //   144: invokevirtual 497	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   147: checkcast 151	android/graphics/Bitmap
    //   150: astore 7
    //   152: aload 7
    //   154: ifnonnull +46 -> 200
    //   157: ldc 28
    //   159: ldc_w 499
    //   162: invokestatic 504	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   165: pop
    //   166: aload_0
    //   167: ldc_w 506
    //   170: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   173: return
    //   174: astore 7
    //   176: aload 7
    //   178: invokevirtual 511	java/io/IOException:printStackTrace	()V
    //   181: iload 4
    //   183: istore_1
    //   184: goto -86 -> 98
    //   187: astore_3
    //   188: aload_3
    //   189: invokevirtual 511	java/io/IOException:printStackTrace	()V
    //   192: aload_0
    //   193: ldc_w 513
    //   196: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   199: return
    //   200: aload 7
    //   202: astore_3
    //   203: iload_1
    //   204: ifeq +23 -> 227
    //   207: aload 7
    //   209: astore_3
    //   210: aload_0
    //   211: getfield 393	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   214: ifeq +13 -> 227
    //   217: aload_0
    //   218: iload_1
    //   219: aload 7
    //   221: aload 10
    //   223: invokespecial 515	org/apache/cordova/CameraLauncher:getRotatedBitmap	(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    //   226: astore_3
    //   227: aload_0
    //   228: aload_3
    //   229: invokevirtual 519	org/apache/cordova/CameraLauncher:processPicture	(Landroid/graphics/Bitmap;)V
    //   232: aload_0
    //   233: iconst_0
    //   234: invokespecial 170	org/apache/cordova/CameraLauncher:checkForDuplicateImage	(I)V
    //   237: aload_3
    //   238: astore 7
    //   240: aload_0
    //   241: iconst_1
    //   242: aload_0
    //   243: getfield 344	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   246: aload 8
    //   248: aload 7
    //   250: invokespecial 521	org/apache/cordova/CameraLauncher:cleanup	(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    //   253: return
    //   254: aload_0
    //   255: getfield 75	org/apache/cordova/CameraLauncher:saveToPhotoAlbum	Z
    //   258: ifeq +109 -> 367
    //   261: new 156	java/io/File
    //   264: dup
    //   265: aload_0
    //   266: invokespecial 523	org/apache/cordova/CameraLauncher:getUriFromMediaStore	()Landroid/net/Uri;
    //   269: aload_0
    //   270: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   273: invokestatic 527	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   276: invokespecial 166	java/io/File:<init>	(Ljava/lang/String;)V
    //   279: invokestatic 531	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   282: astore_3
    //   283: aload_3
    //   284: ifnonnull +10 -> 294
    //   287: aload_0
    //   288: ldc_w 533
    //   291: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   294: aload_0
    //   295: getfield 232	org/apache/cordova/CameraLauncher:targetHeight	I
    //   298: iconst_m1
    //   299: if_icmpne +116 -> 415
    //   302: aload_0
    //   303: getfield 230	org/apache/cordova/CameraLauncher:targetWidth	I
    //   306: iconst_m1
    //   307: if_icmpne +108 -> 415
    //   310: aload_0
    //   311: getfield 381	org/apache/cordova/CameraLauncher:mQuality	I
    //   314: bipush 100
    //   316: if_icmpne +99 -> 415
    //   319: aload_0
    //   320: getfield 393	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   323: ifne +92 -> 415
    //   326: aload_0
    //   327: aload_3
    //   328: invokespecial 535	org/apache/cordova/CameraLauncher:writeUncompressedImage	(Landroid/net/Uri;)V
    //   331: aload_0
    //   332: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   335: aload_3
    //   336: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   339: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   342: aload 9
    //   344: astore 8
    //   346: aload_0
    //   347: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   350: aload_3
    //   351: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   354: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   357: aload 8
    //   359: astore 7
    //   361: aload_3
    //   362: astore 8
    //   364: goto -124 -> 240
    //   367: new 156	java/io/File
    //   370: dup
    //   371: aload_0
    //   372: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   375: invokeinterface 135 1 0
    //   380: invokestatic 187	org/apache/cordova/DirectoryManager:getTempDirectoryPath	(Landroid/content/Context;)Ljava/lang/String;
    //   383: new 102	java/lang/StringBuilder
    //   386: dup
    //   387: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   390: invokestatic 542	java/lang/System:currentTimeMillis	()J
    //   393: invokevirtual 545	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   396: ldc_w 547
    //   399: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokespecial 192	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   408: invokestatic 531	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   411: astore_3
    //   412: goto -129 -> 283
    //   415: aload_0
    //   416: aload_0
    //   417: getfield 344	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   420: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   423: invokestatic 163	org/apache/cordova/FileHelper:stripFileProtocol	(Ljava/lang/String;)Ljava/lang/String;
    //   426: invokespecial 485	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   429: astore 8
    //   431: aload 8
    //   433: astore 7
    //   435: iload_1
    //   436: ifeq +25 -> 461
    //   439: aload 8
    //   441: astore 7
    //   443: aload_0
    //   444: getfield 393	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   447: ifeq +14 -> 461
    //   450: aload_0
    //   451: iload_1
    //   452: aload 8
    //   454: aload 10
    //   456: invokespecial 515	org/apache/cordova/CameraLauncher:getRotatedBitmap	(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    //   459: astore 7
    //   461: aload_0
    //   462: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   465: invokeinterface 135 1 0
    //   470: invokevirtual 141	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   473: aload_3
    //   474: invokevirtual 349	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   477: astore 8
    //   479: aload 7
    //   481: getstatic 552	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   484: aload_0
    //   485: getfield 381	org/apache/cordova/CameraLauncher:mQuality	I
    //   488: aload 8
    //   490: invokevirtual 556	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   493: pop
    //   494: aload 8
    //   496: invokevirtual 365	java/io/OutputStream:close	()V
    //   499: aload 7
    //   501: astore 8
    //   503: aload_0
    //   504: getfield 377	org/apache/cordova/CameraLauncher:encodingType	I
    //   507: ifne -161 -> 346
    //   510: aload_0
    //   511: getfield 75	org/apache/cordova/CameraLauncher:saveToPhotoAlbum	Z
    //   514: ifeq +32 -> 546
    //   517: aload_3
    //   518: aload_0
    //   519: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   522: invokestatic 527	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   525: astore 8
    //   527: aload 10
    //   529: aload 8
    //   531: invokevirtual 559	org/apache/cordova/ExifHelper:createOutFile	(Ljava/lang/String;)V
    //   534: aload 10
    //   536: invokevirtual 562	org/apache/cordova/ExifHelper:writeExifData	()V
    //   539: aload 7
    //   541: astore 8
    //   543: goto -197 -> 346
    //   546: aload_3
    //   547: invokevirtual 565	android/net/Uri:getPath	()Ljava/lang/String;
    //   550: astore 8
    //   552: goto -25 -> 527
    //   555: iload_2
    //   556: ifne +11 -> 567
    //   559: aload_0
    //   560: ldc_w 567
    //   563: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   566: return
    //   567: aload_0
    //   568: ldc_w 569
    //   571: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   574: return
    //   575: iload 6
    //   577: ifeq +9 -> 586
    //   580: iload 6
    //   582: iconst_2
    //   583: if_icmpne +569 -> 1152
    //   586: iload_2
    //   587: iconst_m1
    //   588: if_icmpne +545 -> 1133
    //   591: aload_3
    //   592: invokevirtual 572	android/content/Intent:getData	()Landroid/net/Uri;
    //   595: astore 9
    //   597: aload_0
    //   598: getfield 379	org/apache/cordova/CameraLauncher:mediaType	I
    //   601: ifeq +16 -> 617
    //   604: aload_0
    //   605: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   608: aload 9
    //   610: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   613: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   616: return
    //   617: aload_0
    //   618: getfield 232	org/apache/cordova/CameraLauncher:targetHeight	I
    //   621: iconst_m1
    //   622: if_icmpne +43 -> 665
    //   625: aload_0
    //   626: getfield 230	org/apache/cordova/CameraLauncher:targetWidth	I
    //   629: iconst_m1
    //   630: if_icmpne +35 -> 665
    //   633: iload 5
    //   635: iconst_1
    //   636: if_icmpeq +9 -> 645
    //   639: iload 5
    //   641: iconst_2
    //   642: if_icmpne +23 -> 665
    //   645: aload_0
    //   646: getfield 393	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   649: ifne +16 -> 665
    //   652: aload_0
    //   653: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   656: aload 9
    //   658: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   661: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   664: return
    //   665: aload 9
    //   667: aload_0
    //   668: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   671: invokestatic 527	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   674: astore 7
    //   676: aload 7
    //   678: aload_0
    //   679: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   682: invokestatic 576	org/apache/cordova/FileHelper:getMimeType	(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   685: astore 8
    //   687: aload 7
    //   689: ifnull +30 -> 719
    //   692: aload 8
    //   694: ifnull +25 -> 719
    //   697: aload 8
    //   699: ldc_w 275
    //   702: invokevirtual 580	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   705: ifne +31 -> 736
    //   708: aload 8
    //   710: ldc_w 582
    //   713: invokevirtual 580	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   716: ifne +20 -> 736
    //   719: ldc 28
    //   721: ldc_w 499
    //   724: invokestatic 504	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   727: pop
    //   728: aload_0
    //   729: ldc_w 584
    //   732: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   735: return
    //   736: aload_0
    //   737: aload 7
    //   739: invokespecial 485	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   742: astore 8
    //   744: aload 8
    //   746: ifnonnull +20 -> 766
    //   749: ldc 28
    //   751: ldc_w 499
    //   754: invokestatic 504	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   757: pop
    //   758: aload_0
    //   759: ldc_w 506
    //   762: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   765: return
    //   766: aload 8
    //   768: astore 7
    //   770: aload_0
    //   771: getfield 393	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   774: ifeq +105 -> 879
    //   777: aload_0
    //   778: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   781: invokeinterface 135 1 0
    //   786: invokevirtual 141	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   789: aload_3
    //   790: invokevirtual 572	android/content/Intent:getData	()Landroid/net/Uri;
    //   793: iconst_1
    //   794: anewarray 301	java/lang/String
    //   797: dup
    //   798: iconst_0
    //   799: ldc_w 586
    //   802: aastore
    //   803: aconst_null
    //   804: aconst_null
    //   805: aconst_null
    //   806: invokevirtual 305	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   809: astore_3
    //   810: aload_3
    //   811: ifnull +25 -> 836
    //   814: aload_3
    //   815: iconst_0
    //   816: invokeinterface 589 2 0
    //   821: pop
    //   822: aload_3
    //   823: iconst_0
    //   824: invokeinterface 590 2 0
    //   829: istore_1
    //   830: aload_3
    //   831: invokeinterface 591 1 0
    //   836: aload 8
    //   838: astore 7
    //   840: iload_1
    //   841: ifeq +38 -> 879
    //   844: new 203	android/graphics/Matrix
    //   847: dup
    //   848: invokespecial 204	android/graphics/Matrix:<init>	()V
    //   851: astore_3
    //   852: aload_3
    //   853: iload_1
    //   854: i2f
    //   855: invokevirtual 208	android/graphics/Matrix:setRotate	(F)V
    //   858: aload 8
    //   860: iconst_0
    //   861: iconst_0
    //   862: aload 8
    //   864: invokevirtual 211	android/graphics/Bitmap:getWidth	()I
    //   867: aload 8
    //   869: invokevirtual 214	android/graphics/Bitmap:getHeight	()I
    //   872: aload_3
    //   873: iconst_1
    //   874: invokestatic 218	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   877: astore 7
    //   879: iload 5
    //   881: ifne +23 -> 904
    //   884: aload_0
    //   885: aload 7
    //   887: invokevirtual 519	org/apache/cordova/CameraLauncher:processPicture	(Landroid/graphics/Bitmap;)V
    //   890: aload 7
    //   892: ifnull +8 -> 900
    //   895: aload 7
    //   897: invokevirtual 154	android/graphics/Bitmap:recycle	()V
    //   900: invokestatic 179	java/lang/System:gc	()V
    //   903: return
    //   904: iload 5
    //   906: iconst_1
    //   907: if_icmpeq +9 -> 916
    //   910: iload 5
    //   912: iconst_2
    //   913: if_icmpne -23 -> 890
    //   916: aload_0
    //   917: getfield 232	org/apache/cordova/CameraLauncher:targetHeight	I
    //   920: ifle +198 -> 1118
    //   923: aload_0
    //   924: getfield 230	org/apache/cordova/CameraLauncher:targetWidth	I
    //   927: ifle +191 -> 1118
    //   930: new 102	java/lang/StringBuilder
    //   933: dup
    //   934: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   937: aload_0
    //   938: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   941: invokeinterface 135 1 0
    //   946: invokestatic 187	org/apache/cordova/DirectoryManager:getTempDirectoryPath	(Landroid/content/Context;)Ljava/lang/String;
    //   949: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   952: ldc_w 593
    //   955: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   958: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   961: astore_3
    //   962: new 220	org/apache/cordova/ExifHelper
    //   965: dup
    //   966: invokespecial 472	org/apache/cordova/ExifHelper:<init>	()V
    //   969: astore 8
    //   971: aload_0
    //   972: getfield 377	org/apache/cordova/CameraLauncher:encodingType	I
    //   975: ifne +28 -> 1003
    //   978: aload 8
    //   980: aload 9
    //   982: aload_0
    //   983: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   986: invokestatic 527	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   989: invokevirtual 477	org/apache/cordova/ExifHelper:createInFile	(Ljava/lang/String;)V
    //   992: aload 8
    //   994: invokevirtual 480	org/apache/cordova/ExifHelper:readExifData	()V
    //   997: aload 8
    //   999: invokevirtual 483	org/apache/cordova/ExifHelper:getOrientation	()I
    //   1002: pop
    //   1003: new 595	java/io/FileOutputStream
    //   1006: dup
    //   1007: aload_3
    //   1008: invokespecial 596	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   1011: astore 9
    //   1013: aload 7
    //   1015: getstatic 552	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   1018: aload_0
    //   1019: getfield 381	org/apache/cordova/CameraLauncher:mQuality	I
    //   1022: aload 9
    //   1024: invokevirtual 556	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   1027: pop
    //   1028: aload 9
    //   1030: invokevirtual 365	java/io/OutputStream:close	()V
    //   1033: aload_0
    //   1034: getfield 377	org/apache/cordova/CameraLauncher:encodingType	I
    //   1037: ifne +14 -> 1051
    //   1040: aload 8
    //   1042: aload_3
    //   1043: invokevirtual 559	org/apache/cordova/ExifHelper:createOutFile	(Ljava/lang/String;)V
    //   1046: aload 8
    //   1048: invokevirtual 562	org/apache/cordova/ExifHelper:writeExifData	()V
    //   1051: aload_0
    //   1052: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   1055: new 102	java/lang/StringBuilder
    //   1058: dup
    //   1059: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   1062: ldc_w 598
    //   1065: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1068: aload_3
    //   1069: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1072: ldc_w 600
    //   1075: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1078: invokestatic 542	java/lang/System:currentTimeMillis	()J
    //   1081: invokevirtual 545	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1084: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1087: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   1090: goto -200 -> 890
    //   1093: astore_3
    //   1094: aload_3
    //   1095: invokevirtual 601	java/lang/Exception:printStackTrace	()V
    //   1098: aload_0
    //   1099: ldc_w 603
    //   1102: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1105: goto -215 -> 890
    //   1108: astore 9
    //   1110: aload 9
    //   1112: invokevirtual 511	java/io/IOException:printStackTrace	()V
    //   1115: goto -112 -> 1003
    //   1118: aload_0
    //   1119: getfield 373	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   1122: aload 9
    //   1124: invokevirtual 157	android/net/Uri:toString	()Ljava/lang/String;
    //   1127: invokevirtual 538	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   1130: goto -240 -> 890
    //   1133: iload_2
    //   1134: ifne +11 -> 1145
    //   1137: aload_0
    //   1138: ldc_w 605
    //   1141: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1144: return
    //   1145: aload_0
    //   1146: ldc_w 607
    //   1149: invokevirtual 508	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1152: return
    //   1153: iload 5
    //   1155: iconst_1
    //   1156: if_icmpeq -902 -> 254
    //   1159: iload 5
    //   1161: iconst_2
    //   1162: if_icmpne -922 -> 240
    //   1165: goto -911 -> 254
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1168	0	this	CameraLauncher
    //   0	1168	1	paramInt1	int
    //   0	1168	2	paramInt2	int
    //   0	1168	3	paramIntent	Intent
    //   19	163	4	i	int
    //   14	1149	5	j	int
    //   6	578	6	k	int
    //   102	51	7	localObject1	Object
    //   174	46	7	localIOException1	IOException
    //   238	776	7	localObject2	Object
    //   105	942	8	localObject3	Object
    //   99	930	9	localObject4	Object
    //   1108	15	9	localIOException2	IOException
    //   39	496	10	localExifHelper	ExifHelper
    // Exception table:
    //   from	to	target	type
    //   44	98	174	java/io/IOException
    //   32	41	187	java/io/IOException
    //   112	128	187	java/io/IOException
    //   137	152	187	java/io/IOException
    //   157	173	187	java/io/IOException
    //   176	181	187	java/io/IOException
    //   210	227	187	java/io/IOException
    //   227	237	187	java/io/IOException
    //   240	253	187	java/io/IOException
    //   254	283	187	java/io/IOException
    //   287	294	187	java/io/IOException
    //   294	342	187	java/io/IOException
    //   346	357	187	java/io/IOException
    //   367	412	187	java/io/IOException
    //   415	431	187	java/io/IOException
    //   443	461	187	java/io/IOException
    //   461	499	187	java/io/IOException
    //   503	527	187	java/io/IOException
    //   527	539	187	java/io/IOException
    //   546	552	187	java/io/IOException
    //   930	971	1093	java/lang/Exception
    //   971	1003	1093	java/lang/Exception
    //   1003	1051	1093	java/lang/Exception
    //   1051	1090	1093	java/lang/Exception
    //   1110	1115	1093	java/lang/Exception
    //   971	1003	1108	java/io/IOException
  }
  
  public void onMediaScannerConnected()
  {
    try
    {
      conn.scanFile(scanMe.toString(), "image/*");
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      LOG.e("CameraLauncher", "Can't scan file in MediaScanner after taking picture");
    }
  }
  
  public void onScanCompleted(String paramString, Uri paramUri)
  {
    conn.disconnect();
  }
  
  public void processPicture(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      if (paramBitmap.compress(Bitmap.CompressFormat.JPEG, mQuality, localByteArrayOutputStream))
      {
        paramBitmap = new String(Base64.encodeBase64(localByteArrayOutputStream.toByteArray()));
        callbackContext.success(paramBitmap);
      }
      return;
    }
    catch (Exception paramBitmap)
    {
      for (;;)
      {
        failPicture("Error compressing image.");
      }
    }
  }
  
  public void takePicture(int paramInt1, int paramInt2)
  {
    numPics = queryImgDB(whichContentStore()).getCount();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    File localFile = createCaptureFile(paramInt2);
    localIntent.putExtra("output", Uri.fromFile(localFile));
    imageUri = Uri.fromFile(localFile);
    if (cordova != null) {
      cordova.startActivityForResult(this, localIntent, paramInt1 + 32 + 1);
    }
  }
}
