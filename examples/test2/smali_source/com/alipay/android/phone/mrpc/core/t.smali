.class final Lcom/alipay/android/phone/mrpc/core/t;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/ab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/x;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/t;

    const v1, 0x3a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/s;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/x;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/t;->b:Lcom/alipay/android/phone/mrpc/core/s;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/t;->a:Lcom/alipay/android/phone/mrpc/core/x;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final native done()V
.end method
