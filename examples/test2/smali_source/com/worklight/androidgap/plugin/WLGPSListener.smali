.class public Lcom/worklight/androidgap/plugin/WLGPSListener;
.super Lcom/worklight/androidgap/plugin/WLLocationListener;
.source "WLGPSListener.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLGPSListener;

    const v1, 0x473

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;)V
    .registers 4
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "m"    # Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    .prologue
    .line 42
    const-string v0, "gps"

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/WLLocationListener;-><init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected native start()V
.end method
