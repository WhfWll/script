.class public Lcom/tencent/wxop/stat/common/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Random;

.field private static f:Landroid/util/DisplayMetrics;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Lcom/tencent/wxop/stat/common/StatLogger;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static volatile n:I

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:J

.field private static r:Ljava/lang/String;

.field private static s:Lcom/tencent/wxop/stat/common/n;

.field private static t:Ljava/lang/String;

.field private static u:I

.field private static v:J

.field private static w:I

.field private static x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->b:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->c:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->d:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->e:Ljava/util/Random;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->f:Landroid/util/DisplayMetrics;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    sput v2, Lcom/tencent/wxop/stat/common/k;->j:I

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->l:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    sput v2, Lcom/tencent/wxop/stat/common/k;->n:I

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->o:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->p:Ljava/lang/String;

    sput-wide v4, Lcom/tencent/wxop/stat/common/k;->q:J

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->r:Ljava/lang/String;

    sput-object v1, Lcom/tencent/wxop/stat/common/k;->s:Lcom/tencent/wxop/stat/common/n;

    const-string v0, "__MTA_FIRST_ACTIVATE__"

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->t:Ljava/lang/String;

    sput v2, Lcom/tencent/wxop/stat/common/k;->u:I

    sput-wide v4, Lcom/tencent/wxop/stat/common/k;->v:J

    const/4 v0, 0x0

    sput v0, Lcom/tencent/wxop/stat/common/k;->w:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->x:Ljava/lang/String;

    return-void
.end method

.method public static A(Landroid/content/Context;)I
    .registers 3

    const-string v0, "mta.qq.com.difftime"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static B(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x190

    if-ne v0, v2, :cond_39

    const/4 v0, 0x1

    goto :goto_4

    :cond_39
    move v0, v1

    goto :goto_4

    :cond_3b
    move v0, v1

    goto :goto_4
.end method

.method public static C(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3
.end method

.method private static D(Landroid/content/Context;)J
    .registers 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static a()I
    .registers 2

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->g()Ljava/util/Random;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .registers 3

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->A(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/common/k;->w:I

    :cond_8
    sget v0, Lcom/tencent/wxop/stat/common/k;->w:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;
    .registers 16

    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object p4

    :cond_5
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_24
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    if-ne v0, p3, :cond_4

    const-wide/16 v0, 0x0

    :try_start_2d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_35
    array-length v2, v3

    if-ge v1, v2, :cond_52

    int-to-long v4, p2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_4c} :catch_54

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_35

    :cond_52
    move-object p4, v0

    goto :goto_4

    :catch_54
    move-exception v0

    goto :goto_4
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->roll(II)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->isEnableConcurrentProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    :cond_11
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2e
    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string v0, "0"

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1c
    array-length v3, v1

    if-ge v0, v3, :cond_36

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2c

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_4

    :catch_3b
    move-exception v0

    const-string v0, "0"

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .registers 5

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    goto :goto_4

    :cond_17
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_27

    move-object v0, v1

    goto :goto_4

    :cond_27
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v0, v1

    goto :goto_4

    :cond_3b
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    move-object v0, v1

    goto :goto_4

    :cond_43
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_5b
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_64} :catch_65

    goto :goto_4

    :catch_65
    move-exception v0

    sget-object v2, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_6b
    move-object v0, v1

    goto :goto_4

    :cond_6d
    :try_start_6d
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    :cond_7f
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_98} :catch_65

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 3

    sput p1, Lcom/tencent/wxop/stat/common/k;->w:I

    const-string v0, "mta.qq.com.difftime"

    invoke-static {p0, v0, p1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static a([B)[B
    .registers 7

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_16
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_16

    :cond_22
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v2
.end method

.method public static b(Ljava/lang/String;)J
    .registers 7

    const-string v0, "."

    const/16 v1, 0x64

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/wxop/stat/common/k;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized b()Lcom/tencent/wxop/stat/common/StatLogger;
    .registers 3

    const-class v1, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    if-nez v0, :cond_14

    new-instance v0, Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "MtaSDK"

    invoke-direct {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->setDebugEnable(Z)V

    :cond_14
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    :goto_15
    monitor-exit v1

    return-object v0

    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3c

    :cond_2b
    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->g()Ljava/util/Random;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;

    :cond_3c
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->a:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_3f

    goto :goto_15

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()J
    .registers 6

    const-wide/32 v4, 0x5265c00

    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_25

    move-result-wide v0

    add-long/2addr v0, v4

    :goto_24
    return-wide v0

    :catch_25
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    goto :goto_24
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    :cond_13
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->c:Ljava/lang/String;

    :cond_19
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->c:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->f:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_20

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_20
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->f:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 8

    const-wide/32 v6, 0xf4240

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->p:Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->e()J

    move-result-wide v0

    div-long/2addr v0, v6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->p:Ljava/lang/String;

    goto :goto_d
.end method

.method public static e()J
    .registers 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3c

    move v0, v1

    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_3c

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v0, 0x1

    :goto_38
    return v0

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3c
    move v0, v1

    goto :goto_38

    :cond_3e
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    :goto_45
    move v0, v1

    goto :goto_38

    :catch_47
    move-exception v0

    sget-object v2, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_45
.end method

.method static synthetic f()Lcom/tencent/wxop/stat/common/StatLogger;
    .registers 1

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->b:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "TA_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->b:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_6

    :catch_24
    move-exception v0

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    goto :goto_6

    :cond_2e
    :try_start_2e
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Could not read APPKEY meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->i(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_24

    goto :goto_2c
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "InstallChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_28

    :cond_26
    :goto_26
    const/4 v0, 0x0

    goto :goto_1e

    :catch_28
    move-exception v0

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Could not read InstallChannel meta-data from AndroidManifest.xml"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V

    goto :goto_26
.end method

.method private static declared-synchronized g()Ljava/util/Random;
    .registers 2

    const-class v1, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->e:Ljava/util/Random;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->e:Ljava/util/Random;

    :cond_e
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->e:Ljava/util/Random;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static h()J
    .registers 5

    sget-wide v0, Lcom/tencent/wxop/stat/common/k;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    sget-wide v0, Lcom/tencent/wxop/stat/common/k;->q:J

    :goto_a
    return-wide v0

    :cond_b
    const-string v2, "/proc/meminfo"

    const-wide/16 v0, 0x1

    :try_start_f
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_39

    :goto_36
    sput-wide v0, Lcom/tencent/wxop/stat/common/k;->q:J

    goto :goto_a

    :catch_39
    move-exception v2

    goto :goto_36
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->g:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->g:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_25} :catch_30

    :cond_25
    :goto_25
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->g:Ljava/lang/String;

    goto :goto_6

    :cond_28
    :try_start_28
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v1, "Could not get permission of android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_25

    :catch_30
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->h:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->h:Ljava/lang/String;

    if-nez v0, :cond_27

    const-string v0, ""
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_a

    :catch_21
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_27
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->h:Ljava/lang/String;

    goto :goto_a
.end method

.method public static k(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v1, ""

    :try_start_2
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4e

    const-string v3, "WIFI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v1, "WIFI"

    :goto_3a
    return-object v1

    :cond_3b
    const-string v3, "MOBILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    if-eqz v2, :cond_47

    move-object v1, v2

    goto :goto_3a

    :cond_47
    const-string v1, "MOBILE"

    goto :goto_3a

    :cond_4a
    if-eqz v2, :cond_4f

    move-object v1, v2

    goto :goto_3a

    :cond_4e
    move-object v0, v1

    :cond_4f
    move-object v1, v0

    goto :goto_3a

    :cond_51
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "can not get the permission of android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_58} :catch_59

    goto :goto_3a

    :catch_59
    move-exception v0

    sget-object v2, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    :cond_26
    const-string v0, "unknown"
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_a

    :catch_29
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_2f
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->i:Ljava/lang/String;

    goto :goto_a
.end method

.method public static o(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/tencent/wxop/stat/common/k;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    sget v0, Lcom/tencent/wxop/stat/common/k;->j:I

    :goto_7
    return v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/tencent/wxop/stat/common/o;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/common/k;->j:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_15

    :cond_11
    :goto_11
    const/4 v0, 0x0

    sput v0, Lcom/tencent/wxop/stat/common/k;->j:I

    goto :goto_7

    :catch_15
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->l:Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->l:Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_70} :catch_71

    goto :goto_b

    :catch_71
    move-exception v0

    sget-object v2, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :cond_77
    move-object v0, v1

    goto :goto_b

    :cond_79
    :try_start_79
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    const-string v2, "can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Lcom/tencent/wxop/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_80} :catch_71

    move-object v0, v1

    goto :goto_b
.end method

.method static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1b

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_32

    :cond_2f
    :goto_2f
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->m:Ljava/lang/String;

    goto :goto_6

    :catch_32
    move-exception v0

    goto :goto_2f
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/tencent/wxop/stat/common/StatConstants;->DATABASE_NAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/wxop/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized s(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    const-class v2, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v2

    :try_start_4
    sget v1, Lcom/tencent/wxop/stat/common/k;->n:I

    if-lez v1, :cond_34

    sget v1, Lcom/tencent/wxop/stat/common/k;->n:I

    rem-int/lit16 v1, v1, 0x3e8
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_31

    if-nez v1, :cond_1e

    :try_start_e
    sget v1, Lcom/tencent/wxop/stat/common/k;->n:I

    add-int/lit16 v1, v1, 0x3e8

    sget v3, Lcom/tencent/wxop/stat/common/k;->n:I

    const v4, 0x7ffe795f

    if-lt v3, v4, :cond_47

    :goto_19
    const-string v1, "MTA_EVENT_INDEX"

    invoke-static {p0, v1, v0}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1e} :catch_2a
    .catchall {:try_start_e .. :try_end_1e} :catchall_31

    :cond_1e
    :goto_1e
    :try_start_1e
    sget v0, Lcom/tencent/wxop/stat/common/k;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/wxop/stat/common/k;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_31

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catch_2a
    move-exception v0

    :try_start_2b
    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->w(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_31

    goto :goto_1e

    :catchall_31
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_34
    :try_start_34
    const-string v0, "MTA_EVENT_INDEX"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/common/k;->n:I

    const-string v0, "MTA_EVENT_INDEX"

    sget v1, Lcom/tencent/wxop/stat/common/k;->n:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_31

    goto :goto_1e

    :cond_47
    move v0, v1

    goto :goto_19
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->D(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {}, Lcom/tencent/wxop/stat/common/k;->h()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static u(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "n"

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const-string v2, "na"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->b()I

    move-result v0

    if-lez v0, :cond_2e

    const-string v2, "fx"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2e
    invoke-static {}, Lcom/tencent/wxop/stat/common/l;->c()I

    move-result v0

    if-lez v0, :cond_3d

    const-string v2, "fn"

    const v3, 0xf4240

    div-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-object v1

    :catch_3e
    move-exception v0

    const-string v2, "MtaSDK"

    const-string v3, "get cpu error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->r:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_53

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_53

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_49

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    :cond_4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/wxop/stat/common/k;->r:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_53} :catch_56

    :cond_53
    :goto_53
    sget-object v0, Lcom/tencent/wxop/stat/common/k;->r:Ljava/lang/String;

    goto :goto_a

    :catch_56
    move-exception v0

    sget-object v1, Lcom/tencent/wxop/stat/common/k;->k:Lcom/tencent/wxop/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method public static declared-synchronized w(Landroid/content/Context;)I
    .registers 4

    const-class v1, Lcom/tencent/wxop/stat/common/k;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/tencent/wxop/stat/common/k;->u:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    sget v0, Lcom/tencent/wxop/stat/common/k;->u:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    :goto_a
    monitor-exit v1

    return v0

    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/tencent/wxop/stat/common/k;->x(Landroid/content/Context;)V

    sget v0, Lcom/tencent/wxop/stat/common/k;->u:I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static x(Landroid/content/Context;)V
    .registers 3

    const/4 v1, 0x1

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->t:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/wxop/stat/common/k;->u:I

    if-ne v0, v1, :cond_11

    sget-object v0, Lcom/tencent/wxop/stat/common/k;->t:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public static y(Landroid/content/Context;)Z
    .registers 5

    const-wide/16 v2, 0x0

    sget-wide v0, Lcom/tencent/wxop/stat/common/k;->v:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    const-string v0, "mta.qq.com.checktime"

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/wxop/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/common/k;->v:J

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/wxop/stat/common/k;->v:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static z(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/wxop/stat/common/k;->v:J

    const-string v0, "mta.qq.com.checktime"

    sget-wide v2, Lcom/tencent/wxop/stat/common/k;->v:J

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/wxop/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
