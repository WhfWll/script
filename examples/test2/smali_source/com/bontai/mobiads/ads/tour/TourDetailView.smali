.class public Lcom/bontai/mobiads/ads/tour/TourDetailView;
.super Landroid/widget/RelativeLayout;
.source "TourDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bontai/mobiads/ads/tour/TourDetailView$MyWebViewDownLoadListener;,
        Lcom/bontai/mobiads/ads/tour/TourDetailView$xWebChromeClient;
    }
.end annotation


# instance fields
.field private backIV:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private drawableForward:Landroid/graphics/drawable/Drawable;

.field private drawableForwardOff:Landroid/graphics/drawable/Drawable;

.field private drawablePreview:Landroid/graphics/drawable/Drawable;

.field private drawablePreviewOff:Landroid/graphics/drawable/Drawable;

.field private forwardIV:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private targetUrl:Ljava/lang/String;

.field private tourDetailDialog:Lcom/bontai/mobiads/ads/ADDialog;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/TourDetailView;

    const v1, 0x122

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bontai/mobiads/ads/tour/TourDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$10(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Lcom/bontai/mobiads/ads/ADDialog;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->tourDetailDialog:Lcom/bontai/mobiads/ads/ADDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/bontai/mobiads/ads/tour/TourDetailView;)V
    .registers 1

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/tour/TourDetailView;->dismissTourDetail()V

    return-void
.end method

.method static synthetic access$4(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->forwardIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->drawableForward:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->backIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->drawablePreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->drawableForwardOff:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/bontai/mobiads/ads/tour/TourDetailView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourDetailView;->drawablePreviewOff:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private native dismissTourDetail()V
.end method


# virtual methods
.method public native action(Landroid/view/View;)V
.end method

.method public native back(Landroid/view/View;)V
.end method

.method public native dealMainpage(Landroid/view/View;)V
.end method

.method public native exit(Landroid/view/View;)V
.end method

.method public native forward(Landroid/view/View;)V
.end method

.method public native getTargetUrl()Ljava/lang/String;
.end method

.method public native jumpTourDetailView()V
.end method

.method public native refresh(Landroid/view/View;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public native setTargetUrl(Ljava/lang/String;)V
.end method
