.class public Lcom/worklight/wlclient/api/WLClient;
.super Ljava/lang/Object;
.source "WLClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;,
        Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;,
        Lcom/worklight/wlclient/api/WLClient$LogActivityListener;,
        Lcom/worklight/wlclient/api/WLClient$InitRequestListener;,
        Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;
    }
.end annotation


# static fields
.field private static final ANTI_XSRF_REALM:Ljava/lang/String; = "wl_antiXSRFRealm"

.field private static final AUTHENTICATE_REQUEST_PATH:Ljava/lang/String; = "authenticate"

.field private static final AUTHENTICITY_REALM:Ljava/lang/String; = "wl_authenticityRealm"

.field private static final CHALLENGE_HANDLER_NULL_ERROR:Ljava/lang/String; = "Cannot register \'null\' challenge handler"

.field private static final HEART_BEAT_ERROR:Ljava/lang/String; = "WLClient not initialized - cannot send heart beat message before connect"

.field private static final HEART_BEAT_REQUEST_PATH:Ljava/lang/String; = "heartbeat"

.field private static final INIT_REQUEST_PATH:Ljava/lang/String; = "init"

.field private static final INVOKE_PROCEDURE_INIT_ERROR:Ljava/lang/String; = "invokeProcedure() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

.field private static final INVOKE_PROCEDURE_REQUEST_PATH:Ljava/lang/String; = "query"

.field private static final INVOKE_PROCEDURE_RUN_ERROR:Ljava/lang/String; = "Error during invocation of remote procedure, because responseListener parameter can\'t be null."

.field private static final LOG_ACTIVITY_INIT_ERROR:Ljava/lang/String; = "logActivity() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

.field private static final LOG_ACTIVITY_REQUEST_PATH:Ljava/lang/String; = "logactivity"

.field private static final NO_PROVISIONING_REALM:Ljava/lang/String; = "wl_deviceNoProvisioningRealm"

.field private static final NO_REALM_REGISTER_ERROR:Ljava/lang/String; = "Application will exit because the challengeHandler parameter for registerChallengeHandler (challengeHandler) has a null realm property. Call this API with a valid reference to challenge handler."

.field private static final REMOTE_DISABLE_REALM:Ljava/lang/String; = "wl_remoteDisableRealm"

.field private static final REQ_PATH_DELETE_USER_PREF:Ljava/lang/String; = "deleteup"

.field private static final REQ_PATH_SET_USER_PREFS:Ljava/lang/String; = "setup"

.field private static final SEND_INVOKE_PROCEDURE_REQUEST_PATH:Ljava/lang/String; = "invoke"

.field private static wlClient:Lcom/worklight/wlclient/api/WLClient;


# instance fields
.field private chMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private globalHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private heartbeatInterval:I

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isInitialized:Z

.field private timer:Ljava/util/Timer;

.field private userPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wlPush:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLClient;

    const v1, 0x4cf

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x1a4

    iput v0, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->wlPush:Lcom/worklight/wlclient/api/WLPush;

    .line 119
    new-instance v0, Lcom/worklight/common/WLConfig;

    invoke-direct {v0, p1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    .line 120
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 121
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    .line 124
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->chMap:Ljava/util/Hashtable;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->globalHeaders:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->userPreferenceMap:Ljava/util/HashMap;

    .line 130
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLClient;->registerDefaultChallengeHandlers()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/api/WLClient;)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLClient;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    return v0
.end method

.method static synthetic access$100(Lcom/worklight/wlclient/api/WLClient;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLClient;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->userPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static native createInstance(Landroid/content/Context;)Lcom/worklight/wlclient/api/WLClient;
.end method

.method public static native getInstance()Lcom/worklight/wlclient/api/WLClient;
.end method

.method private native getWLServerURL()Ljava/lang/String;
.end method

.method public static native isApplicationSentToBackground(Landroid/content/Context;)Z
.end method

.method private native registerDefaultChallengeHandlers()V
.end method

.method private static native releaseInstance()V
.end method

.method private native updateCookiesFromWebView()Z
.end method


# virtual methods
.method public native GetHttpContext()Lorg/apache/http/protocol/HttpContext;
.end method

.method public native addGlobalHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native addGlobalHeadersToRequest(Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method public native checkForNotifications()V
.end method

.method public native connect(Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native getChallengeHandler(Lcom/worklight/wlclient/api/WLResponse;)Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
.end method

.method public native getConfig()Lcom/worklight/common/WLConfig;
.end method

.method public native getContext()Landroid/content/Context;
.end method

.method public native getPush()Lcom/worklight/wlclient/api/WLPush;
.end method

.method public native getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.end method

.method public native init(Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native invokeProcedure(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native invokeProcedure(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V
.end method

.method public native logActivity(Ljava/lang/String;)V
.end method

.method public native registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V
.end method

.method public native removeGlobalHeader(Ljava/lang/String;)V
.end method

.method native sendHeartBeat()V
.end method

.method public native sendInvoke(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V
.end method

.method public native setHeartBeatInterval(I)V
.end method

.method protected native setInitialized(Z)V
.end method
