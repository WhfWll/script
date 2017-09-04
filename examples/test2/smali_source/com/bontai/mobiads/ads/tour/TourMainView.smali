.class public Lcom/bontai/mobiads/ads/tour/TourMainView;
.super Landroid/widget/RelativeLayout;
.source "TourMainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/tour/TourMainView$xWebChromeClient;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field private loadingIV:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private tourMainDialog:Lcom/bontai/mobiads/ads/ADDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/TourMainView;

    const v1, 0x129

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bontai/mobiads/ads/tour/TourMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    new-instance v0, Lcom/bontai/mobiads/ads/tour/TourMainView$1;

    invoke-direct {v0, p0}, Lcom/bontai/mobiads/ads/tour/TourMainView$1;-><init>(Lcom/bontai/mobiads/ads/tour/TourMainView;)V

    iput-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->handler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/tour/TourMainView;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/tour/TourMainView;)Lcom/bontai/mobiads/ads/ADDialog;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->tourMainDialog:Lcom/bontai/mobiads/ads/ADDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/tour/TourMainView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->loadingIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bontai/mobiads/ads/tour/TourMainView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public native dealMainpage(Landroid/view/View;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public native jumpTourMainView()V
.end method
