.class public Lcn/domob/android/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/Boolean; = null

.field private static o:F = 0.0f

.field private static p:F = 0.0f

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:Ljava/lang/String; = null

.field private static final t:Ljava/lang/String; = "unknown"

.field private static final u:Ljava/lang/String; = "gprs"

.field private static final v:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    return-void
.end method

.method protected static A(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1048
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 1049
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    .line 1065
    :goto_7
    return-object v0

    .line 1052
    :cond_8
    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3b

    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLayoutSizeAtLeast"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1056
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1057
    sput-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_48

    .line 1062
    :cond_3b
    :goto_3b
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_45

    .line 1063
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    .line 1065
    :cond_45
    sget-object v0, Lcn/domob/android/b/b;->n:Ljava/lang/Boolean;

    goto :goto_7

    .line 1059
    :catch_48
    move-exception v0

    .line 1060
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1074
    sget-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;

    if-nez v0, :cond_49

    const/16 v0, 0x9

    invoke-static {v0, v1}, Lcn/domob/android/b/a;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1076
    :try_start_d
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1077
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1080
    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1081
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    sput-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4c

    .line 1087
    :cond_49
    :goto_49
    sget-object v0, Lcn/domob/android/b/b;->i:Ljava/lang/String;

    return-object v0

    .line 1083
    :catch_4c
    move-exception v0

    goto :goto_49
.end method

.method public static C(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 1094
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    .line 1095
    check-cast p0, Landroid/app/Activity;

    .line 1096
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1097
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1098
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1099
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1100
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1101
    sub-int/2addr v0, v2

    .line 1102
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v0, v1, v0

    .line 1104
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method private static D(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 98
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 105
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    .line 106
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/b/b;->c:I

    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/b/b;->d:Ljava/lang/String;

    .line 110
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_46

    .line 113
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 114
    if-eqz v1, :cond_47

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;

    .line 125
    :cond_46
    :goto_46
    return-void

    .line 117
    :cond_47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_63

    const/4 v0, 0x0

    :goto_4c
    sput-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_46

    .line 121
    :catch_4f
    move-exception v0

    .line 122
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 117
    :cond_63
    :try_start_63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_4f

    move-result-object v0

    goto :goto_4c
.end method

.method protected static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 319
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 320
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 322
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 323
    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 325
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    .line 326
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    .line 334
    :goto_2e
    return-object v0

    .line 330
    :catch_2f
    move-exception v0

    .line 331
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 334
    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 128
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 129
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 130
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 131
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2b
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    if-eqz p1, :cond_b

    .line 541
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_9

    .line 550
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 544
    goto :goto_8

    .line 547
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_8

    move v0, v1

    .line 550
    goto :goto_8
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 179
    if-eqz p1, :cond_30

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 181
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_30

    .line 184
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2e} :catch_2f

    .line 192
    :goto_2e
    return v0

    .line 187
    :catch_2f
    move-exception v0

    .line 192
    :cond_30
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static b(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 140
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 143
    :cond_7
    sget v0, Lcn/domob/android/b/b;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .registers 1

    .prologue
    .line 514
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 148
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 151
    :cond_7
    sget-object v0, Lcn/domob/android/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .registers 1

    .prologue
    .line 518
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->b(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    sget-object v0, Lcn/domob/android/b/b;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 156
    invoke-static {p0}, Lcn/domob/android/b/b;->D(Landroid/content/Context;)V

    .line 159
    :cond_7
    sget-object v0, Lcn/domob/android/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()I
    .registers 1

    .prologue
    .line 522
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->c(Lcn/domob/android/b/b$a;)I

    move-result v0

    return v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    sget-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 164
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    .line 167
    :cond_13
    sget-object v0, Lcn/domob/android/b/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected static f()J
    .registers 2

    .prologue
    .line 526
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/b/b$a;->d(Lcn/domob/android/b/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 201
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 202
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 203
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 209
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/b/b;->g:Ljava/lang/String;

    return-object v0

    .line 205
    :catch_15
    move-exception v0

    .line 206
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-string v2, "Failed to get IMSI."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method protected static g()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1039
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 214
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 215
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 217
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 224
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/b/b;->f:Ljava/lang/String;

    return-object v0

    .line 219
    :catch_15
    move-exception v0

    .line 220
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get IMEI."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method static synthetic h()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    return-object v0
.end method

.method protected static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 229
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    .line 238
    :cond_10
    :goto_10
    sget-object v0, Lcn/domob/android/b/b;->h:Ljava/lang/String;

    return-object v0

    .line 233
    :catch_13
    move-exception v0

    .line 234
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method protected static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 248
    sget-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 249
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 250
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    .line 256
    :cond_18
    :goto_18
    sget-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    return-object v0

    .line 252
    :cond_1b
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/b/b;->j:Ljava/lang/String;

    goto :goto_18
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 266
    sget-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 267
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 268
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    .line 272
    :cond_18
    sget-object v0, Lcn/domob/android/b/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 276
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 277
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/b/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string v0, "unknown"

    .line 298
    :cond_18
    :goto_18
    return-object v0

    .line 282
    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 284
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_3c

    .line 287
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 288
    if-nez v1, :cond_36

    .line 289
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 290
    if-nez v0, :cond_18

    .line 293
    const-string v0, "gprs"

    goto :goto_18

    .line 294
    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    .line 295
    const-string v0, "wifi"

    goto :goto_18

    .line 298
    :cond_3c
    const-string v0, "unknown"

    goto :goto_18
.end method

.method protected static l(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 306
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 308
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 313
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 310
    goto :goto_16

    .line 311
    :catch_19
    move-exception v0

    .line 312
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 313
    goto :goto_16
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    :try_start_0
    sget-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 351
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 353
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 359
    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/b/b;->l:Ljava/lang/String;

    return-object v0

    .line 355
    :catch_15
    move-exception v0

    .line 356
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method protected static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 369
    const-string v0, "v"

    sput-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    .line 370
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 374
    :cond_1e
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    .line 377
    :cond_22
    sget-object v0, Lcn/domob/android/b/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected static o(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 389
    :try_start_0
    sget v0, Lcn/domob/android/b/b;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 390
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 392
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 394
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/b/b;->o:F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_22

    .line 400
    :cond_1f
    :goto_1f
    sget v0, Lcn/domob/android/b/b;->o:F

    return v0

    .line 396
    :catch_22
    move-exception v0

    .line 397
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method protected static p(Landroid/content/Context;)F
    .registers 3

    .prologue
    .line 411
    :try_start_0
    sget v0, Lcn/domob/android/b/b;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 413
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/b/b;->p:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    .line 419
    :cond_13
    :goto_13
    sget v0, Lcn/domob/android/b/b;->p:F

    return v0

    .line 415
    :catch_16
    move-exception v0

    .line 416
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method protected static q(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 437
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_14

    .line 440
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/b/b;->q:I

    .line 443
    :cond_14
    sget v0, Lcn/domob/android/b/b;->q:I

    return v0
.end method

.method protected static r(Landroid/content/Context;)I
    .registers 2

    .prologue
    .line 447
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_14

    .line 450
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/b/b;->r:I

    .line 453
    :cond_14
    sget v0, Lcn/domob/android/b/b;->r:I

    return v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 460
    .line 461
    invoke-static {p0}, Lcn/domob/android/b/b;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 462
    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 463
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 464
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 469
    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method public static t(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 475
    :try_start_1
    invoke-static {p0}, Lcn/domob/android/b/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_18

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 477
    sget-object v0, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 492
    :goto_17
    return-object v0

    .line 481
    :cond_18
    const-string v0, "content://telephony/carriers/preferapn"

    .line 482
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_29} :catch_33

    move-result-object v0

    goto :goto_17

    .line 487
    :catch_2b
    move-exception v0

    .line 488
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 489
    goto :goto_17

    .line 490
    :catch_33
    move-exception v0

    .line 491
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 492
    goto :goto_17
.end method

.method protected static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 504
    invoke-static {}, Lcn/domob/android/b/b$a;->a()Lcn/domob/android/b/b$a;

    move-result-object v0

    .line 505
    invoke-static {v0, p0}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 506
    if-eqz v1, :cond_f

    .line 507
    invoke-static {v0, v1}, Lcn/domob/android/b/b$a;->a(Lcn/domob/android/b/b$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 562
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 563
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 564
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 581
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 582
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected static x(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 598
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 599
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v1, 0x14

    const/16 v9, 0x10

    const/4 v3, 0x0

    .line 613
    const-string v2, ""

    .line 615
    :try_start_7
    invoke-static {p0}, Lcn/domob/android/i/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {p0}, Lcn/domob/android/i/c;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 616
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 617
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 618
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/net/wifi/ScanResult;

    move v4, v3

    .line 619
    :goto_26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_38

    .line 620
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    aput-object v0, v6, v4

    .line 619
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_26

    .line 623
    :cond_38
    new-instance v0, Lcn/domob/android/b/b$1;

    invoke-direct {v0}, Lcn/domob/android/b/b$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 637
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 639
    array-length v0, v6

    if-gt v0, v1, :cond_73

    array-length v0, v6

    .line 640
    :goto_49
    if-ge v3, v0, :cond_75

    .line 641
    aget-object v1, v6, v3

    .line 642
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 643
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 645
    invoke-static {v5}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 646
    invoke-static {v5}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 647
    const-string v1, "#"

    .line 650
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6c

    .line 651
    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 664
    :cond_6c
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    :cond_6f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_49

    :cond_73
    move v0, v1

    .line 639
    goto :goto_49

    .line 668
    :cond_75
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_78} :catch_7a

    move-result-object v0

    .line 674
    :goto_79
    return-object v0

    .line 670
    :catch_7a
    move-exception v0

    .line 671
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    :cond_80
    move-object v0, v2

    goto :goto_79
.end method

.method protected static z(Landroid/content/Context;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 684
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v2, Lcn/domob/android/b/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v4, v6

    const-string v1, "-1"

    aput-object v1, v4, v7

    const-string v1, "-1"

    aput-object v1, v4, v8

    const-string v1, "-1"

    aput-object v1, v4, v5

    .line 686
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 688
    sget-object v1, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 733
    :goto_3d
    return-object v1

    .line 692
    :cond_3e
    :try_start_3e
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 693
    if-eqz v1, :cond_dd

    .line 694
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/b/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/b/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 698
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 699
    if-eqz v2, :cond_9a

    .line 700
    packed-switch v5, :pswitch_data_10e

    .line 717
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    :cond_8b
    move v2, v3

    .line 719
    :goto_8c
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 720
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 722
    :cond_9a
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_dd

    .line 723
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 724
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 725
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 726
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_dd
    :goto_dd
    move-object v1, v4

    .line 733
    goto/16 :goto_3d

    .line 702
    :pswitch_e0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 703
    if-eqz v2, :cond_8b

    .line 704
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 705
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_8c

    .line 709
    :pswitch_f3
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 710
    if-eqz v2, :cond_8b

    .line 711
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 712
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_104} :catch_106

    move-result v2

    goto :goto_8c

    .line 729
    :catch_106
    move-exception v1

    .line 730
    sget-object v2, Lcn/domob/android/b/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_dd

    .line 700
    nop

    :pswitch_data_10e
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_f3
    .end packed-switch
.end method
