.class public final enum Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/DIOpenSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapLocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

.field public static final enum BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

.field public static final enum GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

.field public static final enum SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

.field public static final enum SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const-string v1, "BAIDU"

    invoke-direct {v0, v1, v2}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const-string v1, "SOSO"

    invoke-direct {v0, v1, v3}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const-string v1, "GAODE"

    invoke-direct {v0, v1, v4}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v5}, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->BAIDU:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SOSO:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->GAODE:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->SYSTEM:Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->$VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    return-object v0
.end method

.method public static values()[Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;
    .registers 1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->$VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    invoke-virtual {v0}, [Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;

    return-object v0
.end method
