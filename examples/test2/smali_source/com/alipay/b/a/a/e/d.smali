.class public final Lcom/alipay/b/a/a/e/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/e/d;

    const v1, 0x6c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/a/a/e/d;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/a/a/e/d;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/a/a/e/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static native declared-synchronized a(Ljava/lang/String;)V
.end method

.method public static native declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native declared-synchronized a(Ljava/lang/Throwable;)V
.end method

.method private static native declared-synchronized a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
