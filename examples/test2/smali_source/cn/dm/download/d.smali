.class public Lcn/dm/download/d;
.super Ljava/lang/Object;
.source "DownloadStorageManager.java"


# static fields
.field private static j:Lcn/dm/download/util/b;


# instance fields
.field private n:Lcn/dm/download/listener/a;

.field private o:Lcn/dm/download/bean/DownloadAppInfo;

.field private w:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/d;->j:Lcn/dm/download/util/b;

    return-void
.end method

.method public constructor <init>(Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/listener/a;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x200000

    iput v0, p0, Lcn/dm/download/d;->w:I

    .line 21
    iput-object p1, p0, Lcn/dm/download/d;->o:Lcn/dm/download/bean/DownloadAppInfo;

    .line 28
    iput-object p2, p0, Lcn/dm/download/d;->n:Lcn/dm/download/listener/a;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    sget v2, Lcn/dm/download/util/Constants;->DownloadUrlWrong:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_13

    .line 43
    sget-object v1, Lcn/dm/download/d;->j:Lcn/dm/download/util/b;

    .line 44
    iget-object v1, p0, Lcn/dm/download/d;->n:Lcn/dm/download/listener/a;

    iget-object v2, p0, Lcn/dm/download/d;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v1, v2}, Lcn/dm/download/listener/a;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 107
    :goto_12
    return v0

    .line 48
    :cond_13
    invoke-static {}, Lcn/dm/download/util/c;->s()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 49
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 53
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 54
    mul-long/2addr v2, v4

    .line 56
    iget v0, p0, Lcn/dm/download/d;->w:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    cmp-long v0, v2, v4

    if-lez v0, :cond_3e

    .line 58
    invoke-static {p3}, Lcn/dm/download/util/c;->t(Ljava/lang/String;)Z

    :goto_3c
    move v0, v1

    .line 107
    goto :goto_12

    .line 63
    :cond_3e
    sget-object v0, Lcn/dm/download/d;->j:Lcn/dm/download/util/b;

    .line 64
    iget-object v0, p0, Lcn/dm/download/d;->n:Lcn/dm/download/listener/a;

    iget-object v2, p0, Lcn/dm/download/d;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v2}, Lcn/dm/download/listener/a;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_3c

    .line 69
    :cond_48
    sget-object v2, Lcn/dm/download/d;->j:Lcn/dm/download/util/b;

    .line 70
    iget-object v2, p0, Lcn/dm/download/d;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v2, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setErrorFlag(I)V

    .line 71
    iget-object v1, p0, Lcn/dm/download/d;->n:Lcn/dm/download/listener/a;

    iget-object v2, p0, Lcn/dm/download/d;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v1, v2}, Lcn/dm/download/listener/a;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_12
.end method
