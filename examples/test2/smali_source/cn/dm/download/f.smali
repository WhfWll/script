.class public Lcn/dm/download/f;
.super Ljava/lang/Object;
.source "InnerDownloadManager.java"


# static fields
.field private static j:Lcn/dm/download/util/b;


# instance fields
.field private I:Ljava/util/ArrayList;

.field private J:Ljava/util/ArrayList;

.field private K:Lcn/dm/download/DownloadBroadcastReceiver;

.field private context:Landroid/content/Context;

.field private g:Lcn/dm/download/db/c;

.field private i:Lcn/dm/download/listener/DownloadHelperListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 6

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lcn/dm/download/db/c;

    invoke-direct {v0, p1}, Lcn/dm/download/db/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    .line 38
    iput-object p2, p0, Lcn/dm/download/f;->i:Lcn/dm/download/listener/DownloadHelperListener;

    .line 40
    new-instance v0, Lcn/dm/download/DownloadBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    .line 39
    invoke-direct {v0, v1, p0, p2, v2}, Lcn/dm/download/DownloadBroadcastReceiver;-><init>(Landroid/content/Context;Lcn/dm/download/f;Lcn/dm/download/listener/DownloadHelperListener;Lcn/dm/download/db/c;)V

    iput-object v0, p0, Lcn/dm/download/f;->K:Lcn/dm/download/DownloadBroadcastReceiver;

    .line 42
    iget-object v0, p0, Lcn/dm/download/f;->K:Lcn/dm/download/DownloadBroadcastReceiver;

    invoke-virtual {v0}, Lcn/dm/download/DownloadBroadcastReceiver;->a()V

    .line 43
    return-void
.end method

.method private b(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 162
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadAppInfo id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->b(Ljava/lang/Long;)Lcn/dm/download/a;

    move-result-object v0

    .line 166
    if-nez v0, :cond_40

    .line 168
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2b

    .line 169
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 170
    invoke-virtual {p1, v4}, Lcn/dm/download/bean/DownloadAppInfo;->setIsUpdate(I)V

    .line 173
    :cond_2b
    invoke-virtual {p1, v4}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 176
    iget-object v0, p0, Lcn/dm/download/f;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 178
    new-instance v0, Lcn/dm/download/a;

    iget-object v1, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    iget-object v2, p0, Lcn/dm/download/f;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-direct {v0, p1, v1, v2}, Lcn/dm/download/a;-><init>(Lcn/dm/download/bean/DownloadAppInfo;Landroid/content/Context;Lcn/dm/download/listener/DownloadHelperListener;)V

    .line 179
    invoke-virtual {v0}, Lcn/dm/download/a;->b()V

    .line 183
    :goto_3f
    return-void

    .line 181
    :cond_40
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    goto :goto_3f
.end method

.method public static excuteOpen(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1b

    .line 307
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    :cond_1b
    return-void
.end method

.method public static excutePause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p0, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->b(Ljava/lang/Long;)Lcn/dm/download/a;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_12

    .line 212
    invoke-virtual {v0}, Lcn/dm/download/a;->c()V

    .line 216
    :goto_11
    return-void

    .line 214
    :cond_12
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    goto :goto_11
.end method

.method public static excuteUninstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method

.method private static l()V
    .registers 0

    .prologue
    .line 314
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/dm/download/f;->K:Lcn/dm/download/DownloadBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 331
    return-void
.end method

.method public static pauseAllDownloadThread()V
    .registers 2

    .prologue
    .line 320
    sget-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 323
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 324
    return-void

    .line 321
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/a;

    invoke-virtual {v0}, Lcn/dm/download/a;->c()V

    goto :goto_a
.end method

.method public static setMaxDownloadThreadNum(I)V
    .registers 1
    .param p0, "maxDownloadThreadNum"    # I

    .prologue
    .line 47
    sput p0, Lcn/dm/download/util/Constants;->MaxDownloadThread:I

    .line 48
    return-void
.end method

.method public static setStorageFileName(Ljava/lang/String;)V
    .registers 1
    .param p0, "storageFileName"    # Ljava/lang/String;

    .prologue
    .line 52
    sput-object p0, Lcn/dm/download/util/Constants;->DefaultStorageFile:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final checkAndGetDownloadAppInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/bean/DownloadAppInfo;
    .registers 15
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    .line 65
    :try_start_5
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v5

    .line 67
    iget-object v0, p0, Lcn/dm/download/f;->I:Ljava/util/ArrayList;

    if-eqz v0, :cond_16d

    .line 68
    iget-object v0, p0, Lcn/dm/download/f;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 138
    :goto_1b
    iget-object v0, p0, Lcn/dm/download/f;->J:Ljava/util/ArrayList;

    if-nez v0, :cond_27

    .line 139
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/util/c;->h(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/f;->J:Ljava/util/ArrayList;

    .line 142
    :cond_27
    iget-object v0, p0, Lcn/dm/download/f;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_171

    .line 152
    :goto_33
    return-object p1

    .line 68
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 69
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_15

    .line 71
    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    .line 75
    if-nez v1, :cond_4f

    .line 76
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    goto :goto_33

    .line 80
    :cond_4f
    if-eq v1, v10, :cond_59

    if-eq v1, v4, :cond_59

    .line 81
    if-eq v1, v2, :cond_59

    const/16 v0, 0x8

    if-ne v1, v0, :cond_fa

    .line 82
    :cond_59
    if-ne v1, v10, :cond_18f

    .line 83
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->b(Ljava/lang/Long;)Lcn/dm/download/a;

    move-result-object v0

    if-nez v0, :cond_18f

    .line 84
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 87
    iget-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0, p1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    move v0, v4

    .line 90
    :goto_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/dm/download/util/c;->r(Ljava/lang/String;)Z

    move-result v1

    .line 91
    sget-object v2, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u5e93\u6709\u8bb0\u5f55\uff0c\u5e94\u7528\u4e3a\u4e0b\u8f7d\u5f00\u59cb\u6216\u6682\u505c\u6216\u7b49\u5f85\u4e2d\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \uff0c\u672c\u5730\u6709\u5b58\u6587\u4ef6?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    if-eqz v1, :cond_e1

    .line 94
    sget-object v2, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u5e93\u6709\u8bb0\u5f55\uff0c\u5e94\u7528\u4e3a\u4e0b\u8f7d\u5f00\u59cb\u6216\u6682\u505c\u6216\u7b49\u5f85\u4e2d\uff0c\u672c\u5730\u6709\u5b58\u6587\u4ef6\u5927\u5c0f\u4e3a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/dm/download/util/c;->q(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/dm/download/util/c;->q(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setCurrentDownloadSize(J)V

    .line 122
    :cond_e1
    :goto_e1
    if-nez v1, :cond_155

    invoke-static {}, Lcn/dm/download/util/c;->s()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 123
    iget-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/db/c;->a(J)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 125
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    goto/16 :goto_33

    .line 97
    :cond_fa
    const/4 v0, 0x4

    if-ne v1, v0, :cond_111

    .line 98
    invoke-static {v5}, Lcn/dm/download/util/c;->r(Ljava/lang/String;)Z

    move-result v0

    .line 99
    sget-object v2, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u5e93\u6709\u8bb0\u5f55\uff0c\u4e0b\u8f7d\u72b6\u6001\u4e3a\u4e0b\u8f7d\u5b8c\u6210\uff0c\u672c\u5730\u6709\u5b58\u6587\u4ef6\uff1f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v12, v1

    move v1, v0

    move v0, v12

    .line 100
    goto :goto_e1

    :cond_111
    if-ne v1, v11, :cond_152

    .line 101
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_118} :catch_15a

    move-result-object v0

    .line 104
    :try_start_119
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    sget-object v4, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6570\u636e\u5e93\u6709\u8bb0\u5f55\uff0c\u5e94\u7528\u5df2\u7ecf\u5b89\u88c5\uff0c\u83b7\u53d6\u672c\u5730\u5b89\u88c5\u5305\u540d\u4e3a\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ,\u6839\u636e\u5305\u540d\u83b7\u53d6\u5230\u7684\u5305\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_13c} :catch_141

    .line 106
    if-eqz v0, :cond_152

    move v0, v1

    move v1, v2

    .line 116
    goto :goto_e1

    :catch_141
    move-exception v0

    .line 117
    :try_start_142
    sget-object v2, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u5b89\u88c5\u68c0\u67e5\u5f02\u5e38::"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_152
    move v0, v1

    move v1, v3

    goto :goto_e1

    .line 128
    :cond_155
    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_158} :catch_15a

    goto/16 :goto_33

    .line 149
    :catch_15a
    move-exception v0

    .line 150
    sget-object v1, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkAndGetDownloadAppInfo::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 134
    :cond_16d
    :try_start_16d
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    goto/16 :goto_1b

    .line 142
    :cond_171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 143
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setIsThirdInstalled(I)V

    .line 147
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_18d} :catch_15a

    goto/16 :goto_2d

    :cond_18f
    move v0, v1

    goto/16 :goto_75
.end method

.method public final excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 6
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    const/4 v2, 0x1

    .line 231
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->b(Ljava/lang/Long;)Lcn/dm/download/a;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_19

    iget v1, v0, Lcn/dm/download/a;->t:I

    if-eq v1, v2, :cond_19

    .line 235
    sget-object v1, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 237
    invoke-virtual {v0}, Lcn/dm/download/a;->e()V

    .line 259
    :goto_18
    return-void

    .line 240
    :cond_19
    if-eqz v0, :cond_2a

    iget v0, v0, Lcn/dm/download/a;->t:I

    if-ne v0, v2, :cond_2a

    .line 241
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->a(Ljava/lang/Long;)V

    .line 244
    :cond_2a
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_52

    .line 248
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_52
    invoke-static {v0}, Lcn/dm/download/util/c;->s(Ljava/lang/String;)Z

    .line 251
    sget-object v1, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u88ab\u5220\u9664\u6587\u4ef6\u540d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 254
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setCurrentDownloadSize(J)V

    .line 256
    iget-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/db/c;->a(J)V

    .line 257
    iget-object v0, p0, Lcn/dm/download/f;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_18
.end method

.method public final excuteDownload(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 2
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcn/dm/download/f;->b(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 192
    return-void
.end method

.method public final excuteInstall(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 277
    :try_start_0
    invoke-virtual {p2}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 279
    if-lez v0, :cond_15

    .line 280
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setIsUpdate(I)V

    .line 283
    iget-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0, p2}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 286
    :cond_15
    invoke-static {p1, p2}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 294
    :goto_36
    return-void

    .line 291
    :catch_37
    move-exception v0

    .line 292
    sget-object v1, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b89\u88c5\u65f6\u6709\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method public final excuteResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 2
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcn/dm/download/f;->b(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 225
    return-void
.end method

.method public final excuteUpdate(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 200
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 201
    invoke-direct {p0, p1}, Lcn/dm/download/f;->b(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 202
    return-void
.end method

.method public final finishDownloadTool()V
    .registers 3

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcn/dm/download/f;->pauseAllDownloadThread()V

    .line 350
    iget-object v0, p0, Lcn/dm/download/f;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/dm/download/f;->K:Lcn/dm/download/DownloadBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 354
    :goto_a
    return-void

    .line 351
    :catch_b
    move-exception v0

    .line 352
    sget-object v1, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_a
.end method

.method public final initAllDownloadAppInfoList()Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcn/dm/download/f;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0}, Lcn/dm/download/db/c;->q()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/f;->I:Ljava/util/ArrayList;

    .line 340
    sget-object v0, Lcn/dm/download/f;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initAllDownloadAppInfoList\uff0c\u6570\u636e\u5e93\u4e2d\u5b58\u7684\u5e94\u7528\u6570\u91cf\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/dm/download/f;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    iget-object v0, p0, Lcn/dm/download/f;->I:Ljava/util/ArrayList;

    return-object v0
.end method
