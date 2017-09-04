.class public final Lcom/alipay/sdk/data/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alipay/sdk/data/a;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/sdk/data/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field d:Z

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONObject;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/data/e;

    const v1, 0x96

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/a;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/sdk/data/e;-><init>(Lcom/alipay/sdk/data/a;Lorg/json/JSONObject;B)V

    return-void
.end method

.method private constructor <init>(Lcom/alipay/sdk/data/a;Lorg/json/JSONObject;B)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/sdk/data/e;->b:Ljava/lang/ref/WeakReference;

    iput-boolean v0, p0, Lcom/alipay/sdk/data/e;->c:Z

    iput-boolean v0, p0, Lcom/alipay/sdk/data/e;->d:Z

    iput-object p1, p0, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/e;->e:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/alipay/sdk/data/e;->f:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/data/e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private native a(J)V
.end method

.method private native a(Lcom/alipay/sdk/data/c;)V
.end method

.method private native a(Lorg/json/JSONObject;)V
.end method

.method private native a(Z)V
.end method

.method private native a()Z
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native b(Z)V
.end method

.method private native c()J
.end method

.method private native d()Lcom/alipay/sdk/data/c;
.end method

.method private native e()Z
.end method

.method private native f()Lcom/alipay/sdk/data/a;
.end method


# virtual methods
.method public final native a(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public final native toString()Ljava/lang/String;
.end method
