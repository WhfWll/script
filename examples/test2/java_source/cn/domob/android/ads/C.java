package cn.domob.android.ads;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.domob.android.i.f;
import java.text.SimpleDateFormat;
import java.util.Date;

class C
  implements q.a
{
  static final String a = "domob_update_info";
  static final String b = "ipb";
  static final String c = "info_md5";
  static final String d = "n";
  static final String e = "nt";
  static final String f = "vc";
  static final String g = "vn";
  static final String h = "u";
  static final String i = "s";
  static final String j = "md5";
  static final String k = "ul";
  static final String l = "f";
  static final String m = "sk";
  static final String n = "nrt";
  static final String o = "nri";
  static final String p = "next_time";
  static final String q = "skip_vc";
  static final int r = 0;
  static final int s = 1;
  static final int t = 2;
  static final int u = 0;
  static final int v = 1;
  static final int w = 3;
  private static f x = new f(C.class.getSimpleName());
  private String A;
  private String B;
  private String C;
  private int D;
  private String E;
  private String F;
  private String G;
  private g H;
  private Context y;
  private String z;
  
  protected C(Context paramContext, g paramG)
  {
    y = paramContext;
    H = paramG;
  }
  
  private Dialog a(Context paramContext, final SharedPreferences paramSharedPreferences)
  {
    Object localObject1 = paramSharedPreferences.edit();
    Object localObject2 = paramSharedPreferences.getString("md5", "");
    boolean bool1 = paramSharedPreferences.getBoolean("f", false);
    boolean bool2 = paramSharedPreferences.getBoolean("sk", false);
    paramSharedPreferences = new Dialog(paramContext);
    paramSharedPreferences.setCancelable(false);
    paramSharedPreferences.getWindow().requestFeature(1);
    LinearLayout localLinearLayout1 = new LinearLayout(paramContext);
    localLinearLayout1.setOrientation(1);
    localLinearLayout1.setBackgroundColor(Color.rgb(90, 90, 90));
    LinearLayout localLinearLayout2 = new LinearLayout(paramContext);
    localLinearLayout2.setOrientation(0);
    localLinearLayout2.setBackgroundColor(Color.rgb(230, 230, 230));
    localLinearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    localLinearLayout2.setGravity(16);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    Object localObject3 = new TextView(paramContext);
    ((TextView)localObject3).setText("更新提醒");
    ((TextView)localObject3).setTextSize(20.0F);
    ((TextView)localObject3).setTextColor(-16777216);
    Object localObject4 = new LinearLayout.LayoutParams(-2, -2);
    Object localObject5 = new ImageView(paramContext);
    ((ImageView)localObject5).setImageResource(17301569);
    Object localObject6 = new LinearLayout.LayoutParams(-2, -2);
    leftMargin = 5;
    rightMargin = 5;
    localLinearLayout2.addView((View)localObject5, (ViewGroup.LayoutParams)localObject6);
    localLinearLayout2.addView((View)localObject3, (ViewGroup.LayoutParams)localObject4);
    localObject4 = new LinearLayout(paramContext);
    ((LinearLayout)localObject4).setOrientation(1);
    ((LinearLayout)localObject4).setBackgroundColor(0);
    ((LinearLayout)localObject4).setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    ((LinearLayout)localObject4).setPadding(0, 10, 10, 10);
    localObject3 = a(paramContext);
    localObject5 = a(paramContext);
    localObject6 = a(paramContext);
    Object localObject7 = a(paramContext);
    Object localObject8 = a(paramContext);
    ((TextView)localObject3).setText("名称： " + B);
    ((TextView)localObject5).setText("大小： " + F);
    ((TextView)localObject6).setText("版本： " + E);
    ((TextView)localObject7).setText("描述：");
    ((TextView)localObject8).setText(G);
    LinearLayout localLinearLayout3 = new LinearLayout(paramContext);
    localLinearLayout3.setBackgroundColor(0);
    localLinearLayout3.addView((View)localObject7);
    localLinearLayout3.addView((View)localObject8);
    ((LinearLayout)localObject4).addView((View)localObject3);
    ((LinearLayout)localObject4).addView((View)localObject6);
    ((LinearLayout)localObject4).addView((View)localObject5);
    ((LinearLayout)localObject4).addView(localLinearLayout3);
    localObject3 = new ScrollView(paramContext);
    ((ScrollView)localObject3).addView((View)localObject4);
    localObject4 = b(paramContext);
    ((Button)localObject4).setText("立即更新");
    localObject5 = new LinearLayout.LayoutParams(-1, -2);
    leftMargin = 5;
    topMargin = 5;
    rightMargin = 5;
    ((Button)localObject4).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramSharedPreferences.dismiss();
        if (C.a(C.this) != null) {
          C.a(C.this).b(C.b(C.this), C.c(C.this), C.d(C.this));
        }
        if (!b.equals(""))
        {
          C.a(C.this, C.e(C.this), C.f(C.this), C.b(C.this), C.c(C.this), C.d(C.this), null);
          return;
        }
        C.a(C.this, C.e(C.this), C.f(C.this), C.b(C.this), C.c(C.this), C.d(C.this), b);
      }
    });
    localObject2 = new RelativeLayout(paramContext);
    ((RelativeLayout)localObject2).setBackgroundColor(0);
    ((RelativeLayout)localObject2).setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
    localObject6 = new LinearLayout.LayoutParams(-1, -2);
    localObject7 = new LinearLayout(paramContext);
    ((LinearLayout)localObject7).setOrientation(0);
    localObject8 = c(paramContext);
    ((Button)localObject8).setText("暂时不更新");
    ((Button)localObject8).setTextSize(15.0F);
    ((Button)localObject8).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramSharedPreferences.dismiss();
        if (C.a(C.this) != null) {
          C.a(C.this).c(C.b(C.this), C.c(C.this), C.d(C.this));
        }
      }
    });
    paramContext = c(paramContext);
    paramContext.setText("跳过此版本");
    paramContext.setTextSize(15.0F);
    paramContext.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramSharedPreferences.dismiss();
        if (C.a(C.this) != null) {
          C.a(C.this).d(C.b(C.this), C.c(C.this), C.d(C.this));
        }
        b.putString("skip_vc", C.g(C.this));
        b.commit();
      }
    });
    if (bool2)
    {
      localObject1 = new LinearLayout.LayoutParams(-1, -2, 0.0F);
      leftMargin = 5;
      topMargin = 5;
      bottomMargin = 5;
      rightMargin = 5;
      weight = 1.0F;
      ((LinearLayout)localObject7).addView(paramContext, (ViewGroup.LayoutParams)localObject1);
    }
    if (!bool1)
    {
      paramContext = new LinearLayout.LayoutParams(-1, -2, 0.0F);
      leftMargin = 5;
      topMargin = 5;
      rightMargin = 5;
      bottomMargin = 5;
      weight = 1.0F;
      ((LinearLayout)localObject7).addView((View)localObject8, paramContext);
    }
    paramContext = new RelativeLayout.LayoutParams(-1, -2);
    paramContext.addRule(13);
    ((RelativeLayout)localObject2).addView((View)localObject7, paramContext);
    paramContext = new LinearLayout.LayoutParams(-1, -2);
    leftMargin = 20;
    rightMargin = 0;
    weight = 1.0F;
    localLinearLayout1.addView(localLinearLayout2, localLayoutParams);
    localLinearLayout1.addView((View)localObject3, paramContext);
    localLinearLayout1.addView((View)localObject4, (ViewGroup.LayoutParams)localObject5);
    localLinearLayout1.addView((View)localObject2, (ViewGroup.LayoutParams)localObject6);
    paramSharedPreferences.setContentView(localLinearLayout1);
    return paramSharedPreferences;
  }
  
  private static TextView a(Context paramContext)
  {
    paramContext = new TextView(paramContext);
    paramContext.setTextColor(-1);
    return paramContext;
  }
  
  private void a(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5)
  {
    new q(y, paramString1, paramString2, paramString3, paramInt, paramString4, paramString5, this).i();
  }
  
  private boolean a(String paramString, SharedPreferences paramSharedPreferences)
  {
    long l1 = paramSharedPreferences.getLong("next_time", 0L);
    paramSharedPreferences = paramSharedPreferences.getString("skip_vc", null);
    x.a(C.class.getSimpleName(), "下次允许提示时间为：" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(l1)));
    int i1;
    if ((l1 == 0L) || (System.currentTimeMillis() >= l1))
    {
      x.a(C.class.getSimpleName(), "到了允许提示的时间间隔，需要提示");
      i1 = 1;
      if ((paramSharedPreferences != null) && (paramSharedPreferences.equals(paramString))) {
        break label164;
      }
      x.a(C.class.getSimpleName(), "用户没有跳过这个版本，需要提示");
    }
    for (int i2 = 1;; i2 = 0)
    {
      if ((i1 == 0) || (i2 == 0)) {
        break label184;
      }
      return true;
      x.a(C.class.getSimpleName(), "未到允许提示的时间间隔，不需要提示");
      i1 = 0;
      break;
      label164:
      x.a(C.class.getSimpleName(), "用户跳过了这个版本，不需要提示");
    }
    label184:
    return false;
  }
  
  private static Button b(Context paramContext)
  {
    paramContext = new Button(paramContext);
    paramContext.setTextSize(20.0F);
    paramContext.setTextColor(-1);
    final GradientDrawable localGradientDrawable1 = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[] { Color.parseColor("#3399ff"), Color.parseColor("#99bbff") });
    localGradientDrawable1.setStroke(1, -7829368);
    localGradientDrawable1.setCornerRadius(5.0F);
    GradientDrawable localGradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { Color.parseColor("#3399ff"), Color.parseColor("#99bbff") });
    localGradientDrawable2.setStroke(1, -7829368);
    localGradientDrawable2.setCornerRadius(5.0F);
    paramContext.setBackgroundDrawable(localGradientDrawable1);
    paramContext.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0)
        {
          paramAnonymousView.setBackgroundDrawable(a);
          ((Button)paramAnonymousView).setTextColor(-16777216);
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1)
          {
            paramAnonymousView.setBackgroundDrawable(localGradientDrawable1);
            ((Button)paramAnonymousView).setTextColor(-1);
          }
        }
      }
    });
    return paramContext;
  }
  
  private static Button c(Context paramContext)
  {
    paramContext = new Button(paramContext);
    paramContext.setTextSize(10.0F);
    paramContext.setTextColor(-1);
    final GradientDrawable localGradientDrawable1 = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[] { -12303292, -7829368 });
    localGradientDrawable1.setStroke(1, -7829368);
    localGradientDrawable1.setCornerRadius(5.0F);
    GradientDrawable localGradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { -12303292, -7829368 });
    localGradientDrawable2.setStroke(1, -7829368);
    localGradientDrawable2.setCornerRadius(5.0F);
    paramContext.setBackgroundDrawable(localGradientDrawable1);
    paramContext.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (paramAnonymousMotionEvent.getAction() == 0)
        {
          paramAnonymousView.setBackgroundDrawable(a);
          ((Button)paramAnonymousView).setTextColor(-16777216);
        }
        for (;;)
        {
          return false;
          if (paramAnonymousMotionEvent.getAction() == 1)
          {
            paramAnonymousView.setBackgroundDrawable(localGradientDrawable1);
            ((Button)paramAnonymousView).setTextColor(-1);
          }
        }
      }
    });
    return paramContext;
  }
  
  /* Error */
  protected void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   4: ldc_w 428
    //   7: invokevirtual 434	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   10: checkcast 436	android/net/ConnectivityManager
    //   13: invokevirtual 440	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   16: astore 5
    //   18: aload 5
    //   20: ifnull +11 -> 31
    //   23: aload 5
    //   25: invokevirtual 446	android/net/NetworkInfo:isAvailable	()Z
    //   28: ifne +13 -> 41
    //   31: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   34: ldc_w 448
    //   37: invokevirtual 450	cn/domob/android/i/f:b	(Ljava/lang/String;)V
    //   40: return
    //   41: new 452	cn/domob/android/ads/r
    //   44: dup
    //   45: aload_0
    //   46: getfield 115	cn/domob/android/ads/C:H	Lcn/domob/android/ads/g;
    //   49: aload_0
    //   50: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   53: invokespecial 455	cn/domob/android/ads/r:<init>	(Lcn/domob/android/ads/g;Landroid/content/Context;)V
    //   56: invokevirtual 457	cn/domob/android/ads/r:a	()V
    //   59: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   62: aload_0
    //   63: ldc_w 459
    //   66: invokevirtual 461	cn/domob/android/i/f:b	(Ljava/lang/Object;Ljava/lang/String;)V
    //   69: aload_0
    //   70: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   73: ldc 22
    //   75: iconst_0
    //   76: invokevirtual 465	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   79: astore 6
    //   81: aload 6
    //   83: invokeinterface 122 1 0
    //   88: astore 5
    //   90: aload_0
    //   91: aload 6
    //   93: ldc 37
    //   95: aconst_null
    //   96: invokeinterface 128 3 0
    //   101: putfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   104: aload_0
    //   105: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   108: astore 7
    //   110: aload 7
    //   112: ifnull +17 -> 129
    //   115: aload_0
    //   116: aload_0
    //   117: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   120: invokestatic 471	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   123: invokevirtual 475	java/lang/Integer:intValue	()I
    //   126: putfield 415	cn/domob/android/ads/C:D	I
    //   129: aload 6
    //   131: ldc 59
    //   133: iconst_0
    //   134: invokeinterface 479 3 0
    //   139: istore_1
    //   140: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   143: aload_0
    //   144: new 223	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   151: ldc_w 481
    //   154: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_0
    //   158: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   161: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   170: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   173: aload_0
    //   174: new 223	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   181: ldc_w 483
    //   184: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: iload_1
    //   188: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   191: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   197: iload_1
    //   198: tableswitch	default:+681->879, 0:+510->708, 1:+525->723, 2:+540->738
    //   224: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   227: aload_0
    //   228: ldc_w 488
    //   231: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   234: iconst_0
    //   235: istore_1
    //   236: aload_0
    //   237: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   240: invokevirtual 492	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   243: aload_0
    //   244: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   247: invokevirtual 495	android/content/Context:getPackageName	()Ljava/lang/String;
    //   250: iconst_0
    //   251: invokevirtual 501	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   254: astore 7
    //   256: aload_0
    //   257: aload 7
    //   259: getfield 506	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   262: putfield 412	cn/domob/android/ads/C:z	Ljava/lang/String;
    //   265: aload 7
    //   267: getfield 509	android/content/pm/PackageInfo:versionCode	I
    //   270: istore_2
    //   271: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   274: aload_0
    //   275: new 223	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   282: ldc_w 511
    //   285: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: iload_2
    //   289: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   292: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   298: aload_0
    //   299: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   302: ifnull -262 -> 40
    //   305: aload_0
    //   306: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   309: invokestatic 514	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   312: iload_2
    //   313: if_icmple -273 -> 40
    //   316: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   319: aload_0
    //   320: ldc_w 516
    //   323: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   326: aload_0
    //   327: aload_0
    //   328: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   331: aload 6
    //   333: invokespecial 518	cn/domob/android/ads/C:a	(Ljava/lang/String;Landroid/content/SharedPreferences;)Z
    //   336: ifeq -296 -> 40
    //   339: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   342: aload_0
    //   343: ldc_w 520
    //   346: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   349: aload_0
    //   350: aload 6
    //   352: ldc 31
    //   354: aconst_null
    //   355: invokeinterface 128 3 0
    //   360: putfield 232	cn/domob/android/ads/C:B	Ljava/lang/String;
    //   363: aload_0
    //   364: aload 6
    //   366: ldc 37
    //   368: aconst_null
    //   369: invokeinterface 128 3 0
    //   374: putfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   377: aload_0
    //   378: aload 6
    //   380: ldc 40
    //   382: aconst_null
    //   383: invokeinterface 128 3 0
    //   388: putfield 243	cn/domob/android/ads/C:E	Ljava/lang/String;
    //   391: aload_0
    //   392: aload 6
    //   394: ldc 43
    //   396: aconst_null
    //   397: invokeinterface 128 3 0
    //   402: putfield 420	cn/domob/android/ads/C:A	Ljava/lang/String;
    //   405: aload_0
    //   406: aload 6
    //   408: ldc 46
    //   410: aconst_null
    //   411: invokeinterface 128 3 0
    //   416: putfield 239	cn/domob/android/ads/C:F	Ljava/lang/String;
    //   419: aload_0
    //   420: aload 6
    //   422: ldc 52
    //   424: aconst_null
    //   425: invokeinterface 128 3 0
    //   430: putfield 247	cn/domob/android/ads/C:G	Ljava/lang/String;
    //   433: aload_0
    //   434: getfield 232	cn/domob/android/ads/C:B	Ljava/lang/String;
    //   437: ifnull -397 -> 40
    //   440: aload_0
    //   441: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   444: ifnull -404 -> 40
    //   447: aload_0
    //   448: getfield 243	cn/domob/android/ads/C:E	Ljava/lang/String;
    //   451: ifnull -411 -> 40
    //   454: aload_0
    //   455: getfield 243	cn/domob/android/ads/C:E	Ljava/lang/String;
    //   458: ifnull -418 -> 40
    //   461: aload_0
    //   462: getfield 243	cn/domob/android/ads/C:E	Ljava/lang/String;
    //   465: ifnull -425 -> 40
    //   468: aload_0
    //   469: getfield 247	cn/domob/android/ads/C:G	Ljava/lang/String;
    //   472: ifnull -432 -> 40
    //   475: aload_0
    //   476: aload_0
    //   477: getfield 113	cn/domob/android/ads/C:y	Landroid/content/Context;
    //   480: aload 6
    //   482: invokespecial 522	cn/domob/android/ads/C:a	(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
    //   485: invokevirtual 525	android/app/Dialog:show	()V
    //   488: iload_1
    //   489: ifne +305 -> 794
    //   492: new 331	java/text/SimpleDateFormat
    //   495: dup
    //   496: ldc_w 527
    //   499: invokespecial 334	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   502: astore 6
    //   504: invokestatic 533	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   507: astore 7
    //   509: aload 7
    //   511: new 336	java/util/Date
    //   514: dup
    //   515: invokespecial 534	java/util/Date:<init>	()V
    //   518: invokevirtual 538	java/util/Calendar:setTime	(Ljava/util/Date;)V
    //   521: aload 7
    //   523: iconst_5
    //   524: iconst_1
    //   525: invokevirtual 541	java/util/Calendar:add	(II)V
    //   528: aload 6
    //   530: aload 7
    //   532: invokevirtual 545	java/util/Calendar:getTime	()Ljava/util/Date;
    //   535: invokevirtual 343	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   538: astore 7
    //   540: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   543: aload_0
    //   544: new 223	java/lang/StringBuilder
    //   547: dup
    //   548: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   551: ldc_w 547
    //   554: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   557: aload 7
    //   559: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   565: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   568: aload 6
    //   570: aload 7
    //   572: invokevirtual 551	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   575: invokevirtual 553	java/util/Date:getTime	()J
    //   578: lstore_3
    //   579: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   582: aload_0
    //   583: new 223	java/lang/StringBuilder
    //   586: dup
    //   587: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   590: ldc_w 555
    //   593: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   596: lload_3
    //   597: invokevirtual 558	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   600: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   603: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   606: aload 5
    //   608: ldc 65
    //   610: lload_3
    //   611: invokeinterface 564 4 0
    //   616: pop
    //   617: aload 5
    //   619: invokeinterface 567 1 0
    //   624: pop
    //   625: aload_0
    //   626: getfield 115	cn/domob/android/ads/C:H	Lcn/domob/android/ads/g;
    //   629: ifnull -589 -> 40
    //   632: aload_0
    //   633: getfield 115	cn/domob/android/ads/C:H	Lcn/domob/android/ads/g;
    //   636: aload_0
    //   637: getfield 412	cn/domob/android/ads/C:z	Ljava/lang/String;
    //   640: aload_0
    //   641: getfield 415	cn/domob/android/ads/C:D	I
    //   644: aload_0
    //   645: getfield 243	cn/domob/android/ads/C:E	Ljava/lang/String;
    //   648: invokevirtual 572	cn/domob/android/ads/g:a	(Ljava/lang/String;ILjava/lang/String;)V
    //   651: return
    //   652: astore 5
    //   654: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   657: aload 5
    //   659: invokevirtual 575	cn/domob/android/i/f:a	(Ljava/lang/Throwable;)V
    //   662: return
    //   663: astore 7
    //   665: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   668: new 223	java/lang/StringBuilder
    //   671: dup
    //   672: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   675: ldc_w 577
    //   678: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   681: aload_0
    //   682: getfield 422	cn/domob/android/ads/C:C	Ljava/lang/String;
    //   685: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   688: ldc_w 579
    //   691: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   694: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   697: invokevirtual 581	cn/domob/android/i/f:e	(Ljava/lang/String;)V
    //   700: aload_0
    //   701: iconst_1
    //   702: putfield 415	cn/domob/android/ads/C:D	I
    //   705: goto -576 -> 129
    //   708: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   711: aload_0
    //   712: ldc_w 583
    //   715: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   718: iconst_0
    //   719: istore_1
    //   720: goto -484 -> 236
    //   723: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   726: aload_0
    //   727: ldc_w 585
    //   730: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   733: iconst_m1
    //   734: istore_1
    //   735: goto -499 -> 236
    //   738: aload 6
    //   740: ldc 62
    //   742: iconst_3
    //   743: invokeinterface 479 3 0
    //   748: istore_2
    //   749: iload_2
    //   750: istore_1
    //   751: iload_2
    //   752: iconst_1
    //   753: if_icmpge +5 -> 758
    //   756: iconst_3
    //   757: istore_1
    //   758: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   761: aload_0
    //   762: new 223	java/lang/StringBuilder
    //   765: dup
    //   766: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   769: ldc_w 587
    //   772: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   775: iload_1
    //   776: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   779: ldc_w 589
    //   782: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   785: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   788: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   791: goto -555 -> 236
    //   794: iload_1
    //   795: iconst_m1
    //   796: if_icmpne +29 -> 825
    //   799: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   802: aload_0
    //   803: ldc_w 591
    //   806: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   809: aload 5
    //   811: ldc 65
    //   813: invokestatic 352	java/lang/System:currentTimeMillis	()J
    //   816: invokeinterface 564 4 0
    //   821: pop
    //   822: goto -205 -> 617
    //   825: getstatic 107	cn/domob/android/ads/C:x	Lcn/domob/android/i/f;
    //   828: aload_0
    //   829: new 223	java/lang/StringBuilder
    //   832: dup
    //   833: invokespecial 224	java/lang/StringBuilder:<init>	()V
    //   836: iload_1
    //   837: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   840: ldc_w 593
    //   843: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   846: invokevirtual 235	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   849: invokevirtual 346	cn/domob/android/i/f:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   852: aload 5
    //   854: ldc 65
    //   856: invokestatic 352	java/lang/System:currentTimeMillis	()J
    //   859: iload_1
    //   860: sipush 3600
    //   863: imul
    //   864: sipush 1000
    //   867: imul
    //   868: i2l
    //   869: ladd
    //   870: invokeinterface 564 4 0
    //   875: pop
    //   876: goto -259 -> 617
    //   879: goto -655 -> 224
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	882	0	this	C
    //   139	725	1	i1	int
    //   270	484	2	i2	int
    //   578	33	3	l1	long
    //   16	602	5	localObject1	Object
    //   652	201	5	localException	Exception
    //   79	660	6	localObject2	Object
    //   108	463	7	localObject3	Object
    //   663	1	7	localNumberFormatException	NumberFormatException
    // Exception table:
    //   from	to	target	type
    //   59	110	652	java/lang/Exception
    //   115	129	652	java/lang/Exception
    //   129	197	652	java/lang/Exception
    //   224	234	652	java/lang/Exception
    //   236	488	652	java/lang/Exception
    //   492	617	652	java/lang/Exception
    //   617	651	652	java/lang/Exception
    //   665	705	652	java/lang/Exception
    //   708	718	652	java/lang/Exception
    //   723	733	652	java/lang/Exception
    //   738	749	652	java/lang/Exception
    //   758	791	652	java/lang/Exception
    //   799	822	652	java/lang/Exception
    //   825	876	652	java/lang/Exception
    //   115	129	663	java/lang/NumberFormatException
  }
  
  public void c(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.e(str, i1, paramQ);
    }
  }
  
  public void d(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.f(str, i1, paramQ);
    }
  }
  
  public void e(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.g(str, i1, paramQ);
    }
  }
  
  public void f(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.h(str, i1, paramQ);
    }
  }
  
  public void g(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.i(str, i1, paramQ);
    }
  }
  
  public void h(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.j(str, i1, paramQ);
    }
  }
  
  public void i(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.k(str, i1, paramQ);
    }
  }
  
  public void j(q paramQ)
  {
    if (H != null)
    {
      String str = paramQ.c();
      int i1 = paramQ.d();
      paramQ = paramQ.e();
      H.a(str, i1, paramQ, false, "");
    }
  }
  
  static abstract interface a
  {
    public abstract void a(String paramString1, int paramInt, String paramString2);
    
    public abstract void a(String paramString1, int paramInt, String paramString2, boolean paramBoolean, String paramString3);
    
    public abstract void b(String paramString1, int paramInt, String paramString2);
    
    public abstract void c(String paramString1, int paramInt, String paramString2);
    
    public abstract void d(String paramString1, int paramInt, String paramString2);
    
    public abstract void e(String paramString1, int paramInt, String paramString2);
    
    public abstract void f(String paramString1, int paramInt, String paramString2);
    
    public abstract void g(String paramString1, int paramInt, String paramString2);
    
    public abstract void h(String paramString1, int paramInt, String paramString2);
    
    public abstract void i(String paramString1, int paramInt, String paramString2);
    
    public abstract void j(String paramString1, int paramInt, String paramString2);
    
    public abstract void k(String paramString1, int paramInt, String paramString2);
  }
}
