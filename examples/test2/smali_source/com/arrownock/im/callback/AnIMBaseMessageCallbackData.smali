.class public abstract Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;
.super Ljava/lang/Object;


# instance fields
.field private from:Ljava/lang/String;

.field private msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->msgId:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->from:Ljava/lang/String;

    iput-object p1, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->msgId:Ljava/lang/String;

    iput-object p2, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;->msgId:Ljava/lang/String;

    return-object v0
.end method
