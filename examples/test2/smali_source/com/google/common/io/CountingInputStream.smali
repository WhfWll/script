.class public final Lcom/google/common/io/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private count:J

.field private mark:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/io/CountingInputStream;

    const v1, 0x373

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/CountingInputStream;->mark:J

    .line 44
    return-void
.end method


# virtual methods
.method public native getCount()J
.end method

.method public native mark(I)V
.end method

.method public native read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native skip(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
