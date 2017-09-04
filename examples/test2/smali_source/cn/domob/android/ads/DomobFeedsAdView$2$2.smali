.class Lcn/domob/android/ads/DomobFeedsAdView$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobFeedsAdView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/ads/DomobFeedsAdView$2;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobFeedsAdView$2;Landroid/widget/ImageButton;)V
    .registers 3

    .prologue
    .line 106
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$2;->b:Lcn/domob/android/ads/DomobFeedsAdView$2;

    iput-object p2, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$2;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$2;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 110
    return-void
.end method
