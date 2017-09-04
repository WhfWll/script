.class public Lcom/bontai/mobiads/ads/BTPopupWindow;
.super Landroid/widget/PopupWindow;
.source "BTPopupWindow.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/BTPopupWindow;

    const v1, 0xe2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 10
    return-void
.end method


# virtual methods
.method public native btDismiss()V
.end method

.method public native dismiss()V
.end method
