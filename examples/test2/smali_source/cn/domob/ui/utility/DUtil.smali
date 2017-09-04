.class public Lcn/domob/ui/utility/DUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAdInfo(Lcn/dm/download/bean/DownloadAppInfo;)Lcn/domob/wall/core/bean/AdInfo;
    .registers 8
    .param p0, "appInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v0, Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getTr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcn/dm/download/bean/DownloadAppInfo;->getSid()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcn/domob/wall/core/bean/AdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-object v0
.end method

.method public static buildDownLoadAppInfo(Lcn/domob/wall/core/bean/AdInfo;)Lcn/dm/download/bean/DownloadAppInfo;
    .registers 5
    .param p0, "mAdInfo"    # Lcn/domob/wall/core/bean/AdInfo;

    .prologue
    .line 139
    new-instance v0, Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct {v0}, Lcn/dm/download/bean/DownloadAppInfo;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getSearchId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setSid(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setAppId(J)V

    .line 142
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setAppName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setAppSize(J)V

    .line 144
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setPkgName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setLogoUrl(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionCode(I)V

    .line 148
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setVersionName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdInfo;->getAdTracker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setTr(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public static getCurrentDensity(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 68
    .line 70
    cmpl-float v1, v0, v0

    if-nez v1, :cond_f

    .line 71
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 72
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 78
    :cond_f
    :goto_f
    return v0

    .line 74
    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static getCurrentScreenHeight(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_14

    .line 60
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 63
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public static getCurrentScreenWidth(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_14

    .line 48
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 51
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public static getRealDensity(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 29
    cmpl-float v0, v1, v1

    if-nez v0, :cond_1f

    .line 30
    :try_start_5
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    :goto_1b
    move v1, v0

    .line 39
    :goto_1c
    return v1

    .line 36
    :catch_1d
    move-exception v0

    goto :goto_1c

    :cond_1f
    move v0, v1

    goto :goto_1b
.end method

.method public static getRealScreenHeight(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getCurrentScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getRealDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getCurrentDensity(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 94
    return v0
.end method

.method public static getRealScreenWidth(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getCurrentScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getRealDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/ui/utility/DUtil;->getCurrentDensity(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 86
    return v0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 17
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    return v0
.end method

.method public static isIntValid(I)Z
    .registers 4
    .param p0, "paramInt"    # I

    .prologue
    const/4 v0, 0x1

    .line 111
    if-gez p0, :cond_4

    .line 118
    :cond_3
    :goto_3
    return v0

    .line 114
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isObjectValid(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "paramObject"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    :cond_a
    const/4 v0, 0x1

    .line 129
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isStringValid(Ljava/lang/String;)Z
    .registers 2
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p0, :cond_10

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 102
    :cond_10
    const/4 v0, 0x1

    .line 104
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
