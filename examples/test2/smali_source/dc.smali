.class public final Ldc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arrownock/push/IAnPushRegisterAnIdCallback;


# instance fields
.field private synthetic a:Lcom/arrownock/push/AnPush;


# direct methods
.method public constructor <init>(Lcom/arrownock/push/AnPush;)V
    .registers 2

    iput-object p1, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/arrownock/exception/ArrownockException;ILjava/lang/String;)V
    .registers 11
    .param p2, "count"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    if-lt p2, v0, :cond_2d

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Lcom/arrownock/push/AnPush;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerInEnable failed. reason: over limit"

    invoke-virtual {v0, v1, v2}, Lbk;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-virtual {v0}, Lcom/arrownock/push/AnPush;->getCallback()Lcom/arrownock/push/IAnPushCallback;

    move-result-object v0

    sget-object v1, Lcom/arrownock/push/AnPushStatus;->DISABLE:Lcom/arrownock/push/AnPushStatus;

    new-instance v2, Lcom/arrownock/exception/ArrownockException;

    const-string v3, "registerInEnable failed."

    const/16 v4, 0x7d3

    invoke-direct {v2, v3, v4}, Lcom/arrownock/exception/ArrownockException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-static {v0}, Lcom/arrownock/push/AnPush;->a(Lcom/arrownock/push/AnPush;)Ldy;

    move-result-object v0

    iget-object v1, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-static {v1}, Lcom/arrownock/push/AnPush;->a(Lcom/arrownock/push/AnPush;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-static {v2}, Lcom/arrownock/push/AnPush;->a(Lcom/arrownock/push/AnPush;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    iget-object v3, p0, Ldc;->a:Lcom/arrownock/push/AnPush;

    invoke-static {v3}, Lcom/arrownock/push/AnPush;->b(Lcom/arrownock/push/AnPush;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p3

    move v4, p2

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Ldy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arrownock/push/IAnPushRegisterAnIdCallback;)V

    goto :goto_2c
.end method

.method public final onSuccess()V
    .registers 4

    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Lcom/arrownock/push/AnPush;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerInEnable successful in android-gcm"

    invoke-virtual {v0, v1, v2}, Lbk;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
