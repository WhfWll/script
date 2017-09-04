.class public Lcn/dm/download/DownLoadManager;
.super Ljava/lang/Object;
.source "DownLoadManager.java"

# interfaces
.implements Lcn/dm/download/listener/DownloadHelperListener;


# static fields
.field private static c:Lcn/dm/download/DownLoadManager;


# instance fields
.field private a:Lcn/dm/download/h;

.field private b:Lcn/dm/download/g;

.field private d:Lcn/dm/download/f;

.field private e:Lcn/dm/download/listener/DownloadReportListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/dm/download/DownLoadManager;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/h;->a(Landroid/content/Context;)Lcn/dm/download/h;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    .line 30
    new-instance v0, Lcn/dm/download/f;

    invoke-direct {v0, p1, p0}, Lcn/dm/download/f;-><init>(Landroid/content/Context;Lcn/dm/download/listener/DownloadHelperListener;)V

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/dm/download/DownLoadManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcn/dm/download/DownLoadManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcn/dm/download/DownLoadManager;->c:Lcn/dm/download/DownLoadManager;

    if-nez v0, :cond_e

    .line 35
    new-instance v0, Lcn/dm/download/DownLoadManager;

    invoke-direct {v0, p0}, Lcn/dm/download/DownLoadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/dm/download/DownLoadManager;->c:Lcn/dm/download/DownLoadManager;

    .line 37
    :cond_e
    sget-object v0, Lcn/dm/download/DownLoadManager;->c:Lcn/dm/download/DownLoadManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 5
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p2, "listenerName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/dm/download/listener/DownloadHelperListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dm/download/h;->addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 145
    return-void
.end method

.method public checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1}, Lcn/dm/download/f;->checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearTask()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0}, Lcn/dm/download/h;->clearTask()V

    .line 155
    return-void
.end method

.method public excuteCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 2
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcn/dm/download/DownLoadManager;->excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 104
    return-void
.end method

.method public excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 110
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1}, Lcn/dm/download/f;->excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 111
    return-void
.end method

.method public excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onDownloadWaitingReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 61
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1}, Lcn/dm/download/f;->excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 62
    return-void
.end method

.method public excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 121
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1, p2}, Lcn/dm/download/f;->excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 122
    return-void
.end method

.method public excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 139
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {p1, p2}, Lcn/dm/download/f;->excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 140
    return-void
.end method

.method public excutePause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {p1}, Lcn/dm/download/f;->excutePause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 72
    return-void
.end method

.method public excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 76
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1}, Lcn/dm/download/f;->excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 77
    return-void
.end method

.method public excuteUninstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 130
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {p1, p2}, Lcn/dm/download/f;->excuteUninstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 131
    return-void
.end method

.method public excuteUpdate(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0, p1}, Lcn/dm/download/f;->excuteUpdate(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 67
    return-void
.end method

.method public existTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p2, "listenerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v1, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v1

    .line 172
    if-nez v1, :cond_a

    .line 178
    :cond_9
    :goto_9
    return v0

    .line 175
    :cond_a
    invoke-virtual {v1, p2}, Lcn/dm/download/g;->e(Ljava/lang/String;)Lcn/dm/download/listener/DownloadHelperListener;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 178
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public finishDownloadTool()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0}, Lcn/dm/download/f;->finishDownloadTool()V

    .line 219
    return-void
.end method

.method public getDownloadStatus(Lcn/dm/download/bean/DownloadAppInfo;)I
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadingCount()I
    .registers 4

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0}, Lcn/dm/download/DownLoadManager;->initAllDownloadAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_12
    :pswitch_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    .line 211
    :cond_19
    return v0

    .line 199
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 200
    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 200
    nop

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public getInnerDownloadManager()Lcn/dm/download/f;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    return-object v0
.end method

.method public initAllDownloadAppInfoList()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-virtual {v0}, Lcn/dm/download/f;->initAllDownloadAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 268
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 269
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 270
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 272
    :cond_11
    return-void
.end method

.method public onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onDownloadFailedReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 304
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 305
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_16

    .line 306
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 308
    :cond_16
    return-void
.end method

.method public onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 260
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 261
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 262
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 264
    :cond_11
    return-void
.end method

.method public onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 276
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 277
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 278
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 280
    :cond_11
    return-void
.end method

.method public onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 232
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onDownloadStartReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 233
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 234
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_16

    .line 235
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 237
    :cond_16
    return-void
.end method

.method public onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 249
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onDownloadSuccessReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 250
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 251
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_16

    .line 252
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 254
    :cond_16
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcn/dm/download/DownLoadManager;->excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 256
    return-void
.end method

.method public onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 241
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 242
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 243
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 245
    :cond_11
    return-void
.end method

.method public onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 284
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onInstallSuccessReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 285
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 286
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_16

    .line 287
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 289
    :cond_16
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadReportListener;->onAutoRunReport(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 290
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcn/dm/download/DownLoadManager;->excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 291
    return-void
.end method

.method public onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 224
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 225
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 226
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 228
    :cond_11
    return-void
.end method

.method public onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 295
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    .line 296
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    if-eqz v0, :cond_11

    .line 297
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p1}, Lcn/dm/download/g;->onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 299
    :cond_11
    return-void
.end method

.method public pauseAllDownloadThread()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {}, Lcn/dm/download/f;->pauseAllDownloadThread()V

    .line 82
    return-void
.end method

.method public removeListener(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p2, "listenerName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Lcn/dm/download/g;->d(Ljava/lang/String;)V

    .line 160
    :cond_b
    return-void
.end method

.method public removeTask(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 149
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->a:Lcn/dm/download/h;

    invoke-virtual {v0, p1}, Lcn/dm/download/h;->removeTask(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 150
    return-void
.end method

.method public setDownloadReportListener(Lcn/dm/download/listener/DownloadReportListener;)V
    .registers 2
    .param p1, "reportListener"    # Lcn/dm/download/listener/DownloadReportListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/dm/download/DownLoadManager;->e:Lcn/dm/download/listener/DownloadReportListener;

    .line 46
    return-void
.end method

.method public setMaxDownloadThreadNum(I)V
    .registers 3
    .param p1, "maxDownloadThreadNum"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {p1}, Lcn/dm/download/f;->setMaxDownloadThreadNum(I)V

    .line 92
    return-void
.end method

.method public setStorageFileName(Ljava/lang/String;)V
    .registers 3
    .param p1, "storageFileName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcn/dm/download/DownLoadManager;->d:Lcn/dm/download/f;

    invoke-static {p1}, Lcn/dm/download/f;->setStorageFileName(Ljava/lang/String;)V

    .line 97
    return-void
.end method
