.class public Lcom/bontai/mobiads/ads/ProgressUtil;
.super Ljava/lang/Object;
.source "ProgressUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/ProgressUtil;

    const v1, 0xe7

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

.method public static native getProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;
.end method

.method public static native getProgressDialogContext(Landroid/content/Context;)Landroid/app/ProgressDialog;
.end method
