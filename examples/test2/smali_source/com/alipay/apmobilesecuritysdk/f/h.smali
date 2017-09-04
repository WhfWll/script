.class public final Lcom/alipay/apmobilesecuritysdk/f/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/f/h;

    const v1, 0x51

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public static native a(Landroid/content/Context;Z)V
.end method

.method public static native b(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public static native b(Landroid/content/Context;)Z
.end method

.method public static native c(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public static native declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
.end method
