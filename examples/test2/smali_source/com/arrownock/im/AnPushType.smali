.class public final enum Lcom/arrownock/im/AnPushType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/arrownock/im/AnPushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arrownock/im/AnPushType;

.field public static final enum AnPushTypeAndroid:Lcom/arrownock/im/AnPushType;

.field public static final enum AnPushTypeWP8:Lcom/arrownock/im/AnPushType;

.field public static final enum AnPushTypeiOS:Lcom/arrownock/im/AnPushType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/arrownock/im/AnPushType;

    const-string v1, "AnPushTypeiOS"

    invoke-direct {v0, v1, v2}, Lcom/arrownock/im/AnPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/im/AnPushType;->AnPushTypeiOS:Lcom/arrownock/im/AnPushType;

    new-instance v0, Lcom/arrownock/im/AnPushType;

    const-string v1, "AnPushTypeAndroid"

    invoke-direct {v0, v1, v3}, Lcom/arrownock/im/AnPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/im/AnPushType;->AnPushTypeAndroid:Lcom/arrownock/im/AnPushType;

    new-instance v0, Lcom/arrownock/im/AnPushType;

    const-string v1, "AnPushTypeWP8"

    invoke-direct {v0, v1, v4}, Lcom/arrownock/im/AnPushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/im/AnPushType;->AnPushTypeWP8:Lcom/arrownock/im/AnPushType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/arrownock/im/AnPushType;

    sget-object v1, Lcom/arrownock/im/AnPushType;->AnPushTypeiOS:Lcom/arrownock/im/AnPushType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/arrownock/im/AnPushType;->AnPushTypeAndroid:Lcom/arrownock/im/AnPushType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/arrownock/im/AnPushType;->AnPushTypeWP8:Lcom/arrownock/im/AnPushType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/arrownock/im/AnPushType;->$VALUES:[Lcom/arrownock/im/AnPushType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/arrownock/im/AnPushType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/arrownock/im/AnPushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/arrownock/im/AnPushType;

    return-object v0
.end method

.method public static values()[Lcom/arrownock/im/AnPushType;
    .registers 1

    sget-object v0, Lcom/arrownock/im/AnPushType;->$VALUES:[Lcom/arrownock/im/AnPushType;

    invoke-virtual {v0}, [Lcom/arrownock/im/AnPushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arrownock/im/AnPushType;

    return-object v0
.end method
