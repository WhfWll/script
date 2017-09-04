.class final Lbc;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .registers 2

    iput-object p1, p0, Lbc;->a:Laz;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lbc;->a:Laz;

    iget-object v2, v2, Laz;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Landroid/location/LocationManager;

    iget-object v2, p0, Lbc;->a:Laz;

    iget-object v2, v2, Laz;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lbc;->a:Laz;

    iget-boolean v0, v0, Laz;->a:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_27
    iget-object v2, p0, Lbc;->a:Laz;

    iget-boolean v2, v2, Laz;->b:Z

    if-eqz v2, :cond_73

    iget-object v2, p0, Lbc;->a:Laz;

    iget-object v2, v2, Laz;->a:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_37
    if-eqz v0, :cond_57

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_4f

    iget-object v1, p0, Lbc;->a:Laz;

    iget-object v1, v1, Laz;->a:Lbd;

    invoke-virtual {v1, v0}, Lbd;->a(Landroid/location/Location;)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Lbd;

    invoke-virtual {v0, v2}, Lbd;->a(Landroid/location/Location;)V

    goto :goto_4e

    :cond_57
    if-eqz v0, :cond_61

    iget-object v1, p0, Lbc;->a:Laz;

    iget-object v1, v1, Laz;->a:Lbd;

    invoke-virtual {v1, v0}, Lbd;->a(Landroid/location/Location;)V

    goto :goto_4e

    :cond_61
    if-eqz v2, :cond_6b

    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Lbd;

    invoke-virtual {v0, v2}, Lbd;->a(Landroid/location/Location;)V

    goto :goto_4e

    :cond_6b
    iget-object v0, p0, Lbc;->a:Laz;

    iget-object v0, v0, Laz;->a:Lbd;

    invoke-virtual {v0, v1}, Lbd;->a(Landroid/location/Location;)V

    goto :goto_4e

    :cond_73
    move-object v2, v1

    goto :goto_37

    :cond_75
    move-object v0, v1

    goto :goto_27
.end method
