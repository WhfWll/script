.class public Lcom/arrownock/im/callback/AnIMReadACKCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
