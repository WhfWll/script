.class public Lcn/dm/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# static fields
.field private static f:Lcn/dm/download/util/b;


# instance fields
.field private context:Landroid/content/Context;

.field private d:Lcn/dm/download/f;

.field private g:Lcn/dm/download/db/c;

.field private h:Ljava/util/ArrayList;

.field private i:Lcn/dm/download/listener/DownloadHelperListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/DownloadBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/dm/download/f;Lcn/dm/download/listener/DownloadHelperListener;Lcn/dm/download/db/c;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "innerDownloadManager"    # Lcn/dm/download/f;
    .param p3, "downloadHelperListener"    # Lcn/dm/download/listener/DownloadHelperListener;
    .param p4, "downloadDaoHelper"    # Lcn/dm/download/db/c;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->context:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    .line 40
    iput-object p2, p0, Lcn/dm/download/DownloadBroadcastReceiver;->d:Lcn/dm/download/f;

    .line 41
    iput-object p4, p0, Lcn/dm/download/DownloadBroadcastReceiver;->g:Lcn/dm/download/db/c;

    .line 42
    iput-object p3, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 62
    :goto_20
    return-void

    .line 59
    :catch_21
    move-exception v0

    .line 60
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_20
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-static {p1}, Lcn/dm/download/DownLoadManager;->getInstance(Landroid/content/Context;)Lcn/dm/download/DownLoadManager;

    move-result-object v0

    .line 67
    iput-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    .line 68
    invoke-virtual {v0}, Lcn/dm/download/DownLoadManager;->getInnerDownloadManager()Lcn/dm/download/f;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->d:Lcn/dm/download/f;

    .line 69
    new-instance v0, Lcn/dm/download/db/c;

    invoke-direct {v0, p1}, Lcn/dm/download/db/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->g:Lcn/dm/download/db/c;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    .line 73
    :try_start_19
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->d:Lcn/dm/download/f;

    invoke-virtual {v1}, Lcn/dm/download/f;->initAllDownloadAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->h:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 79
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u6d4b\u5230\u5b89\u88c5\u5b8c\u6210\uff0c\u5b89\u88c5\u5305\u540d\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    .line 147
    :cond_45
    :goto_45
    return-void

    .line 81
    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 82
    sget-object v3, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u5e93\u5305\u540d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 84
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    .line 85
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 86
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->g:Lcn/dm/download/db/c;

    invoke-virtual {v1, v0}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 87
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, v0}, Lcn/dm/download/listener/DownloadHelperListener;->onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_85} :catch_86

    goto :goto_45

    .line 144
    :catch_86
    move-exception v0

    .line 145
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_45

    .line 97
    :cond_8d
    :try_start_8d
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 98
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u6d4b\u5230\u5305\u88ab\u5378\u8f7d\uff0c\u5305\u540d\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 128
    new-instance v0, Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {v0}, Lcn/dm/download/bean/DownloadAppInfo;-><init>()V

    .line 129
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 131
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, v0}, Lcn/dm/download/listener/DownloadHelperListener;->onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 132
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    goto/16 :goto_45

    .line 100
    :cond_c8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 111
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u5378\u8f7d\u5305\u540d\u5728\u6570\u636e\u5e93\u4e2d\u5b58\u5728\uff0c\u66f4\u65b0\u6570\u636e\u5e93\uff01\u5305\u540d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getIsUpdate()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_102

    .line 114
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    goto/16 :goto_45

    .line 117
    :cond_102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 119
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/dm/download/db/c;->a(J)V

    .line 121
    invoke-static {p1, v0}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/dm/download/util/c;->s(Ljava/lang/String;)Z

    .line 122
    iget-object v1, p0, Lcn/dm/download/DownloadBroadcastReceiver;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, v0}, Lcn/dm/download/listener/DownloadHelperListener;->onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 123
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    goto/16 :goto_45

    .line 133
    :cond_11f
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 134
    sget-object v0, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u6d4b\u5230\u5305\u88ab\u66f4\u65b0\uff0c\u5305\u540d\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v0, p0, Lcn/dm/download/DownloadBroadcastReceiver;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_139
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/bean/DownloadAppInfo;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 138
    sget-object v1, Lcn/dm/download/DownloadBroadcastReceiver;->f:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u66f4\u65b0\u5305\u540d\u5728\u6570\u636e\u5e93\u4e2d\u5b58\u5728\uff0c\u5305\u540d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_16e} :catch_86

    goto/16 :goto_45
.end method
