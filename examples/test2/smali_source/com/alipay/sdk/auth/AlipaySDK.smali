.class public Lcom/alipay/sdk/auth/AlipaySDK;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/auth/AlipaySDK;

    const v1, 0x81

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native auth(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.end method
