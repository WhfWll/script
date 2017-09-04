.class public final enum Lcom/alipay/sdk/protocol/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/protocol/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/protocol/g;

.field public static final enum b:Lcom/alipay/sdk/protocol/g;

.field public static final enum c:Lcom/alipay/sdk/protocol/g;

.field public static final enum d:Lcom/alipay/sdk/protocol/g;

.field private static final synthetic f:[Lcom/alipay/sdk/protocol/g;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/sdk/protocol/g;

    const-string v1, "SUCCESS"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/g;->a:Lcom/alipay/sdk/protocol/g;

    new-instance v0, Lcom/alipay/sdk/protocol/g;

    const-string v1, "TID_REFRESH"

    const-string v2, "tid_refresh_invalid"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/g;->b:Lcom/alipay/sdk/protocol/g;

    new-instance v0, Lcom/alipay/sdk/protocol/g;

    const-string v1, "POP_TYPE"

    const-string v2, "pop_type"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/g;->c:Lcom/alipay/sdk/protocol/g;

    new-instance v0, Lcom/alipay/sdk/protocol/g;

    const-string v1, "NOT_POP_TYPE"

    const-string v2, "not_pop_type"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/g;->d:Lcom/alipay/sdk/protocol/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/sdk/protocol/g;

    sget-object v1, Lcom/alipay/sdk/protocol/g;->a:Lcom/alipay/sdk/protocol/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/protocol/g;->b:Lcom/alipay/sdk/protocol/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/protocol/g;->c:Lcom/alipay/sdk/protocol/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/sdk/protocol/g;->d:Lcom/alipay/sdk/protocol/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/sdk/protocol/g;->f:[Lcom/alipay/sdk/protocol/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/sdk/protocol/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/g;
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/sdk/protocol/g;->values()[Lcom/alipay/sdk/protocol/g;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v4, :cond_19

    aget-object v0, v3, v2

    iget-object v5, v0, Lcom/alipay/sdk/protocol/g;->e:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :goto_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    :cond_19
    return-object v1

    :cond_1a
    move-object v0, v1

    goto :goto_14
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/protocol/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/g;
    .registers 2

    const-class v0, Lcom/alipay/sdk/protocol/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/g;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/g;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/protocol/g;->f:[Lcom/alipay/sdk/protocol/g;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/g;

    return-object v0
.end method
