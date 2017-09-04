.class public Lcom/alipay/sdk/protocol/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alipay/sdk/data/e;

.field public b:Lcom/alipay/sdk/data/f;

.field public c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/protocol/c;

    const v1, 0xa3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/protocol/c;->a:Lcom/alipay/sdk/data/e;

    iput-object p2, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/data/f;

    return-void
.end method

.method private native a()Lcom/alipay/sdk/data/e;
.end method

.method private native b()Lcom/alipay/sdk/data/f;
.end method

.method private native c()Lorg/json/JSONObject;
.end method


# virtual methods
.method public native a(Lorg/json/JSONObject;)V
.end method
