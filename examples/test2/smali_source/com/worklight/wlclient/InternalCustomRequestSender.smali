.class Lcom/worklight/wlclient/InternalCustomRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field listener:Lcom/worklight/wlclient/api/WLResponseListener;

.field requestTimeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/InternalCustomRequestSender;

    const v1, 0x4c5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V
    .registers 4
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "requestTimeoutInMilliseconds"    # I
    .param p3, "listener"    # Lcom/worklight/wlclient/api/WLResponseListener;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 200
    iput p2, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->requestTimeoutInMilliseconds:I

    .line 201
    iput-object p3, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    .line 202
    return-void
.end method


# virtual methods
.method public native run()V
.end method
