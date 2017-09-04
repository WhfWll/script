.class public final Lcom/alipay/apmobilesecuritysdk/f/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/f/c;

    const v1, 0x4c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->e:Ljava/lang/String;

    return-void
.end method

.method private native a()Ljava/lang/String;
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native d()Ljava/lang/String;
.end method

.method private native e()Ljava/lang/String;
.end method
