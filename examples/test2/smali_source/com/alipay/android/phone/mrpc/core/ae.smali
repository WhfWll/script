.class public final Lcom/alipay/android/phone/mrpc/core/ae;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/android/phone/mrpc/core/n;

.field b:Lcom/alipay/android/phone/mrpc/core/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/ae;

    const v1, 0x28

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/ae;->a:Lcom/alipay/android/phone/mrpc/core/n;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/ag;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/ag;-><init>(Lcom/alipay/android/phone/mrpc/core/ae;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/ae;->b:Lcom/alipay/android/phone/mrpc/core/ag;

    return-void
.end method

.method private native a()Lcom/alipay/android/phone/mrpc/core/n;
.end method

.method private native a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
