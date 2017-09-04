.class public Lcn/domob/wall/core/bean/ControlInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/bean/ControlInfo$a;
    }
.end annotation


# static fields
.field private static final r:Z

.field private static final s:Z

.field private static final t:Z

.field private static final u:Z

.field private static final v:Z


# instance fields
.field a:Lcn/domob/wall/core/h/d;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/domob/wall/core/bean/ControlInfo;->r:Z

    .line 46
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/domob/wall/core/bean/ControlInfo;->s:Z

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/domob/wall/core/bean/ControlInfo;->t:Z

    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/domob/wall/core/bean/ControlInfo;->u:Z

    .line 49
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/domob/wall/core/bean/ControlInfo;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    .line 21
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->f:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "controlJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/bean/ControlInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    .line 21
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->f:I

    .line 57
    if-eqz p1, :cond_f2

    .line 59
    :try_start_1f
    const-string v0, "ent_pic"

    sget-boolean v1, Lcn/domob/wall/core/bean/ControlInfo;->r:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->g:Z

    .line 62
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 63
    const-string v0, "pic_url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->b:Ljava/lang/String;

    .line 66
    :cond_3f
    const-string v0, "new_rem"

    sget-boolean v1, Lcn/domob/wall/core/bean/ControlInfo;->s:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->h:Z

    .line 69
    const-string v0, "top_tim"

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    .line 73
    const-string v0, "dbut_show"

    sget-boolean v1, Lcn/domob/wall/core/bean/ControlInfo;->t:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->i:Z

    .line 77
    const-string v0, "show_num"

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    .line 79
    const-string v0, "ad_order"

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    .line 82
    const-string v0, "app_classify"

    sget-boolean v1, Lcn/domob/wall/core/bean/ControlInfo;->u:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->j:Z

    .line 86
    const-string v0, "ishavebanner"

    sget-boolean v1, Lcn/domob/wall/core/bean/ControlInfo;->v:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->k:Z

    .line 91
    const-string v0, "showOpen"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->m:Z

    .line 94
    const-string v0, "showUpdate"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->l:Z

    .line 97
    const-string v0, "showNew"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->n:Z

    .line 100
    const-string v0, "showSearchEntry"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->o:Z

    .line 103
    const-string v0, "timeout"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->p:J

    .line 106
    const-string v0, "showEWallEntry"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->q:Z

    .line 110
    iget-object v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlJsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/wall/core/bean/ControlInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_f2} :catch_f3

    .line 120
    :cond_f2
    :goto_f2
    return-void

    .line 113
    :catch_f3
    move-exception v0

    .line 114
    iget-object v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happens when decoding controlJsonObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/h/d;->e(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_f2
.end method


# virtual methods
.method public getAdOrder()Lcn/domob/wall/core/bean/ControlInfo$a;
    .registers 3

    .prologue
    .line 236
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 237
    sget-object v0, Lcn/domob/wall/core/bean/ControlInfo$a;->a:Lcn/domob/wall/core/bean/ControlInfo$a;

    .line 243
    :goto_7
    return-object v0

    .line 238
    :cond_8
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 239
    sget-object v0, Lcn/domob/wall/core/bean/ControlInfo$a;->b:Lcn/domob/wall/core/bean/ControlInfo$a;

    goto :goto_7

    .line 240
    :cond_10
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 241
    sget-object v0, Lcn/domob/wall/core/bean/ControlInfo$a;->c:Lcn/domob/wall/core/bean/ControlInfo$a;

    goto :goto_7

    .line 243
    :cond_18
    sget-object v0, Lcn/domob/wall/core/bean/ControlInfo$a;->a:Lcn/domob/wall/core/bean/ControlInfo$a;

    goto :goto_7
.end method

.method public getBannerIntervalTime()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    return v0
.end method

.method public getEnterPicURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfNewAd()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->f:I

    return v0
.end method

.method public getShowAdNum()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    return v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 128
    iget-wide v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->p:J

    return-wide v0
.end method

.method public isButtonShow()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->i:Z

    return v0
.end method

.method public isChangeEnterPic()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->g:Z

    return v0
.end method

.method public isClassify()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->j:Z

    return v0
.end method

.method public isHasBanner()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->k:Z

    return v0
.end method

.method public isShowEWallEntrance()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->q:Z

    return v0
.end method

.method public isShowNew()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->n:Z

    return v0
.end method

.method public isShowNewReminder()Z
    .registers 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->h:Z

    return v0
.end method

.method public isShowOpen()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->m:Z

    return v0
.end method

.method public isShowSearchEntrance()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->o:Z

    return v0
.end method

.method public isShowUpdate()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/ControlInfo;->l:Z

    return v0
.end method

.method public setNumberOfNewAd(I)V
    .registers 2
    .param p1, "numberOfNewAd"    # I

    .prologue
    .line 261
    iput p1, p0, Lcn/domob/wall/core/bean/ControlInfo;->f:I

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlInfo [mLogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPicURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerIntervalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfNewAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangePic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewReminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRightButShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIshaveBanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowSearchEntrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/ControlInfo;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/domob/wall/core/bean/ControlInfo;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
