.class public final Lcom/alipay/apmobilesecuritysdk/e/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/e/a;

    const v1, 0x49

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/e/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/apmobilesecuritysdk/e/a;->b:Z

    return-void
.end method

.method public static native a()Ljava/lang/String;
.end method

.method public static native b()Ljava/lang/String;
.end method
