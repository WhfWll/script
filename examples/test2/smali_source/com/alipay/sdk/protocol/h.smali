.class public final Lcom/alipay/sdk/protocol/h;
.super Lcom/alipay/sdk/protocol/i;


# instance fields
.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/protocol/h;

    const v1, 0xa6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/protocol/i;-><init>(Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/data/f;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/h;->m:Z

    return-void
.end method

.method private native d()Z
.end method


# virtual methods
.method public final native a(Lorg/json/JSONObject;)V
.end method

.method public final native a()Z
.end method

.method public final native b()I
.end method

.method public final native c()Ljava/lang/String;
.end method
