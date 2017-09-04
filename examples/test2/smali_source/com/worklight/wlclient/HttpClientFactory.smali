.class Lcom/worklight/wlclient/HttpClientFactory;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"


# static fields
.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/HttpClientFactory;

    const v1, 0x4c4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native declared-synchronized getInstance(Lcom/worklight/common/WLConfig;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method static native releaseInstance()V
.end method
