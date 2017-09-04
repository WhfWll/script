.class final Lcom/alipay/android/phone/mrpc/core/l;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;


# instance fields
.field a:I

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/l;

    const v1, 0x33

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/k;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/k;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final native isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
.end method
