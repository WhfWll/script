.class public Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_SUPPORTED_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.DiffDevOAuthFactory"

.field public static final VERSION_1:I = 0x1

.field private static v1Instance:Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDiffDevOAuth()Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;->getDiffDevOAuth(I)Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;

    move-result-object v0

    return-object v0
.end method

.method public static getDiffDevOAuth(I)Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "MicroMsg.SDK.DiffDevOAuthFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDiffDevOAuth, version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le p0, v1, :cond_2d

    const-string v1, "MicroMsg.SDK.DiffDevOAuthFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDiffDevOAuth fail, unsupported version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-object v0

    :cond_2d
    packed-switch p0, :pswitch_data_40

    goto :goto_2c

    :pswitch_31
    sget-object v0, Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;

    if-nez v0, :cond_3c

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/diffdev/a/a;-><init>()V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;

    :cond_3c
    sget-object v0, Lcom/tencent/mm/sdk/diffdev/DiffDevOAuthFactory;->v1Instance:Lcom/tencent/mm/sdk/diffdev/IDiffDevOAuth;

    goto :goto_2c

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_31
    .end packed-switch
.end method
