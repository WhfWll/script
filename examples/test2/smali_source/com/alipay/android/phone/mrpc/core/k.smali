.class final Lcom/alipay/android/phone/mrpc/core/k;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/k;

    const v1, 0x32

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/i;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/k;->a:Lcom/alipay/android/phone/mrpc/core/i;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final native createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.end method

.method protected final native createHttpContext()Lorg/apache/http/protocol/HttpContext;
.end method

.method protected final native createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
.end method

.method protected final native createRedirectHandler()Lorg/apache/http/client/RedirectHandler;
.end method
