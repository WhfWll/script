.class Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;
.super Ljava/lang/Object;


# instance fields
.field private final index:I

.field private final offset:I

.field private final presentationTimestampUs:J

.field private final size:I


# direct methods
.method public constructor <init>(IIIJ)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimestampUs"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;->index:I

    iput p2, p0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;->offset:I

    iput p3, p0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;->size:I

    iput-wide p4, p0, Lorg/webrtc/MediaCodecVideoDecoder$DecoderOutputBufferInfo;->presentationTimestampUs:J

    return-void
.end method
