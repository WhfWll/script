.class public Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;
.super Ljava/lang/Object;
.source "DownLoadUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownLoadUtil"


# instance fields
.field private realSize:I

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;

    const v1, 0x12a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;->totalSize:I

    .line 13
    iput v0, p0, Lcom/bontai/mobiads/ads/tour/download/DownLoadUtil;->realSize:I

    .line 11
    return-void
.end method


# virtual methods
.method public native downloadUpdateFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/bontai/mobiads/ads/tour/download/DownloadFileCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getRealSize()I
.end method

.method public native getTotalSize()I
.end method
