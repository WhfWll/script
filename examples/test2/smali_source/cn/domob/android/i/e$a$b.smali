.class Lcn/domob/android/i/e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/i/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/location/LocationManager;

.field final synthetic b:Lcn/domob/android/i/e$a;

.field private c:Z


# direct methods
.method constructor <init>(Lcn/domob/android/i/e$a;Landroid/location/LocationManager;)V
    .registers 4

    .prologue
    .line 292
    iput-object p1, p0, Lcn/domob/android/i/e$a$b;->b:Lcn/domob/android/i/e$a;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/i/e$a$b;->c:Z

    .line 294
    iput-object p2, p0, Lcn/domob/android/i/e$a$b;->a:Landroid/location/LocationManager;

    .line 295
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcn/domob/android/i/e$a$b;->c:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 314
    if-eqz p1, :cond_32

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/i/e$a$b;->c:Z

    .line 317
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_32

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 319
    invoke-static {}, Lcn/domob/android/i/e;->e()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove the listener of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcn/domob/android/i/e$a$b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 323
    :cond_32
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 310
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 305
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 300
    return-void
.end method
