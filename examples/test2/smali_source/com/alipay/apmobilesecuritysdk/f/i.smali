.class public final Lcom/alipay/apmobilesecuritysdk/f/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/f/i;

    const v1, 0x52

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/f/i;->f:Ljava/util/Map;

    return-void
.end method

.method public static native declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native declared-synchronized a()V
.end method

.method public static native declared-synchronized a(Lcom/alipay/apmobilesecuritysdk/f/b;)V
.end method

.method public static native declared-synchronized a(Lcom/alipay/apmobilesecuritysdk/f/c;)V
.end method

.method public static native declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public static native declared-synchronized b()Ljava/lang/String;
.end method

.method public static native b(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized c()Ljava/lang/String;
.end method

.method public static native c(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized d()Ljava/lang/String;
.end method

.method public static native d(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized e()Ljava/lang/String;
.end method

.method public static native e(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized f()Ljava/lang/String;
.end method

.method public static native f(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized g()Lcom/alipay/apmobilesecuritysdk/f/c;
.end method

.method public static native h()V
.end method
