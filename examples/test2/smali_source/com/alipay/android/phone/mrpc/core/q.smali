.class public final Lcom/alipay/android/phone/mrpc/core/q;
.super Lcom/alipay/android/phone/mrpc/core/d;


# instance fields
.field private g:Lcom/alipay/android/phone/mrpc/core/n;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/q;

    const v1, 0x37

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/n;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    .registers 14

    const-string v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/mrpc/core/d;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/q;->g:Lcom/alipay/android/phone/mrpc/core/n;

    return-void
.end method


# virtual methods
.method public final native a()Ljava/lang/Object;
.end method
