.class Lcn/domob/android/offerwall/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/f$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/offerwall/m; = null

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

.field private static m:F = 0.0f

.field private static n:F = 0.0f

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:Ljava/lang/String; = null

.field private static final t:Ljava/lang/String; = "sdk"

.field private static final u:Ljava/lang/String; = "unknown"

.field private static final v:Ljava/lang/String; = "gprs"

.field private static final w:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static A(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcn/domob/android/offerwall/f$a;->a()Lcn/domob/android/offerwall/f$a;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/domob/android/offerwall/f$a;->a(Lcn/domob/android/offerwall/f$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/f$a;->a(Lcn/domob/android/offerwall/f$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static B(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/offerwall/f;->c:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/offerwall/f;->d:Ljava/lang/String;

    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_46

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->e:Ljava/lang/String;

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_63

    const/4 v0, 0x0

    :goto_4c
    sput-object v0, Lcn/domob/android/offerwall/f;->e:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4e} :catch_4f

    goto :goto_46

    :catch_4f
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v2, Lcn/domob/android/offerwall/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_46

    :cond_63
    :try_start_63
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_4f

    move-result-object v0

    goto :goto_4c
.end method

.method protected static a()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v0

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->B(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8

    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_2e} :catch_2f

    :goto_2e
    return v0

    :catch_2f
    move-exception v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected static b(Landroid/content/Context;)I
    .registers 2

    sget-object v0, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->B(Landroid/content/Context;)V

    :cond_7
    sget v0, Lcn/domob/android/offerwall/f;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .registers 1

    invoke-static {}, Lcn/domob/android/offerwall/f$a;->a()Lcn/domob/android/offerwall/f$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/offerwall/f$a;->a(Lcn/domob/android/offerwall/f$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->B(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcn/domob/android/offerwall/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .registers 1

    invoke-static {}, Lcn/domob/android/offerwall/f$a;->a()Lcn/domob/android/offerwall/f$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/offerwall/f$a;->b(Lcn/domob/android/offerwall/f$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcn/domob/android/offerwall/f;->b:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->B(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Lcn/domob/android/offerwall/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()J
    .registers 2

    invoke-static {}, Lcn/domob/android/offerwall/f$a;->a()Lcn/domob/android/offerwall/f$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/offerwall/f$a;->c(Lcn/domob/android/offerwall/f$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcn/domob/android/offerwall/f;->l:Ljava/lang/String;

    if-nez v0, :cond_9d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "android"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2d
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4a

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4a
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_68
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->l:Ljava/lang/String;

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/android/offerwall/f;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9d
    sget-object v0, Lcn/domob/android/offerwall/f;->l:Ljava/lang/String;

    return-object v0

    :cond_a0
    const-string v0, "1.5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d
.end method

.method static synthetic f()Lcn/domob/android/offerwall/m;
    .registers 1

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    return-object v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcn/domob/android/offerwall/f;->f:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/android/offerwall/f;->f:Ljava/lang/String;

    :cond_15
    :goto_15
    sget-object v0, Lcn/domob/android/offerwall/f;->f:Ljava/lang/String;

    return-object v0

    :cond_18
    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->f:Ljava/lang/String;

    goto :goto_15
.end method

.method protected static g(Landroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;

    if-nez v0, :cond_20

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected static h(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected static i(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_c
    invoke-static {p0}, Lcn/domob/android/offerwall/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2b
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_30} :catch_60
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_74

    :goto_30
    invoke-static {p0}, Lcn/domob/android/offerwall/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_39
    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5a
    :try_start_5a
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5a .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_74

    goto :goto_15

    :catch_60
    move-exception v0

    sget-object v2, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    const-string v0, "DomobSDK"

    const-string v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_6e
    :try_start_6e
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_6e .. :try_end_73} :catch_60
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_74

    goto :goto_2b

    :catch_74
    move-exception v0

    sget-object v2, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_7b
    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_39
.end method

.method protected static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcn/domob/android/offerwall/f;->g:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->g:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/offerwall/f;->g:Ljava/lang/String;

    return-object v0

    :catch_15
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v2, Lcn/domob/android/offerwall/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method protected static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_13

    :cond_10
    :goto_10
    sget-object v0, Lcn/domob/android/offerwall/f;->h:Ljava/lang/String;

    return-object v0

    :catch_13
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v2, Lcn/domob/android/offerwall/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcn/domob/android/offerwall/f;->i:Ljava/lang/String;

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->i:Ljava/lang/String;

    :cond_18
    :goto_18
    sget-object v0, Lcn/domob/android/offerwall/f;->i:Ljava/lang/String;

    return-object v0

    :cond_1b
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/offerwall/f;->i:Ljava/lang/String;

    goto :goto_18
.end method

.method protected static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcn/domob/android/offerwall/f;->j:Ljava/lang/String;

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->j:Ljava/lang/String;

    :cond_18
    sget-object v0, Lcn/domob/android/offerwall/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknown"

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "gprs"

    goto :goto_18

    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    const-string v0, "wifi"

    goto :goto_18

    :cond_3c
    const-string v0, "unknown"

    goto :goto_18
.end method

.method protected static p(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16

    :catch_19
    move-exception v0

    sget-object v2, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_16
.end method

.method protected static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcn/domob/android/offerwall/f;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/offerwall/f;->k:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    sget-object v0, Lcn/domob/android/offerwall/f;->k:Ljava/lang/String;

    return-object v0

    :catch_15
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method protected static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "v"

    sput-object v0, Lcn/domob/android/offerwall/f;->s:Ljava/lang/String;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1e

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    :cond_1e
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/offerwall/f;->s:Ljava/lang/String;

    :cond_22
    sget-object v0, Lcn/domob/android/offerwall/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected static s(Landroid/content/Context;)F
    .registers 3

    :try_start_0
    sget v0, Lcn/domob/android/offerwall/f;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/offerwall/f;->m:F
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    sget v0, Lcn/domob/android/offerwall/f;->m:F

    return v0

    :catch_22
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method protected static t(Landroid/content/Context;)F
    .registers 3

    :try_start_0
    sget v0, Lcn/domob/android/offerwall/f;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/offerwall/f;->n:F
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_16

    :cond_13
    :goto_13
    sget v0, Lcn/domob/android/offerwall/f;->n:F

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method protected static u(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->w(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->s(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->t(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/offerwall/f;->o:I

    sget v0, Lcn/domob/android/offerwall/f;->o:I

    return v0
.end method

.method protected static v(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->x(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->s(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->t(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/offerwall/f;->p:I

    sget v0, Lcn/domob/android/offerwall/f;->p:I

    return v0
.end method

.method protected static w(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/offerwall/f;->q:I

    :cond_14
    sget v0, Lcn/domob/android/offerwall/f;->q:I

    return v0
.end method

.method protected static x(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/offerwall/f;->r:I

    :cond_14
    sget v0, Lcn/domob/android/offerwall/f;->r:I

    return v0
.end method

.method protected static y(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->z(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1c
    return-object v0

    :cond_1d
    const-string v0, ""

    goto :goto_1c
.end method

.method protected static z(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/domob/android/offerwall/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcn/domob/android/offerwall/f;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    :goto_16
    return-object v2

    :cond_17
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_16
.end method
