.class public Lcom/bontai/mobiads/ads/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/ScreenUtil;

    const v1, 0xeb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getHeight(Landroid/app/Activity;)I
.end method

.method public static native getScreenHeight(Landroid/content/Context;)I
.end method

.method public static native getStatusBarHeight(Landroid/app/Activity;)I
.end method

.method public static native getStatusBarHeight(Landroid/content/Context;)I
.end method

.method public static native getTitleBarHeight(Landroid/app/Activity;)I
.end method

.method public static native getView(Landroid/app/Activity;)Landroid/view/View;
.end method
