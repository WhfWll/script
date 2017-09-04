.class Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;


# instance fields
.field private _aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private _audioRecord:Landroid/media/AudioRecord;

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doRecInit:Z

.field private _isRecording:Z

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _tempBufRec:[B

.field private _useBuiltInAEC:Z

.field final logTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/16 v2, 0x3c0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    iput v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    iput-object v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_useBuiltInAEC:Z

    const-string v0, "WebRtcAudioRecord-Java"

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->logTag:Ljava/lang/String;

    const/16 v0, 0x3c0

    :try_start_21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_27} :catch_2c

    :goto_27
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public static BuiltInAECIsAvailable()Z
    .registers 1

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->runningOnJellyBeanOrHigher()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    goto :goto_7
.end method

.method private DoLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "WebRtcAudioRecord-Java"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "WebRtcAudioRecord-Java"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private EnableBuiltInAEC(Z)I
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnableBuiltInAEC("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->runningOnJellyBeanOrHigher()Z

    move-result v1

    if-nez v1, :cond_20

    :goto_1f
    return v0

    :cond_20
    iput-boolean p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_useBuiltInAEC:Z

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "AcousticEchoCanceler.setEnabled failed"

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V

    goto :goto_1f

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AcousticEchoCanceler.getEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    :cond_4c
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private InitRecording(II)I
    .registers 10
    .param p2, "sampleRate"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v2, 0x2

    const/4 v6, -0x1

    const-string v0, "InitRecording"

    const-string v1, "WebRtcAudioRecord-Java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    shl-int/lit8 v5, v0, 0x1

    div-int/lit16 v0, p2, 0xc8

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    iput-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    :cond_21
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    :cond_2c
    :try_start_2c
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_43

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    move v0, v6

    :goto_42
    return v0

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    move v0, v6

    goto :goto_42

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AcousticEchoCanceler.isAvailable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->BuiltInAECIsAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->BuiltInAECIsAvailable()Z

    move-result v0

    if-nez v0, :cond_6c

    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto :goto_42

    :cond_6c
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v0, :cond_83

    const-string v0, "AcousticEchoCanceler.create failed"

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V

    move v0, v6

    goto :goto_42

    :cond_83
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    iget-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_useBuiltInAEC:Z

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "AcousticEchoCanceler.setEnabled failed"

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V

    move v0, v6

    goto :goto_42

    :cond_94
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AcousticEchoCanceler name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", implementor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AcousticEchoCanceler.getEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto/16 :goto_42
.end method

.method private RecordAudio(I)I
    .registers 5
    .param p1, "lengthInBytes"    # I

    .prologue
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_53
    .catchall {:try_start_5 .. :try_end_7} :catchall_78

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x2

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_53
    .catchall {:try_start_10 .. :try_end_12} :catchall_78

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/16 v0, -0x13

    :try_start_17
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_3b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_78

    :goto_1a
    const/4 v0, 0x0

    :try_start_1b
    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    :cond_1d
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_32} :catch_53
    .catchall {:try_start_1b .. :try_end_32} :catchall_78

    if-eq v0, p1, :cond_72

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_f

    :catch_3b
    move-exception v0

    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set rec thread priority failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_52} :catch_53
    .catchall {:try_start_3c .. :try_end_52} :catchall_78

    goto :goto_1a

    :catch_53
    move-exception v0

    :try_start_54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecordAudio try failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_78

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_6f
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto :goto_f

    :cond_72
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6f

    :catchall_78
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private StartRecording()I
    .registers 3

    const-string v0, "StartRecording"

    const-string v1, "WebRtcAudioRecord-Java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_c} :catch_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    const/4 v0, 0x0

    :goto_10
    return v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_10
.end method

.method private StopRecording()I
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v1, "StopRecording"

    const-string v2, "WebRtcAudioRecord-Java"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_e
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_47

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    :try_start_17
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1c} :catch_3a
    .catchall {:try_start_17 .. :try_end_1c} :catchall_47

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_aec:Landroid/media/audiofx/AcousticEchoCanceler;

    :cond_28
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_47

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    :goto_39
    return v0

    :catch_3a
    move-exception v0

    :try_start_3b
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    goto :goto_39

    :catchall_47
    move-exception v0

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static runningOnJellyBeanOrHigher()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
