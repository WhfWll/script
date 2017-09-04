package cn.domob.android.j;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.domob.android.b.a;
import cn.domob.android.i.f;
import cn.domob.android.i.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class d
{
  private static final int A = 16;
  private static final int B = 16;
  private static final int C = 35;
  private static final int D = -1627389952;
  private static final int E = 5;
  private static final int F = 8;
  private static final int G = -3026479;
  private static final String H = "广告剩余";
  private static final String I = "秒";
  private static final int J = 35;
  private static final int K = 40;
  private static final int L = 6;
  private static f a = new f(d.class.getSimpleName());
  private static final String b = "domob_video_close_not_selected.png";
  private static final String c = "domob_video_muted_selected.png";
  private static final String d = "domob_video_muted_not_selected.png";
  private static final String e = "domob_video_not_mute_selected.png";
  private static final String f = "domob_video_not_mute_not_selected.png";
  private static final String g = "domob_video_full_not_selected.png";
  private static final String h = "domob_video_full_selected.png";
  private static final String i = "domob_video_not_full_not_selected.png";
  private static final String j = "domob_video_not_full_selected.png";
  private static final String k = "domob_video_goto_selected.png";
  private static final String l = "domob_video_goto_not_selected.png";
  private static final String m = "domob_video_download_selected.png";
  private static final String n = "domob_video_download_not_selected.png";
  private static final String o = "domob_video_custom_selected.png";
  private static final String p = "domob_video_custom_not_selected.png";
  private static final String q = "domob_video_replay_selected.png";
  private static final String r = "domob_video_replay_not_selected.png";
  private static final String s = "domob_video_logo.png";
  private static final int t = -1;
  private static ExecutorService u;
  private static final int v = 30;
  private static final int w = 30;
  private static final int x = 12;
  private static final int y = 30;
  private static final int z = 16;
  private Context M;
  private b N;
  private Handler O;
  private HashMap<String, BitmapDrawable> P = new HashMap();
  private ImageButton Q;
  private String R;
  private b S;
  private int T = 0;
  private RelativeLayout U;
  private RelativeLayout V;
  private TextView W;
  private int X;
  private int Y = 0;
  private boolean Z = false;
  private boolean aa = true;
  
  protected d(Context paramContext, b paramB, int paramInt, Handler paramHandler, b paramB1)
  {
    M = paramContext;
    N = paramB;
    S = paramB1;
    O = paramHandler;
    X = paramInt;
    if (u == null) {
      u = Executors.newFixedThreadPool(5);
    }
  }
  
  private BitmapDrawable a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return null;
      try
      {
        paramArrayOfByte = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
        if (paramArrayOfByte != null)
        {
          paramArrayOfByte = new BitmapDrawable(paramArrayOfByte);
          return paramArrayOfByte;
        }
      }
      catch (Exception paramArrayOfByte)
      {
        a.a(paramArrayOfByte);
      }
    }
    return null;
  }
  
  private Drawable a(Context paramContext, String paramString)
  {
    if (!h.e(paramString)) {
      try
      {
        paramContext = new BitmapDrawable(BitmapFactory.decodeStream(d.class.getClassLoader().getResourceAsStream("assets/" + paramString)));
        return paramContext;
      }
      catch (Exception paramContext)
      {
        a.a(paramContext);
      }
    }
    return null;
  }
  
  private RelativeLayout a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = 0;
    Object localObject = N.g();
    int i6 = ((b.a.a)localObject).f();
    localObject = ((b.a.a)localObject).h();
    V = new RelativeLayout(M);
    localObject = a((ArrayList)localObject);
    int i4 = 0;
    int i3;
    for (int i2 = 0; i1 < localObject.length; i2 = i3)
    {
      int i5;
      if (!paramBoolean2)
      {
        i5 = i4;
        i3 = i2;
        if (localObject[i1].b().equals("replay")) {}
      }
      else
      {
        a localA = a(localObject[i1], i4, i6);
        i5 = i4;
        i3 = i2;
        if (localA != null)
        {
          i5 = i4 + 1;
          V.addView(localA);
          i3 = 1;
        }
      }
      i1 += 1;
      i4 = i5;
    }
    localObject = new RelativeLayout.LayoutParams(-2, f(30));
    ((RelativeLayout.LayoutParams)localObject).addRule(13);
    V.setLayoutParams((ViewGroup.LayoutParams)localObject);
    if (!paramBoolean1)
    {
      V.setVisibility(4);
      O.postDelayed(new Runnable()
      {
        public void run()
        {
          d.h(d.this).setVisibility(0);
        }
      }, X);
    }
    if (i2 != 0) {
      return V;
    }
    return null;
  }
  
  private a a(final b.a.a.a paramA, int paramInt1, int paramInt2)
  {
    if (!h.e(paramA.b()))
    {
      paramA = new a(M, paramA);
      RelativeLayout.LayoutParams localLayoutParams = a(M, 30, 30);
      leftMargin = (f(paramInt2 + 30) * paramInt1);
      localLayoutParams.addRule(15);
      paramA.setLayoutParams(localLayoutParams);
      paramA.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (paramAnonymousMotionEvent.getAction() == 0) {
            d.a(d.this, paramA, true, true);
          }
          do
          {
            do
            {
              return false;
            } while (paramAnonymousMotionEvent.getAction() != 1);
            d.a(d.this, paramA, false, true);
          } while (d.a(d.this) == null);
          d.a(d.this).a(d.a.a(paramA));
          return false;
        }
      });
      a(paramA, false, false);
      return paramA;
    }
    return null;
  }
  
  private void a(final ImageButton paramImageButton, final Drawable paramDrawable)
  {
    O.post(new Runnable()
    {
      public void run()
      {
        if ((paramImageButton != null) && (paramDrawable != null)) {
          paramImageButton.setBackgroundDrawable(paramDrawable);
        }
      }
    });
  }
  
  private void a(ImageButton paramImageButton, String paramString)
  {
    a(paramImageButton, a(M, paramString));
  }
  
  private void a(RelativeLayout paramRelativeLayout, View paramView)
  {
    if ((paramView != null) && (paramRelativeLayout != null)) {
      paramRelativeLayout.addView(paramView);
    }
  }
  
  private void a(a paramA, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = a.a(paramA);
    String str = ((b.a.a.a)localObject).b();
    localObject = ((b.a.a.a)localObject).e();
    if ((T != -1) && (localObject != null) && (localObject.length == 2) && (P.containsKey(localObject[0])) && (P.containsKey(localObject[1]))) {
      if (paramBoolean1)
      {
        localObject = localObject[1];
        a(paramA, (Drawable)P.get(localObject));
      }
    }
    for (;;)
    {
      return;
      localObject = localObject[0];
      break;
      if (str != null)
      {
        localObject = null;
        if (str.equals("replay")) {
          if (paramBoolean1) {
            localObject = "domob_video_replay_selected.png";
          }
        }
        while (localObject != null)
        {
          if (!paramBoolean2) {
            break label243;
          }
          a(paramA, (String)localObject);
          return;
          localObject = "domob_video_replay_not_selected.png";
          continue;
          if (str.equals("download"))
          {
            if (paramBoolean1) {
              localObject = "domob_video_download_selected.png";
            } else {
              localObject = "domob_video_download_not_selected.png";
            }
          }
          else if (str.equals("goto"))
          {
            if (paramBoolean1) {
              localObject = "domob_video_goto_selected.png";
            } else {
              localObject = "domob_video_goto_not_selected.png";
            }
          }
          else if (str.equals("custom")) {
            if (paramBoolean1) {
              localObject = "domob_video_custom_selected.png";
            } else {
              localObject = "domob_video_custom_not_selected.png";
            }
          }
        }
      }
    }
    label243:
    b(paramA, (String)localObject);
  }
  
  /* Error */
  private byte[] a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 400	java/io/ByteArrayOutputStream
    //   6: dup
    //   7: invokespecial 401	java/io/ByteArrayOutputStream:<init>	()V
    //   10: astore 4
    //   12: aload 4
    //   14: astore_3
    //   15: sipush 1024
    //   18: newarray byte
    //   20: astore 6
    //   22: aload 4
    //   24: astore_3
    //   25: aload_1
    //   26: aload 6
    //   28: invokevirtual 407	java/io/InputStream:read	([B)I
    //   31: istore_2
    //   32: iload_2
    //   33: iconst_m1
    //   34: if_icmpeq +51 -> 85
    //   37: aload 4
    //   39: astore_3
    //   40: aload 4
    //   42: aload 6
    //   44: iconst_0
    //   45: iload_2
    //   46: invokevirtual 411	java/io/ByteArrayOutputStream:write	([BII)V
    //   49: goto -27 -> 22
    //   52: astore_3
    //   53: aload 4
    //   55: astore_1
    //   56: aload_3
    //   57: astore 4
    //   59: aload_1
    //   60: astore_3
    //   61: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   64: aload 4
    //   66: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   69: aload 5
    //   71: astore_3
    //   72: aload_1
    //   73: ifnull +10 -> 83
    //   76: aload_1
    //   77: invokevirtual 414	java/io/ByteArrayOutputStream:close	()V
    //   80: aload 5
    //   82: astore_3
    //   83: aload_3
    //   84: areturn
    //   85: aload 4
    //   87: astore_3
    //   88: aload 4
    //   90: invokevirtual 418	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   93: astore_1
    //   94: aload_1
    //   95: astore_3
    //   96: aload 4
    //   98: ifnull -15 -> 83
    //   101: aload 4
    //   103: invokevirtual 414	java/io/ByteArrayOutputStream:close	()V
    //   106: aload_1
    //   107: areturn
    //   108: astore_3
    //   109: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   112: aload_3
    //   113: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   116: aload_1
    //   117: areturn
    //   118: astore_1
    //   119: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   122: aload_1
    //   123: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   126: aconst_null
    //   127: areturn
    //   128: astore_1
    //   129: aconst_null
    //   130: astore_3
    //   131: aload_3
    //   132: ifnull +7 -> 139
    //   135: aload_3
    //   136: invokevirtual 414	java/io/ByteArrayOutputStream:close	()V
    //   139: aload_1
    //   140: athrow
    //   141: astore_3
    //   142: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   145: aload_3
    //   146: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   149: goto -10 -> 139
    //   152: astore_1
    //   153: goto -22 -> 131
    //   156: astore 4
    //   158: aconst_null
    //   159: astore_1
    //   160: goto -101 -> 59
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	163	0	this	d
    //   0	163	1	paramInputStream	java.io.InputStream
    //   31	15	2	i1	int
    //   14	26	3	localObject1	Object
    //   52	5	3	localException1	Exception
    //   60	36	3	localObject2	Object
    //   108	5	3	localIOException1	java.io.IOException
    //   130	6	3	localObject3	Object
    //   141	5	3	localIOException2	java.io.IOException
    //   10	92	4	localObject4	Object
    //   156	1	4	localException2	Exception
    //   1	80	5	localObject5	Object
    //   20	23	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   15	22	52	java/lang/Exception
    //   25	32	52	java/lang/Exception
    //   40	49	52	java/lang/Exception
    //   88	94	52	java/lang/Exception
    //   101	106	108	java/io/IOException
    //   76	80	118	java/io/IOException
    //   3	12	128	finally
    //   135	139	141	java/io/IOException
    //   15	22	152	finally
    //   25	32	152	finally
    //   40	49	152	finally
    //   61	69	152	finally
    //   88	94	152	finally
    //   3	12	156	java/lang/Exception
  }
  
  /* Error */
  private byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 420	java/net/URL
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 421	java/net/URL:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 425	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: checkcast 427	java/net/HttpURLConnection
    //   16: astore_3
    //   17: aload_3
    //   18: ldc_w 429
    //   21: invokevirtual 432	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   24: aload_3
    //   25: sipush 5000
    //   28: invokevirtual 435	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   31: aload_3
    //   32: invokevirtual 439	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   35: astore_1
    //   36: aload_0
    //   37: aload_1
    //   38: invokespecial 441	cn/domob/android/j/d:a	(Ljava/io/InputStream;)[B
    //   41: astore_2
    //   42: aload_3
    //   43: invokevirtual 444	java/net/HttpURLConnection:disconnect	()V
    //   46: aload_1
    //   47: ifnull +7 -> 54
    //   50: aload_1
    //   51: invokevirtual 445	java/io/InputStream:close	()V
    //   54: aload_2
    //   55: areturn
    //   56: astore_1
    //   57: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   60: aload_1
    //   61: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   64: goto -10 -> 54
    //   67: astore_2
    //   68: aconst_null
    //   69: astore_1
    //   70: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   73: aload_2
    //   74: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   77: aload_1
    //   78: ifnull +7 -> 85
    //   81: aload_1
    //   82: invokevirtual 445	java/io/InputStream:close	()V
    //   85: aconst_null
    //   86: areturn
    //   87: astore_1
    //   88: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   91: aload_1
    //   92: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   95: goto -10 -> 85
    //   98: astore_1
    //   99: aload_2
    //   100: ifnull +7 -> 107
    //   103: aload_2
    //   104: invokevirtual 445	java/io/InputStream:close	()V
    //   107: aload_1
    //   108: athrow
    //   109: astore_2
    //   110: getstatic 164	cn/domob/android/j/d:a	Lcn/domob/android/i/f;
    //   113: aload_2
    //   114: invokevirtual 220	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   117: goto -10 -> 107
    //   120: astore_3
    //   121: aload_1
    //   122: astore_2
    //   123: aload_3
    //   124: astore_1
    //   125: goto -26 -> 99
    //   128: astore_3
    //   129: aload_1
    //   130: astore_2
    //   131: aload_3
    //   132: astore_1
    //   133: goto -34 -> 99
    //   136: astore_2
    //   137: goto -67 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	d
    //   0	140	1	paramString	String
    //   1	54	2	arrayOfByte	byte[]
    //   67	37	2	localException1	Exception
    //   109	5	2	localIOException	java.io.IOException
    //   122	9	2	str	String
    //   136	1	2	localException2	Exception
    //   16	27	3	localHttpURLConnection	java.net.HttpURLConnection
    //   120	4	3	localObject1	Object
    //   128	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   50	54	56	java/io/IOException
    //   2	36	67	java/lang/Exception
    //   81	85	87	java/io/IOException
    //   2	36	98	finally
    //   103	107	109	java/io/IOException
    //   36	46	120	finally
    //   70	77	128	finally
    //   36	46	136	java/lang/Exception
  }
  
  private b.a.a.a[] a(ArrayList<b.a.a.a> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    b.a.a.a[] arrayOfA = new b.a.a.a[paramArrayList.size()];
    int i1 = 0;
    if (i1 < paramArrayList.size())
    {
      b.a.a.a localA = (b.a.a.a)paramArrayList.get(i1);
      int i2 = localA.c();
      if ((i2 >= 0) && (i2 < arrayOfA.length) && (arrayOfA[i2] == null)) {
        arrayOfA[i2] = localA;
      }
      for (;;)
      {
        i1 += 1;
        break;
        localArrayList.add(localA);
      }
    }
    i1 = 0;
    while (i1 < arrayOfA.length)
    {
      if ((arrayOfA[i1] == null) && (localArrayList.size() > 0)) {
        arrayOfA[i1] = ((b.a.a.a)localArrayList.remove(0));
      }
      i1 += 1;
    }
    return arrayOfA;
  }
  
  private void b(ImageButton paramImageButton, String paramString)
  {
    if ((paramImageButton != null) && (!h.e(paramString))) {
      paramImageButton.setBackgroundDrawable(a(M, paramString));
    }
  }
  
  private RelativeLayout d(int paramInt)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(M);
    localRelativeLayout.setBackgroundColor(-1627389952);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, f(paramInt)));
    localRelativeLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    return localRelativeLayout;
  }
  
  private void e(int paramInt)
  {
    AudioManager localAudioManager = (AudioManager)M.getSystemService("audio");
    int i1;
    if (localAudioManager != null)
    {
      i1 = m();
      if (i1 <= 0) {
        break label40;
      }
    }
    for (;;)
    {
      Y = i1;
      localAudioManager.setStreamVolume(3, paramInt, 0);
      return;
      label40:
      i1 = Y;
    }
  }
  
  private int f(int paramInt)
  {
    return (int)(a.t(M) * paramInt);
  }
  
  private ImageButton i()
  {
    if (!Z) {
      n();
    }
    if (N.g().d())
    {
      final ImageButton localImageButton = new ImageButton(M);
      if (k()) {
        b(localImageButton, "domob_video_muted_not_selected.png");
      }
      for (;;)
      {
        RelativeLayout.LayoutParams localLayoutParams = a(M, 30, 30);
        localLayoutParams.addRule(9);
        localLayoutParams.addRule(15);
        leftMargin = f(12);
        localImageButton.setLayoutParams(localLayoutParams);
        localImageButton.setOnTouchListener(new View.OnTouchListener()
        {
          public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
          {
            if (paramAnonymousMotionEvent.getAction() == 0) {
              if (d.c(d.this)) {
                d.a(d.this, localImageButton, "domob_video_muted_selected.png");
              }
            }
            for (;;)
            {
              return false;
              d.a(d.this, localImageButton, "domob_video_not_mute_selected.png");
              continue;
              if (paramAnonymousMotionEvent.getAction() == 1)
              {
                d.d(d.this);
                if (d.c(d.this)) {
                  d.a(d.this, localImageButton, "domob_video_muted_not_selected.png");
                } else {
                  d.a(d.this, localImageButton, "domob_video_not_mute_not_selected.png");
                }
              }
            }
          }
        });
        return localImageButton;
        b(localImageButton, "domob_video_not_mute_not_selected.png");
      }
    }
    return null;
  }
  
  private ImageButton j()
  {
    if (N.g().b())
    {
      Q = new ImageButton(M);
      b(N.g().c());
      RelativeLayout.LayoutParams localLayoutParams = a(M, 30, 30);
      localLayoutParams.addRule(11);
      localLayoutParams.addRule(15);
      rightMargin = f(12);
      Q.setLayoutParams(localLayoutParams);
      Q.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (d.e(d.this))
          {
            if (paramAnonymousMotionEvent.getAction() != 0) {
              break label79;
            }
            if (d.f(d.this) != null)
            {
              if (!d.f(d.this).equals("domob_video_not_full_not_selected.png")) {
                break label60;
              }
              d.a(d.this, d.g(d.this), "domob_video_not_full_selected.png");
            }
          }
          for (;;)
          {
            return false;
            label60:
            d.a(d.this, d.g(d.this), "domob_video_full_selected.png");
            continue;
            label79:
            if ((paramAnonymousMotionEvent.getAction() == 1) && (d.a(d.this) != null)) {
              d.a(d.this).i();
            }
          }
        }
      });
      return Q;
    }
    return null;
  }
  
  private boolean k()
  {
    return m() == 0;
  }
  
  private void l()
  {
    if (k())
    {
      if (Y > 0) {}
      for (int i1 = Y;; i1 = 6)
      {
        e(i1);
        return;
      }
    }
    e(0);
  }
  
  private int m()
  {
    AudioManager localAudioManager = (AudioManager)M.getSystemService("audio");
    if (localAudioManager != null) {
      return localAudioManager.getStreamVolume(3);
    }
    return 0;
  }
  
  private void n()
  {
    int i1 = N.g().e();
    if (i1 == 1) {
      e(0);
    }
    for (;;)
    {
      Z = true;
      return;
      if ((i1 == 2) && (k())) {
        e(6);
      }
    }
  }
  
  private ArrayList<String> o()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = N.g().h();
    int i1 = 0;
    while (i1 < localArrayList2.size())
    {
      String[] arrayOfString = ((b.a.a.a)localArrayList2.get(i1)).e();
      if ((arrayOfString != null) && (arrayOfString.length > 0))
      {
        int i2 = 0;
        while (i2 < arrayOfString.length)
        {
          if (!h.e(arrayOfString[i2])) {
            localArrayList1.add(arrayOfString[i2]);
          }
          i2 += 1;
        }
      }
      i1 += 1;
    }
    return localArrayList1;
  }
  
  protected ImageButton a(boolean paramBoolean)
  {
    int i1 = 0;
    if (N.e().h())
    {
      final ImageButton localImageButton = new ImageButton(M);
      b(localImageButton, "domob_video_close_not_selected.png");
      localImageButton.setVisibility(4);
      RelativeLayout.LayoutParams localLayoutParams = a(M, 16, 16);
      localLayoutParams.addRule(11);
      rightMargin = f(-N.e().i()[0]);
      localImageButton.setLayoutParams(localLayoutParams);
      localImageButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          d.a(d.this, localImageButton, "domob_video_close_not_selected.png");
          if (d.a(d.this) != null) {
            d.a(d.this).h();
          }
        }
      });
      if (paramBoolean) {
        i1 = X;
      }
      O.postDelayed(new Runnable()
      {
        public void run()
        {
          localImageButton.setVisibility(0);
        }
      }, i1);
      return localImageButton;
    }
    return null;
  }
  
  protected RelativeLayout.LayoutParams a(Context paramContext, int paramInt1, int paramInt2)
  {
    return b(paramContext, f(paramInt1), f(paramInt2));
  }
  
  protected TextView a()
  {
    if (N.e().c())
    {
      TextView localTextView = new TextView(M);
      localTextView.setTextSize(8.0F);
      localTextView.setTextColor(-3026479);
      b.a localA = N.e();
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(15);
      localLayoutParams.addRule(9);
      localTextView.setText(localA.e());
      leftMargin = f(localA.d()[0] + 35);
      localTextView.setLayoutParams(localLayoutParams);
      return localTextView;
    }
    return null;
  }
  
  protected void a(int paramInt)
  {
    if (W != null)
    {
      if (paramInt > 0) {
        break label38;
      }
      if (W.getVisibility() == 0) {
        O.post(new Runnable()
        {
          public void run()
          {
            d.b(d.this).setVisibility(8);
          }
        });
      }
    }
    label38:
    while (paramInt <= 0) {
      return;
    }
    String str = "广告剩余" + paramInt + "秒";
    final SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str);
    paramInt = str.length();
    int i1 = "广告剩余秒".length();
    int i2 = "广告剩余".length();
    int i3 = "广告剩余".length();
    localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-65536), i2, paramInt - i1 + i3, 34);
    O.post(new Runnable()
    {
      public void run()
      {
        d.b(d.this).setText(localSpannableStringBuilder);
        if (d.b(d.this).getVisibility() != 0) {
          d.b(d.this).setVisibility(0);
        }
      }
    });
  }
  
  protected ImageView b()
  {
    if (N.e().f())
    {
      ImageView localImageView = new ImageView(M);
      localImageView.setBackgroundDrawable(a(M, "domob_video_logo.png"));
      RelativeLayout.LayoutParams localLayoutParams = a(M, 35, 16);
      localLayoutParams.addRule(9);
      leftMargin = f(N.e().g()[0]);
      localImageView.setLayoutParams(localLayoutParams);
      return localImageView;
    }
    return null;
  }
  
  protected RelativeLayout.LayoutParams b(Context paramContext, int paramInt1, int paramInt2)
  {
    return new RelativeLayout.LayoutParams(paramInt1, paramInt2);
  }
  
  protected TextView b(int paramInt)
  {
    if (N.e().a())
    {
      W = new TextView(M);
      W.setTextSize(8.0F);
      b.a localA = N.e();
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(15);
      localLayoutParams.addRule(11);
      rightMargin = f(40 - localA.b()[0]);
      W.setLayoutParams(localLayoutParams);
      return W;
    }
    return null;
  }
  
  protected void b(boolean paramBoolean)
  {
    if (Q != null) {
      if (!paramBoolean) {
        break label30;
      }
    }
    label30:
    for (R = "domob_video_full_not_selected.png";; R = "domob_video_not_full_not_selected.png")
    {
      a(Q, R);
      return;
    }
  }
  
  protected RelativeLayout c(int paramInt)
  {
    RelativeLayout localRelativeLayout = d(16);
    ((RelativeLayout.LayoutParams)localRelativeLayout.getLayoutParams()).addRule(10);
    a(localRelativeLayout, b());
    a(localRelativeLayout, a());
    a(localRelativeLayout, b(paramInt));
    a(localRelativeLayout, a(true));
    return localRelativeLayout;
  }
  
  protected void c()
  {
    b.a.a localA = N.e().j();
    if ((U != null) && (localA.a() != 2)) {
      if (U.getVisibility() != 0) {
        break label48;
      }
    }
    label48:
    for (int i1 = 8;; i1 = 0)
    {
      U.setVisibility(i1);
      return;
    }
  }
  
  protected void c(boolean paramBoolean)
  {
    aa = paramBoolean;
  }
  
  protected void d()
  {
    if (U != null) {
      U.setVisibility(0);
    }
  }
  
  protected RelativeLayout e()
  {
    U = d(30);
    ((RelativeLayout.LayoutParams)U.getLayoutParams()).addRule(12);
    a(U, i());
    a(U, j());
    a(U, a(N.g().g(), false));
    if (N.e().j().a() == 0) {
      U.setVisibility(8);
    }
    return U;
  }
  
  protected void f()
  {
    if ((U != null) && (V != null)) {
      O.post(new Runnable()
      {
        public void run()
        {
          d.i(d.this).removeView(d.h(d.this));
          d.a(d.this, d.i(d.this), d.a(d.this, true, true));
        }
      });
    }
  }
  
  protected void g()
  {
    ArrayList localArrayList = o();
    final int i2 = localArrayList.size();
    if ((i2 == 0) && (S != null)) {
      S.k();
    }
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < localArrayList.size())
      {
        final String str = (String)localArrayList.get(i1);
        u.execute(new Thread(new Runnable()
        {
          public void run()
          {
            try
            {
              BitmapDrawable localBitmapDrawable = d.a(d.this, d.a(d.this, str));
              if (localBitmapDrawable != null)
              {
                d.j(d.this).put(str, localBitmapDrawable);
                d.h().b("button img download successfully, download url: " + str);
              }
              while (d.k(d.this) != -1)
              {
                d.l(d.this);
                if ((d.k(d.this) != i2) || (d.a(d.this) == null)) {
                  break;
                }
                d.a(d.this).j();
                return;
                d.h().d("button img download failed, download url: " + str);
                if ((d.a(d.this) != null) && (d.k(d.this) != -1)) {
                  d.a(d.this).j();
                }
                d.a(d.this, -1);
              }
              return;
            }
            catch (Exception localException)
            {
              d.h().a(localException);
            }
          }
        }));
        i1 += 1;
      }
    }
  }
  
  private class a
    extends ImageButton
  {
    b.a.a.a a;
    
    public a(Context paramContext, b.a.a.a paramA)
    {
      super();
      a = paramA;
    }
    
    private b.a.a.a a()
    {
      return a;
    }
  }
  
  protected static abstract interface b
  {
    public abstract void a(b.a.a.a paramA);
    
    public abstract void h();
    
    public abstract void i();
    
    public abstract void j();
    
    public abstract void k();
  }
}
