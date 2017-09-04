.class public Lcn/dbox/core/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/dbox/core/h/d; = null

.field private static final b:Ljava/lang/String; = "DES"

.field private static final c:Ljava/lang/String; = "com.android.browser"

.field private static final d:Ljava/lang/String; = "com.google.android.browser"

.field private static final e:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final f:[C

.field private static final g:Ljava/lang/String; = "cn.domob.ui.main.DViewManager"

.field private static final h:Ljava/lang/String; = "showWall"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/h/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcn/dbox/core/h/f;->f:[C

    return-void

    :array_16
    .array-data 2
        0x64s
        0x6fs
        0x6ds
        0x6fs
        0x62s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 491
    .line 492
    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    .line 493
    const-string v0, "com.android.browser"

    invoke-static {p0, v0}, Lcn/dbox/core/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 511
    :cond_27
    :goto_27
    return-object v1

    .line 498
    :cond_28
    const-string v0, "com.google.android.browser"

    invoke-static {p0, v0}, Lcn/dbox/core/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    const-string v2, "com.google.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    :cond_3f
    move-object v1, v0

    goto :goto_27

    :cond_41
    move-object v0, v1

    goto :goto_1b
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 561
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 562
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 565
    if-gt v7, v8, :cond_5b

    .line 566
    div-int/lit8 v0, v7, 0x2

    int-to-float v4, v0

    .line 568
    int-to-float v2, v7

    .line 570
    int-to-float v3, v7

    .line 574
    int-to-float v1, v7

    .line 575
    int-to-float v0, v7

    move v6, v4

    move v8, v7

    move v4, v5

    .line 589
    :goto_16
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 590
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 592
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 593
    new-instance v10, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v11, v5

    float-to-int v3, v3

    float-to-int v2, v2

    invoke-direct {v10, v4, v11, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 595
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v3, v5

    float-to-int v4, v5

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 597
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 598
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 599
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 600
    const v1, -0xbdbdbe

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    invoke-virtual {v8, v0, v6, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 602
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 603
    invoke-virtual {v8, p0, v10, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 604
    return-object v7

    .line 577
    :cond_5b
    div-int/lit8 v0, v8, 0x2

    int-to-float v6, v0

    .line 578
    sub-int v0, v7, v8

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    .line 580
    int-to-float v0, v7

    sub-float v3, v0, v4

    .line 582
    int-to-float v2, v8

    .line 586
    int-to-float v1, v8

    .line 587
    int-to-float v0, v8

    move v7, v8

    goto :goto_16
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcn/dbox/core/h/f;->f:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 282
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 284
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 285
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 292
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 293
    const-string v1, "AES/ECB/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 295
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 298
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 299
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/dbox/core/h/a;->b([BI)[B

    move-result-object v1

    .line 300
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 306
    :goto_3b
    return-object v0

    .line 303
    :catch_3c
    move-exception v0

    .line 306
    const-string v0, ""

    goto :goto_3b
.end method

.method public static a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 73
    .line 74
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_12

    .line 91
    :catch_2d
    move-exception v0

    .line 92
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 95
    const/4 v0, 0x0

    :goto_34
    return-object v0

    .line 82
    :cond_35
    :try_start_35
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    :goto_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 90
    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_57} :catch_2d

    move-result-object v0

    goto :goto_34
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 359
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 361
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 363
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 366
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/dbox/core/h/f$1;

    invoke-direct {v2, p0}, Lcn/dbox/core/h/f$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 387
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "DrwSDK \u7f3a\u5c11\u6743\u9650\uff1a\n"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_99

    .line 171
    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcn/dbox/core/h/e;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 172
    const-string v0, "DrwSDK"

    const-string v4, "you must have android.permission.WRITE_EXTERNAL_STORAGE permission !"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 180
    :goto_26
    const-string v4, "android.permission.INTERNET"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_3b

    .line 182
    const-string v0, "DrwSDK"

    const-string v4, "you must have android.permission.INTERNET permission !"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "android.permission.INTERNET \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 188
    :cond_3b
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_50

    .line 190
    const-string v0, "DrwSDK"

    const-string v4, "you must have android.permission.READ_PHONE_STATE permission !"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "android.permission.READ_PHONE_STATE \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 196
    :cond_50
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_65

    .line 198
    const-string v0, "DrwSDK"

    const-string v4, "you must have android.permission.ACCESS_NETWORK_STATE permission !"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v0, "android.permission.ACCESS_NETWORK_STATE \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 206
    :cond_65
    :try_start_65
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_7a

    .line 209
    const-string v0, "DrwSDK"

    const-string v4, "you must have android.permission.ACCESS_COARSE_LOCATION permission !"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_79} :catch_88

    move v0, v1

    .line 221
    :cond_7a
    if-eqz v0, :cond_85

    .line 222
    const-string v4, "DrwSDK"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v3}, Lcn/dbox/core/h/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_85
    if-nez v0, :cond_97

    :goto_87
    return v1

    .line 215
    :catch_88
    move-exception v0

    .line 216
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 217
    const-string v0, "SDK"

    const-string v1, "checking android.permission.ACCESS_COARSE_LOCATION throws exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 218
    goto :goto_87

    :cond_97
    move v1, v2

    .line 225
    goto :goto_87

    :cond_99
    move v0, v2

    goto :goto_26
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 115
    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    .line 121
    :cond_8
    :goto_8
    return v0

    .line 118
    :catch_9
    move-exception v1

    .line 119
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public static a(Lcn/dbox/core/c;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 634
    :try_start_1
    invoke-static {}, Lcn/dbox/core/h/f;->e()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 636
    invoke-virtual {p0}, Lcn/dbox/core/c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcn/dbox/core/c;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 637
    :cond_13
    const-string v1, ""

    const-string v2, "not set adwall ppid and ipb"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_1a
    return v0

    .line 640
    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a

    .line 643
    :cond_1d
    const-string v1, ""

    const-string v2, "local has not adwall sdk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_24} :catch_2c

    goto :goto_1a

    .line 646
    :catch_25
    move-exception v1

    .line 647
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 649
    :catch_2c
    move-exception v1

    .line 650
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 102
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 444
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " load source file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    .line 447
    :try_start_19
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 448
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_30

    .line 456
    :goto_22
    return-object v0

    .line 449
    :catch_23
    move-exception v0

    .line 450
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 451
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v2, "out of memory"

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 455
    goto :goto_22

    .line 452
    :catch_30
    move-exception v0

    .line 453
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 454
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_22
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 405
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    const-string v1, "000900"

    .line 408
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_41

    move-result-object v0

    .line 417
    :goto_40
    return-object v0

    .line 415
    :catch_41
    move-exception v0

    .line 416
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 417
    const-string v0, "000900"

    goto :goto_40
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 313
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 316
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 317
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 319
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 321
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/dbox/core/h/a;->a([BI)Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    .line 325
    :goto_35
    return-object v0

    .line 322
    :catch_36
    move-exception v0

    .line 323
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v1, "des encode error"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public static b(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    if-eqz p0, :cond_65

    .line 135
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    array-length v4, v3

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_65

    aget-object v0, v3, v1

    .line 137
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    :try_start_1a
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_37

    .line 140
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_33
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 144
    :cond_37
    const/4 v5, 0x0

    aget-object v0, v0, v5

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_45} :catch_46

    goto :goto_33

    .line 148
    :catch_46
    move-exception v0

    .line 149
    sget-object v5, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v5, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 150
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL decode params String error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    goto :goto_33

    .line 156
    :cond_65
    return-object v2
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 235
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 237
    sget-object v0, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v1, "access wifi state is enabled"

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->c(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    const-string v1, "20140918"

    .line 431
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v0

    .line 438
    :goto_35
    return-object v0

    .line 436
    :catch_36
    move-exception v0

    .line 437
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 438
    const-string v0, "20140918"

    goto :goto_35
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 265
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 266
    :cond_8
    const-string v0, ""

    .line 275
    :goto_a
    return-object v0

    .line 268
    :cond_b
    :try_start_b
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 270
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 271
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/dbox/core/h/f;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_a

    .line 272
    :catch_28
    move-exception v0

    .line 273
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 275
    const-string v0, ""

    goto :goto_a
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 250
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 252
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 478
    if-eqz p1, :cond_f

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 479
    invoke-static {p0, p1}, Lcn/dbox/core/h/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 481
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 520
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 522
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 523
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 332
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_71
    .catchall {:try_start_1 .. :try_end_6} :catchall_60

    .line 333
    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [B

    .line 334
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 336
    :goto_10
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_42

    .line 337
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b
    .catchall {:try_start_8 .. :try_end_1a} :catchall_6f

    goto :goto_10

    .line 340
    :catch_1b
    move-exception v0

    .line 341
    :goto_1c
    :try_start_1c
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileMD5 has an exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_6f

    .line 344
    if-eqz v1, :cond_3f

    .line 346
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_59

    .line 352
    :cond_3f
    :goto_3f
    const-string v0, ""

    :cond_41
    :goto_41
    return-object v0

    .line 339
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcn/dbox/core/h/f;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_1b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_6f

    move-result-object v0

    .line 344
    if-eqz v1, :cond_41

    .line 346
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_41

    .line 347
    :catch_52
    move-exception v1

    .line 348
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 347
    :catch_59
    move-exception v0

    .line 348
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 344
    :catchall_60
    move-exception v0

    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_67

    .line 346
    :try_start_64
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 349
    :cond_67
    :goto_67
    throw v0

    .line 347
    :catch_68
    move-exception v1

    .line 348
    sget-object v2, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_67

    .line 344
    :catchall_6f
    move-exception v0

    goto :goto_62

    .line 340
    :catch_71
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    if-eqz p0, :cond_27

    .line 537
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 539
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_27

    .line 542
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 545
    :goto_15
    if-eqz v0, :cond_1f

    .line 546
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v2, "Check your network connection is normal"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 550
    :goto_1e
    return v0

    .line 548
    :cond_1f
    sget-object v1, Lcn/dbox/core/h/f;->a:Lcn/dbox/core/h/d;

    const-string v2, "Check the network connection is abnormal"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    goto :goto_1e

    :cond_27
    move v0, v1

    goto :goto_15
.end method

.method public static e()Z
    .registers 1

    .prologue
    .line 628
    const-string v0, "cn.domob.ui.main.DViewManager"

    invoke-static {v0}, Lcn/dbox/core/h/f;->h(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 370
    if-nez p0, :cond_4

    .line 371
    const/4 v0, 0x0

    .line 374
    :goto_3
    return v0

    .line 373
    :cond_4
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_3
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 391
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcn/dbox/core/h/f;->f:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 463
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 619
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_4
    return v0

    .line 621
    :catch_5
    move-exception v0

    .line 622
    const/4 v0, 0x0

    goto :goto_4
.end method
