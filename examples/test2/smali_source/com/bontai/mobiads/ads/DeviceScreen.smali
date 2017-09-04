.class public Lcom/bontai/mobiads/ads/DeviceScreen;
.super Ljava/lang/Object;
.source "DeviceScreen.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/DeviceScreen;

    const v1, 0xe4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAdHeight(Landroid/content/Context;)I
.end method

.method public static native getAdSize(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getMetric(Landroid/content/Context;)Landroid/util/DisplayMetrics;
.end method

.method public static native getScreenHeight(Landroid/content/Context;)I
.end method

.method public static native getScreenWidth(Landroid/content/Context;)I
.end method
