.class public final Lcom/alipay/android/phone/mrpc/core/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/z;

    const v1, 0x40

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/z;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static final native a(Landroid/content/Context;)Z
.end method
