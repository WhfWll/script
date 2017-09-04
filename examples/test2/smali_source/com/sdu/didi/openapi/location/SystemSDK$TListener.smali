.class Lcom/sdu/didi/openapi/location/SystemSDK$TListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/location/SystemSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TListener"
.end annotation


# instance fields
.field private locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

.field final synthetic this$0:Lcom/sdu/didi/openapi/location/SystemSDK;


# direct methods
.method public constructor <init>(Lcom/sdu/didi/openapi/location/SystemSDK;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sdu/didi/openapi/location/SystemSDK;
    .param p2, "locationListener"    # Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->this$0:Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->this$0:Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-virtual {v1, p1}, Lcom/sdu/didi/openapi/location/SystemSDK;->parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;->location(Lcom/sdu/didi/openapi/location/Location;)V

    :cond_f
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method
