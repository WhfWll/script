.class public Lorg/webrtc/MediaStream;
.super Ljava/lang/Object;


# instance fields
.field public final audioTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field final nativeStream:J

.field public final videoTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeStream"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    iput-wide p1, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeAddAudioTrack(JJ)Z
.end method

.method private static native nativeAddVideoTrack(JJ)Z
.end method

.method private static native nativeLabel(J)Ljava/lang/String;
.end method

.method private static native nativeRemoveAudioTrack(JJ)Z
.end method

.method private static native nativeRemoveVideoTrack(JJ)Z
.end method


# virtual methods
.method public addTrack(Lorg/webrtc/AudioTrack;)Z
    .registers 6
    .param p1, "track"    # Lorg/webrtc/AudioTrack;

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddAudioTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public addTrack(Lorg/webrtc/VideoTrack;)Z
    .registers 6
    .param p1, "track"    # Lorg/webrtc/VideoTrack;

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispose()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/AudioTrack;

    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/AudioTrack;)Z

    invoke-virtual {v0}, Lorg/webrtc/AudioTrack;->dispose()V

    goto :goto_0

    :cond_17
    :goto_17
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/VideoTrack;)Z

    invoke-virtual {v0}, Lorg/webrtc/VideoTrack;->dispose()V

    goto :goto_17

    :cond_2e
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStream;->free(J)V

    return-void
.end method

.method public label()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    invoke-static {v0, v1}, Lorg/webrtc/MediaStream;->nativeLabel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeTrack(Lorg/webrtc/AudioTrack;)Z
    .registers 6
    .param p1, "track"    # Lorg/webrtc/AudioTrack;

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeRemoveAudioTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeTrack(Lorg/webrtc/VideoTrack;)Z
    .registers 6
    .param p1, "track"    # Lorg/webrtc/VideoTrack;

    .prologue
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeRemoveVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/webrtc/MediaStream;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
