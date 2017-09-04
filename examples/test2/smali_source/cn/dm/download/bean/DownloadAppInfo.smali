.class public Lcn/dm/download/bean/DownloadAppInfo;
.super Ljava/lang/Object;
.source "DownloadAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private O:J

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:J

.field private U:I

.field private V:I

.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private p:J

.field private position:I

.field private t:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v2, p0, Lcn/dm/download/bean/DownloadAppInfo;->O:J

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->P:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->Q:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->t:I

    .line 10
    iput-wide v2, p0, Lcn/dm/download/bean/DownloadAppInfo;->p:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->R:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->S:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->T:J

    .line 5
    return-void
.end method


# virtual methods
.method public getAppId()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->O:J

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->p:J

    return-wide v0
.end method

.method public getClick_tracker()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDownloadSize()J
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->T:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->t:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorFlag()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->W:I

    return v0
.end method

.method public getIsThirdInstalled()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->V:I

    return v0
.end method

.method public getIsUpdate()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->U:I

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->position:I

    return v0
.end method

.method public getRefer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public getTr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcn/dm/download/bean/DownloadAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(J)V
    .registers 4
    .param p1, "appId"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->O:J

    .line 100
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->P:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setAppSize(J)V
    .registers 4
    .param p1, "appSize"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->p:J

    .line 108
    return-void
.end method

.method public setClick_tracker(Ljava/lang/String;)V
    .registers 2
    .param p1, "click_tracker"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->aa:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setCurrentDownloadSize(J)V
    .registers 4
    .param p1, "currentDownloadSize"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->T:J

    .line 76
    return-void
.end method

.method public setDownloadStatus(I)V
    .registers 2
    .param p1, "downloadStatus"    # I

    .prologue
    .line 83
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->t:I

    .line 84
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->R:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setErrorFlag(I)V
    .registers 2
    .param p1, "errorFlag"    # I

    .prologue
    .line 51
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->W:I

    .line 52
    return-void
.end method

.method public setIsThirdInstalled(I)V
    .registers 2
    .param p1, "isThirdInstalled"    # I

    .prologue
    .line 43
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->V:I

    .line 44
    return-void
.end method

.method public setIsUpdate(I)V
    .registers 2
    .param p1, "isUpdate"    # I

    .prologue
    .line 59
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->U:I

    .line 60
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->S:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->Q:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 171
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->position:I

    .line 172
    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .registers 2
    .param p1, "refer"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->Z:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .registers 2
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->ab:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTr(Ljava/lang/String;)V
    .registers 2
    .param p1, "tr"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->Y:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .registers 2
    .param p1, "verdor"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->X:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setVersionCode(I)V
    .registers 2
    .param p1, "versionCode"    # I

    .prologue
    .line 67
    iput p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->versionCode:I

    .line 68
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcn/dm/download/bean/DownloadAppInfo;->versionName:Ljava/lang/String;

    .line 140
    return-void
.end method
