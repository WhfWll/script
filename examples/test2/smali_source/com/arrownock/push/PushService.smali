.class public Lcom/arrownock/push/PushService;
.super Landroid/app/Service;


# static fields
.field public static final ACTION_MSG_ARRIVAL:Ljava/lang/String;

.field public static DEFAULT_FETCH_INTERVAL:I = 0x0

.field public static LOGGER_TAG:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PREF_ALREADY_REGISTER:Ljava/lang/String; = "hasAlreadyRegistered"

.field public static final PREF_API_HOST:Ljava/lang/String; = "apiHost"

.field public static final PREF_API_SECRET:Ljava/lang/String; = "apiSecret"

.field public static final PREF_CLIENT_CERT:Ljava/lang/String; = "clientCert"

.field public static final PREF_CLIENT_KEY:Ljava/lang/String; = "clientKey"

.field public static final PREF_DEVICE_ID:Ljava/lang/String; = "ANID"

.field public static final PREF_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field public static final PREF_DS_HOST:Ljava/lang/String; = "dsHost"

.field public static final PREF_ENABLED:Ljava/lang/String; = "isEnabled"

.field public static final PREF_FETCH_COMMAND_INTERVAL:Ljava/lang/String; = "fetchCommandInterval"

.field public static final PREF_FETCH_COMMAND_ON:Ljava/lang/String; = "fetchCommandOn"

.field public static final PREF_FETCH_NOTIFICATION_INTERVAL:Ljava/lang/String; = "fetchNotificationInterval"

.field public static final PREF_FETCH_NOTIFICATION_ON:Ljava/lang/String; = "fetchNotificationOn"

.field public static final PREF_INTERVAL_2G:Ljava/lang/String; = "interval2G"

.field public static final PREF_INTERVAL_3G:Ljava/lang/String; = "interval3G"

.field public static final PREF_INTERVAL_WIFI:Ljava/lang/String; = "intervalWiFi"

.field public static final PREF_KEEPALIVE:Ljava/lang/String; = "networkKeepalive"

.field public static final PREF_LATEST_ONLINE_COMMAND_TIMESTAMP:Ljava/lang/String; = "latestOnlineCommandTimestamp"

.field public static final PREF_PUSH_HOST:Ljava/lang/String; = "pushHost"

.field public static final PREF_PUSH_HOST_EXPIRATION:Ljava/lang/String; = "pushHostExpiration"

.field public static final PREF_PUSH_HOST_RETRYTIME:Ljava/lang/String; = "pushHostRetrytime"

.field public static final PREF_PUSH_PORT:Ljava/lang/String; = "pushPort"

.field public static final PREF_PUSH_SCHEDULED_DURATION:Ljava/lang/String; = "pushScheduledDuration"

.field public static final PREF_PUSH_SCHEDULED_HOUR:Ljava/lang/String; = "pushScheduledHour"

.field public static final PREF_PUSH_SCHEDULED_MINUTE:Ljava/lang/String; = "pushScheduledMinue"

.field public static final PREF_RETRY:Ljava/lang/String; = "retryInterval"

.field public static final PREF_SECURE_CONNECTION:Ljava/lang/String; = "secureConnection"

.field public static final PREF_SERVER_CERT:Ljava/lang/String; = "serverCert"

.field protected static a:I

.field private static a:Lji;

.field protected static b:I

.field private static c:I


# instance fields
.field private a:J

.field private a:Landroid/app/PendingIntent;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/SharedPreferences;

.field private a:Z

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/PushService;

    const v1, 0xda

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/PushService;->LOG_TAG:Ljava/lang/String;

    const-class v0, Lcom/arrownock/push/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/arrownock/push/PushService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".MSG_ARRIVAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    const/16 v0, 0x1c20

    sput v0, Lcom/arrownock/push/PushService;->DEFAULT_FETCH_INTERVAL:I

    const/16 v0, 0x2710

    sput v0, Lcom/arrownock/push/PushService;->a:I

    const/16 v0, 0x4e20

    sput v0, Lcom/arrownock/push/PushService;->b:I

    const/16 v0, 0x4e21

    sput v0, Lcom/arrownock/push/PushService;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lcom/arrownock/push/PushService;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/app/PendingIntent;

    new-instance v0, Lej;

    invoke-direct {v0, p0}, Lej;-><init>(Lcom/arrownock/push/PushService;)V

    iput-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private native a()I
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;)J
    .registers 3

    iget-wide v0, p0, Lcom/arrownock/push/PushService;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/arrownock/push/PushService;->a:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic a()Lji;
    .registers 1

    sget-object v0, Lcom/arrownock/push/PushService;->a:Lji;

    return-object v0
.end method

.method private native a()V
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;)V
    .registers 1

    invoke-direct {p0}, Lcom/arrownock/push/PushService;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/arrownock/push/PushService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;Lorg/json/JSONObject;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arrownock/push/PushService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "payload"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/arrownock/push/PushService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private native declared-synchronized a(Ljava/lang/String;I)V
.end method

.method private native a(Z)V
.end method

.method private native a()Z
.end method

.method public static synthetic a(Lcom/arrownock/push/PushService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/arrownock/push/PushService;->a()Z

    move-result v0

    return v0
.end method

.method public static native actionCheckStart(Landroid/content/Context;)V
.end method

.method public static native actionConnectivityChanged(Landroid/content/Context;)V
.end method

.method public static native actionPing(Landroid/content/Context;)V
.end method

.method public static native actionRestart(Landroid/content/Context;)V
.end method

.method public static native actionSetInterval(Landroid/content/Context;I)V
.end method

.method public static native actionStart(Landroid/content/Context;)V
.end method

.method public static native actionStartCommandFetcher(Landroid/content/Context;)V
.end method

.method public static native actionStartNotificationFetcher(Landroid/content/Context;)V
.end method

.method public static native actionStop(Landroid/content/Context;)V
.end method

.method public static native actionStopCommandFetcher(Landroid/content/Context;)V
.end method

.method public static native actionStopNotificationFetcher(Landroid/content/Context;)V
.end method

.method public static synthetic b()Lji;
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/arrownock/push/PushService;->a:Lji;

    return-object v0
.end method

.method private native b()V
.end method

.method public static synthetic b(Lcom/arrownock/push/PushService;)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AN.KEEP_ALIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/arrownock/push/PushService;->c:I

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/arrownock/push/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/arrownock/push/PushService;->b:J

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private native declared-synchronized b(Z)V
.end method

.method private native b()Z
.end method

.method public static synthetic b(Lcom/arrownock/push/PushService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/arrownock/push/PushService;->a:Z

    return v0
.end method

.method private native c()V
.end method

.method public static synthetic c(Lcom/arrownock/push/PushService;)V
    .registers 7

    const-wide/32 v4, 0x3a980

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lat;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_2c

    move v2, v0

    :goto_18
    if-eqz v2, :cond_2e

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "network type: WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/content/SharedPreferences;

    const-string v1, "intervalWiFi"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arrownock/push/PushService;->b:J

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v2, v1

    goto :goto_18

    :cond_2e
    invoke-static {p0}, Lat;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_70

    move v2, v0

    :goto_41
    if-eqz v2, :cond_2b

    invoke-static {p0}, Lat;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    if-ne v3, v0, :cond_72

    move v2, v0

    :goto_5a
    if-eqz v2, :cond_97

    :goto_5c
    if-eqz v0, :cond_99

    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "network type: 3G"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/content/SharedPreferences;

    const-string v1, "interval3G"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arrownock/push/PushService;->b:J

    goto :goto_2b

    :cond_70
    move v2, v1

    goto :goto_41

    :cond_72
    if-nez v3, :cond_95

    packed-switch v2, :pswitch_data_ac

    move v2, v1

    goto :goto_5a

    :pswitch_79
    move v2, v1

    goto :goto_5a

    :pswitch_7b
    move v2, v1

    goto :goto_5a

    :pswitch_7d
    move v2, v1

    goto :goto_5a

    :pswitch_7f
    move v2, v0

    goto :goto_5a

    :pswitch_81
    move v2, v0

    goto :goto_5a

    :pswitch_83
    move v2, v1

    goto :goto_5a

    :pswitch_85
    move v2, v0

    goto :goto_5a

    :pswitch_87
    move v2, v0

    goto :goto_5a

    :pswitch_89
    move v2, v0

    goto :goto_5a

    :pswitch_8b
    move v2, v0

    goto :goto_5a

    :pswitch_8d
    move v2, v0

    goto :goto_5a

    :pswitch_8f
    move v2, v0

    goto :goto_5a

    :pswitch_91
    move v2, v1

    goto :goto_5a

    :pswitch_93
    move v2, v0

    goto :goto_5a

    :cond_95
    move v2, v1

    goto :goto_5a

    :cond_97
    move v0, v1

    goto :goto_5c

    :cond_99
    sget-object v0, Lcom/arrownock/push/PushService;->LOGGER_TAG:Ljava/lang/String;

    const-string v1, "network type: 2G"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/arrownock/push/PushService;->a:Landroid/content/SharedPreferences;

    const-string v1, "interval2G"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arrownock/push/PushService;->b:J

    goto :goto_2b

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_83
        :pswitch_7d
        :pswitch_8b
        :pswitch_7b
        :pswitch_7f
        :pswitch_81
        :pswitch_79
        :pswitch_85
        :pswitch_89
        :pswitch_87
        :pswitch_91
        :pswitch_8f
        :pswitch_93
        :pswitch_8d
    .end packed-switch
.end method

.method public static synthetic c(Lcom/arrownock/push/PushService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/arrownock/push/PushService;->b()Z

    move-result v0

    return v0
.end method

.method private native d()V
.end method

.method public static synthetic d(Lcom/arrownock/push/PushService;)V
    .registers 1

    invoke-direct {p0}, Lcom/arrownock/push/PushService;->h()V

    return-void
.end method

.method private native declared-synchronized e()V
.end method

.method private native f()V
.end method

.method private native g()V
.end method

.method private native h()V
.end method

.method private native declared-synchronized i()V
.end method

.method public static native isEnabled()Z
.end method

.method private native declared-synchronized j()V
.end method

.method private native k()V
.end method


# virtual methods
.method public native cancelReconnect()V
.end method

.method public native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public native onCreate()V
.end method

.method public native onDestroy()V
.end method

.method public native onStart(Landroid/content/Intent;I)V
.end method

.method public native onStartCommand(Landroid/content/Intent;II)I
.end method

.method public native onTaskRemoved(Landroid/content/Intent;)V
.end method

.method public native scheduleReconnect(J)V
.end method
