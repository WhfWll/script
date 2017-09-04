.class public final Lcom/alipay/apmobilesecuritysdk/f/f;
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

    const-class v0, Lcom/alipay/apmobilesecuritysdk/f/f;

    const v1, 0x4f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->e:Ljava/lang/String;

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
