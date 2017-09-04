.class public final Lcom/alipay/android/phone/mrpc/core/a/d;
.super Lcom/alipay/android/phone/mrpc/core/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/a/d;

    const v1, 0x24

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/a/a;-><init>(Ljava/lang/reflect/Type;[B)V

    return-void
.end method


# virtual methods
.method public final native a()Ljava/lang/Object;
.end method
