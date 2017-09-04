.class public final Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/data/a;

    const v1, 0x92

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.alipay.mcpay"

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->e:Ljava/lang/String;

    return-void
.end method

.method private native a()Ljava/lang/String;
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native c(Ljava/lang/String;)V
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native d(Ljava/lang/String;)V
.end method

.method private native e()Ljava/lang/String;
.end method

.method private native e(Ljava/lang/String;)V
.end method

.method private static native f(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public final native toString()Ljava/lang/String;
.end method
