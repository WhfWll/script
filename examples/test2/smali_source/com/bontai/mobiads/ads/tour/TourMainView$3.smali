.class Lcom/bontai/mobiads/ads/tour/TourMainView$3;
.super Landroid/webkit/WebViewClient;
.source "TourMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/tour/TourMainView;->dealMainpage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/TourMainView$3;

    const v1, 0x127

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/tour/TourMainView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/TourMainView$3;->this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;

    .line 247
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/tour/TourMainView$3;)Lcom/bontai/mobiads/ads/tour/TourMainView;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView$3;->this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;

    return-object v0
.end method


# virtual methods
.method public native onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public native onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public native onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
