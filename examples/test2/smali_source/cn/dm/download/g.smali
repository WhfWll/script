.class public final Lcn/dm/download/g;
.super Ljava/lang/Object;
.source "ListenerTask.java"


# instance fields
.field private L:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    .line 24
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private n()Ljava/util/List;
    .registers 4

    .prologue
    .line 28
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    if-eqz v0, :cond_25

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 32
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    move-object v0, v1

    .line 37
    :goto_1a
    return-object v0

    .line 33
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 37
    :cond_25
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_9
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_9
    return-void
.end method

.method public final e(Ljava/lang/String;)Lcn/dm/download/listener/DownloadHelperListener;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    .line 69
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 71
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/dm/download/g;->L:Ljava/util/HashMap;

    .line 60
    :cond_c
    return-void
.end method

.method public final onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 111
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_10

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 117
    :cond_10
    return-void

    .line 113
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 114
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 147
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_10

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 153
    :cond_10
    return-void

    .line 149
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 150
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 102
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_10

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    :cond_10
    return-void

    .line 104
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 105
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 120
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_10

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 126
    :cond_10
    return-void

    .line 122
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 123
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 75
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_10

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 81
    :cond_10
    return-void

    .line 77
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 78
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 93
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_10

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 99
    :cond_10
    return-void

    .line 95
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 96
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 84
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_10

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 90
    :cond_10
    return-void

    .line 86
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 87
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadWaiting(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 129
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_10

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 135
    :cond_10
    return-void

    .line 131
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 132
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onInstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 160
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_10

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 166
    :cond_10
    return-void

    .line 162
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 163
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method

.method public final onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 138
    invoke-direct {p0}, Lcn/dm/download/g;->n()Ljava/util/List;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_10

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 144
    :cond_10
    return-void

    .line 140
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/listener/DownloadHelperListener;

    .line 141
    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onUninstallSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_a
.end method
