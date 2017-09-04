.class public interface abstract Lcom/arrownock/live/IAnLiveEventListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onError(Ljava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
.end method

.method public abstract onLocalVideoSizeChanged(II)V
.end method

.method public abstract onLocalVideoViewReady(Lcom/arrownock/live/LocalVideoView;)V
.end method

.method public abstract onReceivedInvitation(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract onRemotePartyAudioStateChanged(Ljava/lang/String;Lcom/arrownock/live/AudioState;)V
.end method

.method public abstract onRemotePartyConnected(Ljava/lang/String;)V
.end method

.method public abstract onRemotePartyDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onRemotePartyVideoSizeChanged(Ljava/lang/String;II)V
.end method

.method public abstract onRemotePartyVideoStateChanged(Ljava/lang/String;Lcom/arrownock/live/VideoState;)V
.end method

.method public abstract onRemotePartyVideoViewReady(Ljava/lang/String;Lcom/arrownock/live/VideoView;)V
.end method
