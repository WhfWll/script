.class public final enum Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/DIOpenSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TicketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

.field public static final enum LONGTIME:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

.field public static final enum SINGLE:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v3, v2}, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->SINGLE:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    new-instance v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    const-string v1, "LONGTIME"

    const-string v2, "longtime"

    invoke-direct {v0, v1, v4, v2}, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->LONGTIME:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->SINGLE:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->LONGTIME:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->$VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    return-object v0
.end method

.method public static values()[Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;
    .registers 1

    sget-object v0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->$VALUES:[Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    invoke-virtual {v0}, [Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;->a:Ljava/lang/String;

    return-object v0
.end method
