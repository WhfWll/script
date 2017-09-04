.class public final Lcn/dm/download/h;
.super Ljava/lang/Object;
.source "ListenerTaskManager.java"


# static fields
.field private static N:Lcn/dm/download/h;


# instance fields
.field private M:Ljava/util/HashMap;

.field private b:Lcn/dm/download/g;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcn/dm/download/h;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcn/dm/download/h;->N:Lcn/dm/download/h;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcn/dm/download/h;

    invoke-direct {v0}, Lcn/dm/download/h;-><init>()V

    sput-object v0, Lcn/dm/download/h;->N:Lcn/dm/download/h;

    .line 29
    :cond_b
    sget-object v0, Lcn/dm/download/h;->N:Lcn/dm/download/h;

    return-object v0
.end method

.method private static d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz p0, :cond_11

    .line 95
    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/dm/download/h;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 96
    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_11
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 108
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 109
    :cond_c
    const/4 v0, 0x1

    .line 111
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final a(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_9

    .line 87
    invoke-virtual {v0, p2}, Lcn/dm/download/g;->d(Ljava/lang/String;)V

    .line 89
    :cond_9
    return-void
.end method

.method public final addTask(Lcn/dm/download/bean/DownloadAppInfo;Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 7
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;
    .param p2, "listenerName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcn/dm/download/listener/DownloadHelperListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    .line 42
    :cond_b
    invoke-static {p1}, Lcn/dm/download/h;->d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    .line 43
    if-nez v1, :cond_12

    .line 53
    :goto_11
    return-void

    .line 46
    :cond_12
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/g;

    iput-object v0, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    .line 47
    iget-object v0, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    if-nez v0, :cond_2f

    .line 48
    new-instance v0, Lcn/dm/download/g;

    invoke-direct {v0, p2, p3}, Lcn/dm/download/g;-><init>(Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    iput-object v0, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    .line 49
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    iget-object v2, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 51
    :cond_2f
    iget-object v0, p0, Lcn/dm/download/h;->b:Lcn/dm/download/g;

    invoke-virtual {v0, p2, p3}, Lcn/dm/download/g;->a(Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V

    goto :goto_11
.end method

.method public final c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    invoke-static {p1}, Lcn/dm/download/h;->d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 59
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    invoke-static {p1}, Lcn/dm/download/h;->d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/g;

    .line 61
    :cond_17
    return-object v0
.end method

.method public final clearTask()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    .line 82
    :cond_c
    return-void
.end method

.method public final removeTask(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcn/dm/download/h;->c(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/dm/download/g;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_20

    .line 68
    invoke-virtual {v0}, Lcn/dm/download/g;->o()V

    .line 69
    invoke-static {p1}, Lcn/dm/download/h;->d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/h;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 70
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    .line 71
    iget-object v0, p0, Lcn/dm/download/h;->M:Ljava/util/HashMap;

    invoke-static {p1}, Lcn/dm/download/h;->d(Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_20
    return-void
.end method
