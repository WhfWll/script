.class final Lbb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .registers 2

    iput-object p1, p0, Lbb;->a:Laz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lbb;->a:Laz;

    iget-object v0, v0, Laz;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lbb;->a:Laz;

    iget-object v0, v0, Laz;->a:Lbd;

    invoke-virtual {v0, p1}, Lbd;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lbb;->a:Laz;

    iget-object v0, v0, Laz;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lbb;->a:Laz;

    iget-object v0, v0, Laz;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lbb;->a:Laz;

    iget-object v1, v1, Laz;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
