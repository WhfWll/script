.class public final Lcom/alipay/sdk/data/d;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "virtualImeiAndImsi"

.field private static final e:Ljava/lang/String; = "virtual_imei"

.field private static final f:Ljava/lang/String; = "virtual_imsi"

.field private static g:Lcom/alipay/sdk/data/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/data/d;

    const v1, 0x95

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sdk-and-lite"

    iput-object v0, p0, Lcom/alipay/sdk/data/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static native declared-synchronized a()Lcom/alipay/sdk/data/d;
.end method

.method private static native a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method static native a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method private native a(Lcom/alipay/sdk/tid/b;)Ljava/lang/String;
.end method

.method static native b()Ljava/lang/String;
.end method

.method private static native b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private native c()Ljava/lang/String;
.end method

.method private static native c(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native d()Ljava/lang/String;
.end method

.method private static native e()Ljava/lang/String;
.end method

.method private static native f()Ljava/lang/String;
.end method


# virtual methods
.method public final native declared-synchronized a(Ljava/lang/String;)V
.end method
