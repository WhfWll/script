.class public abstract Lcom/arrownock/push/AnPushCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arrownock/push/IAnPushCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMute(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public clearSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setBadge(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setMute(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setScheduledMute(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
    .registers 3

    return-void
.end method

.method public unregister(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
