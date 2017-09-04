.class Lcom/worklight/wlclient/InternalRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field request:Lcom/worklight/wlclient/WLRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/InternalRequestSender;

    const v1, 0x4c6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/worklight/wlclient/WLRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/worklight/wlclient/WLRequest;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    .line 114
    return-void
.end method

.method private native addInstanceAuthHeader()V
.end method

.method private native setConnectionTimeout(Lorg/apache/http/client/HttpClient;)V
.end method

.method private native setUserAgentHeader(Lorg/apache/http/client/HttpClient;)V
.end method


# virtual methods
.method public native run()V
.end method
