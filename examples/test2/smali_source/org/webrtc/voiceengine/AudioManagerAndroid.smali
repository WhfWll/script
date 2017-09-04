.class Lorg/webrtc/voiceengine/AudioManagerAndroid;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44


# instance fields
.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const v1, 0xac44

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    const/16 v1, 0x100

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_36

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    :cond_28
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    :cond_36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return-void
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .registers 2

    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return v0
.end method

.method private getNativeOutputSampleRate()I
    .registers 2

    iget v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return v0
.end method

.method private isAudioLowLatencySupported()Z
    .registers 2

    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return v0
.end method
