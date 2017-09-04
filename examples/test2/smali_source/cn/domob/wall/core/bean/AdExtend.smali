.class public Lcn/domob/wall/core/bean/AdExtend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcn/domob/wall/core/h/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "adExtendJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/domob/wall/core/e/b;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/bean/AdExtend;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->a:Lcn/domob/wall/core/h/d;

    .line 29
    if-eqz p1, :cond_9e

    .line 31
    :try_start_12
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->b:Ljava/lang/String;

    .line 34
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->c:Ljava/lang/String;

    .line 37
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->e:Ljava/lang/String;

    .line 40
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->f:Ljava/lang/String;

    .line 43
    const-string v0, "preload"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/wall/core/bean/AdExtend;->d:Z

    .line 47
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->a:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adExtendJsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdExtend;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/wall/core/h/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 53
    :cond_7c
    new-instance v0, Lcn/domob/wall/core/e/b;

    invoke-direct {v0}, Lcn/domob/wall/core/e/b;-><init>()V

    throw v0
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_82} :catch_82

    .line 57
    :catch_82
    move-exception v0

    .line 58
    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 59
    new-instance v0, Lcn/domob/wall/core/e/b;

    const-string v1, "ParseAdExtendRespException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/domob/wall/core/bean/AdExtend;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_9e
    return-void
.end method


# virtual methods
.method public getmId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getmLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getmTr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcn/domob/wall/core/bean/AdExtend;->c:Ljava/lang/String;

    return-object v0
.end method

.method public ismPreload()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcn/domob/wall/core/bean/AdExtend;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdExtend [mLogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/wall/core/bean/AdExtend;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/bean/AdExtend;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
