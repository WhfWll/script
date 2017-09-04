.class public abstract Lcom/lidroid/xutils/bitmap/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultConnectTimeout:I

.field private defaultExpiry:J

.field private defaultReadTimeout:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<*>;)J"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultConnectTimeout()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultConnectTimeout:I

    return v0
.end method

.method public getDefaultExpiry()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultExpiry:J

    return-wide v0
.end method

.method public getDefaultReadTimeout()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultReadTimeout:I

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public setDefaultConnectTimeout(I)V
    .registers 2
    .param p1, "defaultConnectTimeout"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultConnectTimeout:I

    .line 61
    return-void
.end method

.method public setDefaultExpiry(J)V
    .registers 4
    .param p1, "expiry"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultExpiry:J

    .line 49
    return-void
.end method

.method public setDefaultReadTimeout(I)V
    .registers 2
    .param p1, "defaultReadTimeout"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/lidroid/xutils/bitmap/download/Downloader;->defaultReadTimeout:I

    .line 69
    return-void
.end method
