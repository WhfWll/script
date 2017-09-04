.class public final Lcom/alipay/apmobilesecuritysdk/face/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/apmobilesecuritysdk/face/a$b;,
        Lcom/alipay/apmobilesecuritysdk/face/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/face/a;

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/face/a;

    const v1, 0x53

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/face/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/face/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static native a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/a;
.end method

.method private native b()Ljava/lang/String;
.end method

.method private static native c()Ljava/lang/String;
.end method

.method private static native d()Ljava/lang/String;
.end method

.method private static native e()Ljava/lang/String;
.end method


# virtual methods
.method public final native declared-synchronized a()Lcom/alipay/apmobilesecuritysdk/face/a$b;
.end method

.method public final native a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
