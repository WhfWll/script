.class public interface abstract Lcom/arrownock/im/callback/IAnIMHistoryCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onError(Lcom/arrownock/exception/ArrownockException;)V
.end method

.method public abstract onSuccess(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/arrownock/im/AnIMMessage;",
            ">;I)V"
        }
    .end annotation
.end method
