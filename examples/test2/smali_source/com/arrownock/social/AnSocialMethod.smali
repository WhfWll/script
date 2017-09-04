.class public final enum Lcom/arrownock/social/AnSocialMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/arrownock/social/AnSocialMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/arrownock/social/AnSocialMethod;

.field public static final enum POST:Lcom/arrownock/social/AnSocialMethod;

.field private static final synthetic a:[Lcom/arrownock/social/AnSocialMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/arrownock/social/AnSocialMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/arrownock/social/AnSocialMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/social/AnSocialMethod;->GET:Lcom/arrownock/social/AnSocialMethod;

    new-instance v0, Lcom/arrownock/social/AnSocialMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/arrownock/social/AnSocialMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/arrownock/social/AnSocialMethod;->POST:Lcom/arrownock/social/AnSocialMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/arrownock/social/AnSocialMethod;

    sget-object v1, Lcom/arrownock/social/AnSocialMethod;->GET:Lcom/arrownock/social/AnSocialMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/arrownock/social/AnSocialMethod;->POST:Lcom/arrownock/social/AnSocialMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/arrownock/social/AnSocialMethod;->a:[Lcom/arrownock/social/AnSocialMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/arrownock/social/AnSocialMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/arrownock/social/AnSocialMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/arrownock/social/AnSocialMethod;

    return-object v0
.end method

.method public static values()[Lcom/arrownock/social/AnSocialMethod;
    .registers 1

    sget-object v0, Lcom/arrownock/social/AnSocialMethod;->a:[Lcom/arrownock/social/AnSocialMethod;

    invoke-virtual {v0}, [Lcom/arrownock/social/AnSocialMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/arrownock/social/AnSocialMethod;

    return-object v0
.end method
