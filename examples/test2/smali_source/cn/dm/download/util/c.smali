.class public Lcn/dm/download/util/c;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final aB:Ljava/lang/String; = "wifi"

.field private static final aC:Ljava/lang/String; = "ctwap"

.field private static j:Lcn/dm/download/util/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/util/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JJ)I
    .registers 6

    .prologue
    .line 66
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p0

    :try_start_3
    div-long/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    move-result v0

    .line 69
    :goto_c
    return v0

    .line 67
    :catch_d
    move-exception v0

    .line 68
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1f

    .line 267
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 272
    :goto_d
    return v0

    .line 269
    :catch_e
    move-exception v0

    .line 270
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u901a\u8fc7\u5305\u540d\u83b7\u53d6\u7248\u672c\u53f7\u51fa\u9519:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_1f
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)J
    .registers 5

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcn/dm/download/util/c;->f(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_26

    .line 114
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 119
    :goto_11
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 121
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_22

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_2d

    .line 124
    :cond_22
    sget v0, Lcn/dm/download/util/Constants;->DownloadUrlWrong:I

    int-to-long v0, v0

    .line 132
    :goto_25
    return-wide v0

    .line 116
    :cond_26
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_11

    .line 127
    :cond_2d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_33

    move-result v0

    .line 128
    int-to-long v0, v0

    goto :goto_25

    .line 130
    :catch_33
    move-exception v0

    .line 131
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 132
    sget v0, Lcn/dm/download/util/Constants;->DownloadUrlWrong:I

    int-to-long v0, v0

    goto :goto_25
.end method

.method public static a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/dm/download/util/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 38
    const-string v0, ""

    .line 56
    :cond_b
    :goto_b
    return-object v0

    .line 41
    :cond_c
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_2f

    .line 45
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 46
    if-nez v1, :cond_29

    .line 48
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-nez v0, :cond_b

    .line 51
    const-string v0, "GPRS"

    goto :goto_b

    .line 52
    :cond_29
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2f

    .line 53
    const-string v0, "wifi"

    goto :goto_b

    .line 56
    :cond_2f
    const-string v0, ""

    goto :goto_b
.end method

.method private static e(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 143
    :try_start_1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 144
    :goto_24
    if-eqz v0, :cond_3c

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, v6

    .line 155
    :goto_2f
    return-object v0

    .line 143
    :cond_30
    const-string v0, "GPRS"

    goto :goto_24

    :cond_33
    const/4 v0, 0x1

    if-ne v1, v0, :cond_39

    const-string v0, "wifi"

    goto :goto_24

    :cond_39
    const-string v0, ""

    goto :goto_24

    .line 148
    :cond_3c
    const-string v0, "content://telephony/carriers/preferapn"

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4d} :catch_4f

    move-result-object v0

    goto :goto_2f

    .line 153
    :catch_4f
    move-exception v0

    .line 154
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-object v0, v6

    .line 155
    goto :goto_2f
.end method

.method public static f(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 161
    .line 166
    :try_start_1
    invoke-static {p0}, Lcn/dm/download/util/c;->e(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6c
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_4} :catch_62

    move-result-object v2

    .line 168
    if-eqz v2, :cond_55

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_55

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    const-string v1, "proxy"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    const-string v1, "port"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 172
    const-string v1, "apn"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v3, :cond_4f

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    if-eqz v4, :cond_4f

    const-string v5, "ctwap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 175
    new-instance v1, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_5b
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_4e} :catch_6a

    move-object v0, v1

    .line 189
    :cond_4f
    :goto_4f
    if-eqz v2, :cond_54

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_54
    :goto_54
    return-object v0

    .line 178
    :cond_55
    if-eqz v2, :cond_54

    .line 179
    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_5a} :catch_6a

    goto :goto_54

    .line 183
    :catch_5b
    move-exception v1

    .line 184
    :goto_5c
    sget-object v3, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_4f

    .line 185
    :catch_62
    move-exception v1

    move-object v2, v0

    .line 186
    :goto_64
    sget-object v3, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    goto :goto_4f

    .line 185
    :catch_6a
    move-exception v1

    goto :goto_64

    .line 183
    :catch_6c
    move-exception v1

    move-object v2, v0

    goto :goto_5c
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    invoke-static {}, Lcn/dm/download/util/c;->s()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/dm/download/util/Constants;->DefaultStorageFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_29
    return-object v0

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/dm/download/util/Constants;->DefaultStorageFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method

.method public static h(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 282
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 301
    return-object v2

    .line 285
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 286
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_12

    .line 287
    new-instance v4, Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {v4}, Lcn/dm/download/bean/DownloadAppInfo;-><init>()V

    .line 290
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/dm/download/bean/DownloadAppInfo;->setAppName(Ljava/lang/String;)V

    .line 291
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcn/dm/download/bean/DownloadAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 292
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionCode(I)V

    .line 293
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public static q(Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672c\u5730\u6587\u4ef6\u8def\u5f84\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \uff0c\u672c\u5730\u6587\u4ef6\u662f\u5426\u5b58\u5728\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    move-result-wide v0

    .line 97
    :goto_23
    return-wide v0

    .line 94
    :catch_24
    move-exception v0

    .line 95
    sget-object v1, Lcn/dm/download/util/c;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 97
    const-wide/16 v0, 0x0

    goto :goto_23
.end method

.method public static r(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .registers 2

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 208
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 212
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static t(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 227
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method
