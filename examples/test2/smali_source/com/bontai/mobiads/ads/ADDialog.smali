.class public Lcom/bontai/mobiads/ads/ADDialog;
.super Landroid/app/Dialog;
.source "ADDialog.java"


# instance fields
.field private backKeyEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/ADDialog;

    const v1, 0xdf

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 14
    const v0, 0x1030005

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bontai/mobiads/ads/ADDialog;->backKeyEnabled:Z

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bontai/mobiads/ads/ADDialog;->requestWindowFeature(I)Z

    .line 16
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/ADDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 17
    return-void
.end method


# virtual methods
.method public native onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public native setBackKeyEnabled(Z)V
.end method
