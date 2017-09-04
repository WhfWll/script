.class public Lcom/worklight/wlclient/WLRequest;
.super Ljava/lang/Object;
.source "WLRequest.java"


# static fields
.field private static final ACCESS_DENIED_ID:Ljava/lang/String; = "WLClient.accessDenied"

.field private static final AUTH_FAIL_ID:Ljava/lang/String; = "WLClient.authFailure"

.field private static final CLOSE_BUTTON_ID:Ljava/lang/String; = "WLClient.close"

.field private static final ERROR_ID:Ljava/lang/String; = "WLClient.error"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# instance fields
.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private postRequest:Lorg/apache/http/client/methods/HttpPost;

.field private requestListener:Lcom/worklight/wlclient/WLRequestListener;

.field private requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

.field private requestURL:Ljava/lang/String;

.field private wlAnswers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/WLRequest;

    const v1, 0x4c8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V
    .registers 7
    .param p1, "wlRequestListener"    # Lcom/worklight/wlclient/WLRequestListener;
    .param p2, "httpContext"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "wlRequestData"    # Lcom/worklight/wlclient/api/WLRequestOptions;
    .param p4, "wlConfig"    # Lcom/worklight/common/WLConfig;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Lcom/worklight/wlclient/WLRequest;->requestListener:Lcom/worklight/wlclient/WLRequestListener;

    .line 76
    iput-object p2, p0, Lcom/worklight/wlclient/WLRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 77
    iput-object p3, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 78
    iput-object p4, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    .line 79
    iput-object p5, p0, Lcom/worklight/wlclient/WLRequest;->context:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private native addExpectedAnswers(Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method private native addExtraHeaders(Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method private native addHeaders(Lcom/worklight/common/WLConfig;Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method private native addParams(Lcom/worklight/wlclient/api/WLRequestOptions;Lorg/apache/http/client/methods/HttpPost;)V
.end method

.method private native checkResponseForChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z
.end method

.method private native checkResponseForSuccesses(Lcom/worklight/wlclient/api/WLResponse;)V
.end method

.method private native handleCustomChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z
.end method

.method private native isWl401(Lcom/worklight/wlclient/api/WLResponse;)Z
.end method

.method private native isWl403(Lcom/worklight/wlclient/api/WLResponse;)Z
.end method

.method private native processFailureResponse(Lcom/worklight/wlclient/api/WLResponse;)V
.end method

.method private native processSuccessResponse(Lcom/worklight/wlclient/api/WLResponse;)V
.end method

.method private native resendIfNeeded()V
.end method

.method private native resendRequest()V
.end method

.method private native sendRequest(Ljava/lang/String;)V
.end method

.method private native setExpectedAnswers(Ljava/util/List;)V
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

.method private native showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native triggerUnexpectedOnFailure(Ljava/lang/Exception;)V
.end method


# virtual methods
.method public native getConfig()Lcom/worklight/common/WLConfig;
.end method

.method public native getContext()Landroid/content/Context;
.end method

.method public native getHttpContext()Lorg/apache/http/protocol/HttpContext;
.end method

.method public native getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;
.end method

.method public native getPostRequest()Lorg/apache/http/client/methods/HttpPost;
.end method

.method public native getRequestListener()Lcom/worklight/wlclient/WLRequestListener;
.end method

.method public native makeRequest(Ljava/lang/String;)V
.end method

.method public native makeRequest(Ljava/lang/String;Z)V
.end method

.method public native removeExpectedAnswer(Ljava/lang/String;)V
.end method

.method public native requestFinished(Lcom/worklight/wlclient/api/WLResponse;)V
.end method

.method public native submitAnswer(Ljava/lang/String;Ljava/lang/Object;)V
.end method
