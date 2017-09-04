.class public Lcn/dbox/core/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/dbox/core/h/d; = null

.field private static final b:Ljava/lang/String; = "wifi"

.field private static final c:Ljava/lang/String; = "ctwap"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

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
    .line 22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 24
    sget-object v0, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string v0, ""

    .line 45
    :cond_18
    :goto_18
    return-object v0

    .line 29
    :cond_19
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_3c

    .line 34
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 35
    if-nez v1, :cond_36

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-nez v0, :cond_18

    .line 40
    const-string v0, "GPRS"

    goto :goto_18

    .line 41
    :cond_36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3c

    .line 42
    const-string v0, "wifi"

    goto :goto_18

    .line 45
    :cond_3c
    const-string v0, ""

    goto :goto_18
.end method

.method protected static b(Landroid/content/Context;)Ljava/net/Proxy;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 65
    .line 67
    const-string v0, ""

    .line 70
    :try_start_3
    invoke-static {p0}, Lcn/dbox/core/d/h;->c(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_c8
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_6} :catch_be

    move-result-object v2

    .line 72
    if-eqz v2, :cond_b1

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b1

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    const-string v0, "proxy"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string v0, "port"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 78
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget-object v5, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    const-class v6, Lcn/dbox/core/d/h;

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

    invoke-virtual {v5, v6, v7}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
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

    .line 87
    sget-object v0, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    const-class v5, Lcn/dbox/core/d/h;

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

    invoke-virtual {v0, v5, v6}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
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

    .line 105
    :goto_ab
    if-eqz v2, :cond_b0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_b0
    :goto_b0
    return-object v1

    .line 94
    :cond_b1
    if-eqz v2, :cond_b0

    .line 95
    :try_start_b3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7
    .catch Ljava/lang/Error; {:try_start_b3 .. :try_end_b6} :catch_c6

    goto :goto_b0

    .line 99
    :catch_b7
    move-exception v0

    .line 100
    :goto_b8
    sget-object v3, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_ab

    .line 101
    :catch_be
    move-exception v0

    move-object v2, v1

    .line 102
    :goto_c0
    sget-object v3, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v3, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_ab

    .line 101
    :catch_c6
    move-exception v0

    goto :goto_c0

    .line 99
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

    .line 49
    invoke-static {p0}, Lcn/dbox/core/d/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1d

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 51
    sget-object v0, Lcn/dbox/core/d/h;->a:Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/d/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Download network is wifi, don\'t read apn."

    invoke-virtual {v0, v1, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_1c
    return-object v2

    .line 56
    :cond_1d
    const-string v0, "content://telephony/carriers/preferapn"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1c
.end method
