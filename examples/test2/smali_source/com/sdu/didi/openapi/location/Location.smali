.class public Lcom/sdu/didi/openapi/location/Location;
.super Ljava/lang/Object;


# instance fields
.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field private mapType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getMapType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-object v0
.end method

.method public isAvail()Z
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public reset()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .registers 2
    .param p1, "lat"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .registers 2
    .param p1, "lng"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    return-void
.end method

.method public setMapType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mapType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location{lat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mapType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/Location;->mapType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
