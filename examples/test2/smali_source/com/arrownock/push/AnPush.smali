.class public Lcom/arrownock/push/AnPush;
.super Ljava/lang/Object;


# static fields
.field public static final AN_APPKEY:Ljava/lang/String; = "com.arrownock.push.AN_APPKEY"

.field public static final MIPUSH_APPID:Ljava/lang/String; = "com.arrownock.push.MIPUSH_APPID"

.field public static final MIPUSH_APPKEY:Ljava/lang/String; = "com.arrownock.push.MIPUSH_APPKEY"

.field public static final MIPUSH_SERVICE_STATUS:Ljava/lang/String; = "com.arrownock.push.MIPUSH_SERVICE_STATUS"

.field private static a:Lcom/arrownock/push/AnPush;

.field private static final a:Ljava/lang/String;


# instance fields
.field private a:J

.field private a:Landroid/content/Context;

.field private a:Lcom/arrownock/push/IAnPushCallback;

.field private a:Ldy;

.field private a:Z

.field private b:J

.field private b:Ljava/lang/String;

.field private c:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/AnPush;

    const v1, 0xd5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/arrownock/push/AnPush;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/AnPush;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "androidContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x3a980

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->a:Lcom/arrownock/push/IAnPushCallback;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->a:Ldy;

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/arrownock/push/AnPush;->a:J

    iput-wide v4, p0, Lcom/arrownock/push/AnPush;->b:J

    iput-wide v4, p0, Lcom/arrownock/push/AnPush;->c:J

    iput-boolean v2, p0, Lcom/arrownock/push/AnPush;->a:Z

    iput-object p1, p0, Lcom/arrownock/push/AnPush;->a:Landroid/content/Context;

    new-instance v0, Ldf;

    invoke-direct {v0, p1}, Ldf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->a:Ldy;

    :try_start_2a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_ff

    const-string v0, "com.arrownock.push.SERVICE_TYPE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    const-string v0, "com.arrownock.push.gcm.SENDER_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->e:Ljava/lang/String;

    const-string v0, "com.arrownock.APP_KEY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/arrownock/push/AnPush;->setAppKey(Ljava/lang/String;)V

    const-string v0, "com.arrownock.push.ENABLE_MIPUSH"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "com.arrownock.push.ENABLE_MIPUSH"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/arrownock/push/AnPush;->a:Z

    :cond_65
    iget-boolean v0, p0, Lcom/arrownock/push/AnPush;->a:Z

    if-eqz v0, :cond_92

    invoke-static {}, Lcom/arrownock/push/AnPush;->b()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    const-string v0, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_92

    :cond_7f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MiPush APPID or APPKEY is empty."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_87} :catch_87

    :catch_87
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v2, "Failed to initialize SDK."

    const/16 v3, 0x7d1

    invoke-direct {v1, v2, v0, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :cond_92
    :try_start_92
    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_WIFI"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_125

    iget-wide v0, p0, Lcom/arrownock/push/AnPush;->a:J

    :goto_9c
    iput-wide v0, p0, Lcom/arrownock/push/AnPush;->a:J

    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_2G"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_132

    iget-wide v0, p0, Lcom/arrownock/push/AnPush;->b:J

    :goto_a8
    iput-wide v0, p0, Lcom/arrownock/push/AnPush;->b:J

    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_3G"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13f

    iget-wide v0, p0, Lcom/arrownock/push/AnPush;->c:J

    :goto_b4
    iput-wide v0, p0, Lcom/arrownock/push/AnPush;->c:J

    sget-object v0, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intervalWiFi"

    iget-wide v4, p0, Lcom/arrownock/push/AnPush;->a:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "interval2G"

    iget-wide v4, p0, Lcom/arrownock/push/AnPush;->b:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "interval3G"

    iget-wide v4, p0, Lcom/arrownock/push/AnPush;->c:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string v1, "com.arrownock.push.MIPUSH_APPID"

    const-string v3, "com.arrownock.push.MIPUSH_APPID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e9
    const-string v1, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v1, "com.arrownock.push.MIPUSH_APPKEY"

    const-string v3, "com.arrownock.push.MIPUSH_APPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_fc
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_ff} :catch_87

    :cond_ff
    iget-object v0, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    if-nez v0, :cond_107

    const-string v0, "ARROWNOCK"

    iput-object v0, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    :cond_107
    const-string v0, "GCM"

    iget-object v1, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    const-string v0, "ARROWNOCK"

    iget-object v1, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "Invalid value of com.arrownock.push.SERVICE_TYPE. Should be GCM or ARROWNOCK"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_125
    :try_start_125
    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_WIFI"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto/16 :goto_9c

    :cond_132
    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_2G"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto/16 :goto_a8

    :cond_13f
    const-string v0, "com.arrownock.push.KEEPALIVE_INTERVAL_3G"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_144} :catch_87

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto/16 :goto_b4

    :cond_14c
    const-string v0, "GCM"

    iget-object v1, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/arrownock/push/AnPush;->e:Ljava/lang/String;

    if-eqz v0, :cond_168

    const-string v0, ""

    iget-object v1, p0, Lcom/arrownock/push/AnPush;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    :cond_168
    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "com.arrownock.push.gcm.SENDER_ID must be set for GCM service"

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_172
    const-string v0, "ARROWNOCK"

    iget-object v1, p0, Lcom/arrownock/push/AnPush;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    :try_start_17c
    invoke-virtual {p0}, Lcom/arrownock/push/AnPush;->a()Z

    move-result v0

    if-eqz v0, :cond_191

    invoke-virtual {p0}, Lcom/arrownock/push/AnPush;->isConnected()Z

    move-result v0

    if-nez v0, :cond_191

    invoke-static {}, Lcom/arrownock/push/AnPush;->b()Z

    move-result v0

    if-nez v0, :cond_191

    invoke-virtual {p0}, Lcom/arrownock/push/AnPush;->enable()V

    :cond_191
    invoke-virtual {p0}, Lcom/arrownock/push/AnPush;->isFetchingModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-virtual {p0}, Lcom/arrownock/push/AnPush;->startFetchingMode()V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_19a} :catch_19b

    :cond_19a
    :goto_19a
    return-void

    :catch_19b
    move-exception v0

    goto :goto_19a
.end method

.method public static synthetic a(Lcom/arrownock/push/AnPush;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/push/AnPush;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/arrownock/push/AnPush;)Ldy;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/push/AnPush;->a:Ldy;

    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/arrownock/push/AnPush;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/arrownock/push/AnPush;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/push/AnPush;->c:Ljava/lang/String;

    return-object v0
.end method

.method private native a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method private native a(Ljava/util/List;ZLcom/arrownock/push/IAnPushRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/arrownock/push/IAnPushRegistrationCallback;",
            ")V"
        }
    .end annotation
.end method

.method private native b()Ljava/lang/String;
.end method

.method public static synthetic b(Lcom/arrownock/push/AnPush;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/push/AnPush;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static native b()Z
.end method

.method public static native getInstance(Landroid/content/Context;)Lcom/arrownock/push/AnPush;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method


# virtual methods
.method final native declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final native a()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native clearMute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native clearMute(Lcom/arrownock/push/IAnPushSettingsCallback;)V
.end method

.method public native clearSilentPeriod()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native clearSilentPeriod(Lcom/arrownock/push/IAnPushSettingsCallback;)V
.end method

.method public native disable()V
.end method

.method public native enable()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native enable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getAnID()Ljava/lang/String;
.end method

.method public native getCallback()Lcom/arrownock/push/IAnPushCallback;
.end method

.method public native getSenderId()Ljava/lang/String;
.end method

.method public native isConnected()Z
.end method

.method public native isEnabled()Z
.end method

.method public native isFetchingModeEnabled()Z
.end method

.method public native isSecureConnection()Z
.end method

.method public native register(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native register(Ljava/util/List;Lcom/arrownock/push/IAnPushRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/push/IAnPushRegistrationCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native register(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native register(Ljava/util/List;ZLcom/arrownock/push/IAnPushRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/arrownock/push/IAnPushRegistrationCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native setAppKey(Ljava/lang/String;)V
.end method

.method public native setBadge(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setBadge(ILcom/arrownock/push/IAnPushSettingsCallback;)V
.end method

.method public native setCallback(Lcom/arrownock/push/IAnPushCallback;)V
.end method

.method public native setFetchingInterval(I)V
.end method

.method public native setHosts(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setMute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setMute(Lcom/arrownock/push/IAnPushSettingsCallback;)V
.end method

.method public native setNetworkKeepalive(I)V
.end method

.method public native setSSLCertificates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setScheduledMute(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setScheduledMute(IIILcom/arrownock/push/IAnPushSettingsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setSecret(Ljava/lang/String;)V
.end method

.method public native setSecureConnection(Z)V
.end method

.method public native setSilentPeriod(IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setSilentPeriod(IIIZLcom/arrownock/push/IAnPushSettingsCallback;)V
.end method

.method public native startFetchingMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native stopCommandFetcher()V
.end method

.method public native stopFetchingMode()V
.end method

.method public native stopNotificationFetcher()V
.end method

.method public native unregister()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native unregister(Lcom/arrownock/push/IAnPushRegistrationCallback;)V
.end method

.method public native unregister(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native unregister(Ljava/util/List;Lcom/arrownock/push/IAnPushRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/push/IAnPushRegistrationCallback;",
            ")V"
        }
    .end annotation
.end method
