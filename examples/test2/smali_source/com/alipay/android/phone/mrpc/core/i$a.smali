.class final Lcom/alipay/android/phone/mrpc/core/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/i$a;

    const v1, 0x2f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/alipay/android/phone/mrpc/core/i;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i$a;->a:Lcom/alipay/android/phone/mrpc/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mrpc/core/i;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/i$a;-><init>(Lcom/alipay/android/phone/mrpc/core/i;)V

    return-void
.end method


# virtual methods
.method public final native process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
.end method
