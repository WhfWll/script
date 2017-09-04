.class final Lcom/alipay/android/phone/mrpc/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/n;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/e;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/p;

    const v1, 0x36

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/o;Lcom/alipay/android/phone/mrpc/core/e;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/p;->b:Lcom/alipay/android/phone/mrpc/core/o;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/p;->a:Lcom/alipay/android/phone/mrpc/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native a()Ljava/lang/String;
.end method

.method public final native b()Lcom/alipay/android/phone/mrpc/core/f;
.end method

.method public final native c()Lcom/alipay/android/phone/mrpc/core/e;
.end method

.method public final native d()Z
.end method
