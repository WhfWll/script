.class public Lcom/arrownock/im/AnIM;
.super Ljava/lang/Object;

# interfaces
.implements Lbh;


# instance fields
.field private final a:J

.field private a:Landroid/content/Context;

.field private a:Lay;

.field private a:Lcom/arrownock/im/callback/IAnIMCallback;

.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/AnIM;

    const v1, 0xc1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "androidContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Lcom/arrownock/im/callback/IAnIMCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arrownock/im/AnIM;->a:Z

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    const-string v0, "1048576"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arrownock/im/AnIM;->a:J

    iput-object p1, p0, Lcom/arrownock/im/AnIM;->a:Landroid/content/Context;

    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    iput-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    invoke-interface {v0, p1}, Lay;->a(Landroid/content/Context;)V

    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3e

    const-string v1, "com.arrownock.APP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/arrownock/im/AnIM;->setAppKey(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_5a

    :cond_3e
    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    if-eqz v0, :cond_50

    const-string v0, ""

    iget-object v1, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_50
    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "Invalid value of com.arrownock.APP_KEY"

    const/16 v2, 0x44d

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_5a
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v2, "Failed to initialize SDK."

    const/16 v3, 0x835

    invoke-direct {v1, v2, v0, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :cond_65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "androidContext"    # Landroid/content/Context;
    .param p2, "AppKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Lcom/arrownock/im/callback/IAnIMCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arrownock/im/AnIM;->a:Z

    iput-object v1, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    const-string v0, "1048576"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arrownock/im/AnIM;->a:J

    iput-object p1, p0, Lcom/arrownock/im/AnIM;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    iput-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    invoke-interface {v0, p1}, Lay;->a(Landroid/content/Context;)V

    :try_start_25
    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lay;

    iget-object v1, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lay;->a(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_48

    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    if-eqz v0, :cond_3e

    const-string v0, ""

    iget-object v1, p0, Lcom/arrownock/im/AnIM;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_3e
    new-instance v0, Lcom/arrownock/exception/ArrownockException;

    const-string v1, "Invalid value of com.arrownock.APP_KEY"

    const/16 v2, 0x44d

    invoke-direct {v0, v1, v2}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_48
    move-exception v0

    new-instance v1, Lcom/arrownock/exception/ArrownockException;

    const-string v2, "Failed to initialize SDK."

    const/16 v3, 0x835

    invoke-direct {v1, v2, v0, v3}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :cond_53
    return-void
.end method

.method public static synthetic a(Lcom/arrownock/im/AnIM;)Lcom/arrownock/im/callback/IAnIMCallback;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/im/AnIM;->a:Lcom/arrownock/im/callback/IAnIMCallback;

    return-object v0
.end method

.method private native a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method


# virtual methods
.method public native addClientsToTopic(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
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

.method public native addClientsToTopic(Ljava/lang/String;Ljava/util/Set;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMTopicCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native bindAnPushService(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native bindAnPushService(Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/AnPushType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native bindAnPushService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native bindAnPushService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/AnPushType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native bindAnPushService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMPushBindingCallback;)V
.end method

.method public native connect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native createSession(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public native createTopic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native createTopic(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
.end method

.method public native createTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
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

.method public native createTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMTopicCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native createTopic(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
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

.method public native createTopic(Ljava/lang/String;Ljava/util/Set;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMTopicCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native disablePushNotificationForTopics(Ljava/lang/String;Ljava/util/List;Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native enablePushNotificationForTopics(Ljava/lang/String;Ljava/util/List;Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native getClientId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getClientId(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMGetClientIdCallback;)V
.end method

.method public native getClientsStatus(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getClientsStatus(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMGetClientsStatusCallback;)V
.end method

.method public native getClientsStatus(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
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

.method public native getClientsStatus(Ljava/util/Set;Lcom/arrownock/im/callback/IAnIMGetClientsStatusCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMGetClientsStatusCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native getCurrentStatus()Lcom/arrownock/im/AnIMStatus;
.end method

.method public native getFullTopicHistory(Ljava/lang/String;IJLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getFullTopicHistory(Ljava/lang/String;Ljava/lang/String;IJLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getHistory(Ljava/util/Set;Ljava/lang/String;IJLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/arrownock/im/callback/IAnIMHistoryCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native getMyTopicList()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getOfflineHistory(Ljava/lang/String;ILcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getOfflineHistory(Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getOfflineHistory(Ljava/util/Set;Ljava/lang/String;ILcom/arrownock/im/callback/IAnIMHistoryCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/arrownock/im/callback/IAnIMHistoryCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native getOfflineTopicHistory(Ljava/lang/String;ILcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getOfflineTopicHistory(Ljava/lang/String;Ljava/lang/String;ILcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getPartyId()Ljava/lang/String;
.end method

.method public native getRemoteClientId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getSessionInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getTopicHistory(Ljava/lang/String;Ljava/lang/String;IJLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
.end method

.method public native getTopicInfo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getTopicInfo(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMGetTopicInfoCallback;)V
.end method

.method public native getTopicList()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native getTopicList(Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;)V
.end method

.method public native getTopicList(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMGetTopicListCallback;)V
.end method

.method public native getTopicLog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native isOnline()Z
.end method

.method public native isSecureConnection()Z
.end method

.method public native removeClientsFromTopic(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
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

.method public native removeClientsFromTopic(Ljava/lang/String;Ljava/util/Set;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/arrownock/im/callback/IAnIMTopicCallback;",
            ")V"
        }
    .end annotation
.end method

.method public native removeTopic(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native removeTopic(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
.end method

.method public native sendAnswer(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native sendBinary(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/lang/String;[BLjava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/util/Set;[BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/util/Set;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/util/Set;[BLjava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinary(Ljava/util/Set;[BLjava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinaryToTopic(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinaryToTopic(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinaryToTopic(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendBinaryToTopic(Ljava/lang/String;[BLjava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendHangup(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native sendICECandidate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native sendInvitations(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessage(Ljava/util/Set;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendMessageToTopic(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNotice(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNotice(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNotice(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNotice(Ljava/util/Set;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNoticeToTopic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNoticeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNoticeToTopic(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendNoticeToTopic(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendOffer(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native sendReadACK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native sendReadACK(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native setAppKey(Ljava/lang/String;)V
.end method

.method public native setCallback(Lcom/arrownock/im/callback/IAnIMCallback;)V
.end method

.method public native setCallbacks(Lbi;)V
.end method

.method public native setHosts(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setPushNotificationForChatSession(Ljava/lang/String;ZLcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
.end method

.method public native setPushNotificationForMentioning(Ljava/lang/String;ZLcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
.end method

.method public native setPushNotificationForNotice(Ljava/lang/String;ZLcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
.end method

.method public native setPushNotificationForTopic(Ljava/lang/String;ZLcom/arrownock/im/callback/IAnIMPushNotificationSettingsCallback;)V
.end method

.method public native setSecureConnection(Z)V
.end method

.method public native terminateSession(Ljava/lang/String;)V
.end method

.method public native unbindAnPushService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native unbindAnPushService(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native unbindAnPushService(Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMPushBindingCallback;)V
.end method

.method public native updateTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/arrownock/exception/ArrownockException;
        }
    .end annotation
.end method

.method public native updateTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMTopicCallback;)V
.end method

.method public native validateSession(Ljava/lang/String;)V
.end method
