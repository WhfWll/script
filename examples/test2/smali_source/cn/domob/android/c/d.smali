.class public Lcn/domob/android/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static final b:Ljava/lang/String; = "wifi"

.field private static final c:Ljava/lang/String; = "ctwap"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 21
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 22
    sget-object v0, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-string v0, ""

    .line 43
    :cond_18
    :goto_18
    return-object v0

    .line 27
    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_3c

    .line 32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 33
    if-nez v1, :cond_36

    .line 35
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-nez v0, :cond_18

    .line 38
    const-string v0, "GPRS"

    goto :goto_18

    .line 39
    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    .line 40
    const-string v0, "wifi"

    goto :goto_18

    .line 43
    :cond_3c
    const-string v0, ""

    goto :goto_18
.end method

.method protected static b(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 64
    const-string v0, ""

    .line 67
    :try_start_3
    invoke-static {p0}, Lcn/domob/android/c/d;->c(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_c8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_6} :catch_be

    move-result-object v2

    .line 69
    if-eqz v2, :cond_b1

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b1

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const-string v0, "proxy"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string v0, "port"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 73
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v5, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    const-class v6, Lcn/domob/android/c/d;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    if-eqz v3, :cond_cb

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    if-eqz v4, :cond_cb

    const-string v5, "ctwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 79
    sget-object v0, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    const-class v5, Lcn/domob/android/c/d;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download use proxy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_aa} :catch_b7
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_aa} :catch_c6

    :goto_aa
    move-object v1, v0

    .line 95
    :goto_ab
    if-eqz v2, :cond_b0

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_b0
    :goto_b0
    return-object v1

    .line 84
    :cond_b1
    if-eqz v2, :cond_b0

    .line 85
    :try_start_b3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catch Ljava/lang/Error; {:try_start_b3 .. :try_end_b6} :catch_c6

    goto :goto_b0

    .line 89
    :catch_b7
    move-exception v0

    .line 90
    :goto_b8
    sget-object v3, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_ab

    .line 91
    :catch_be
    move-exception v0

    move-object v2, v1

    .line 92
    :goto_c0
    sget-object v3, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_ab

    .line 91
    :catch_c6
    move-exception v0

    goto :goto_c0

    .line 89
    :catch_c8
    move-exception v0

    move-object v2, v1

    goto :goto_b8

    :cond_cb
    move-object v0, v1

    goto :goto_aa
.end method

.method private static c(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-static {p0}, Lcn/domob/android/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1d

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 49
    sget-object v0, Lcn/domob/android/c/d;->a:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Download network is wifi, don\'t read apn."

    invoke-virtual {v0, v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_1c
    return-object v2

    .line 54
    :cond_1d
    const-string v0, "content://telephony/carriers/preferapn"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1c
.end method
