.class public Lorg/webrtc/DataChannel$Buffer;
.super Ljava/lang/Object;


# instance fields
.field public final binary:Z

.field public final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "binary"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    iput-boolean p2, p0, Lorg/webrtc/DataChannel$Buffer;->binary:Z

    return-void
.end method
