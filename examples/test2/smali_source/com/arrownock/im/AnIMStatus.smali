.class public final enum Lcom/arrownock/im/AnIMStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/arrownock/im/AnIMStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arrownock/im/AnIMStatus;

.field public static final enum OFFLINE:Lcom/arrownock/im/AnIMStatus;

.field public static final enum ONLINE:Lcom/arrownock/im/AnIMStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/arrownock/im/AnIMStatus;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/AnIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/im/AnIMStatus;->ONLINE:Lcom/arrownock/im/AnIMStatus;

    new-instance v0, Lcom/arrownock/im/AnIMStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/arrownock/im/AnIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/im/AnIMStatus;->OFFLINE:Lcom/arrownock/im/AnIMStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/arrownock/im/AnIMStatus;

    sget-object v1, Lcom/arrownock/im/AnIMStatus;->ONLINE:Lcom/arrownock/im/AnIMStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/arrownock/im/AnIMStatus;->OFFLINE:Lcom/arrownock/im/AnIMStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/arrownock/im/AnIMStatus;->$VALUES:[Lcom/arrownock/im/AnIMStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/arrownock/im/AnIMStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/arrownock/im/AnIMStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/arrownock/im/AnIMStatus;

    return-object v0
.end method

.method public static values()[Lcom/arrownock/im/AnIMStatus;
    .registers 1

    sget-object v0, Lcom/arrownock/im/AnIMStatus;->$VALUES:[Lcom/arrownock/im/AnIMStatus;

    invoke-virtual {v0}, [Lcom/arrownock/im/AnIMStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arrownock/im/AnIMStatus;

    return-object v0
.end method
