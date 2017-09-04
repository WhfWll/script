.class Lcn/domob/android/ads/DomobFeedsAdView$2$3;
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
.field final synthetic a:Lcn/domob/android/ads/DomobFeedsAdView$2;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobFeedsAdView$2;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$3;->a:Lcn/domob/android/ads/DomobFeedsAdView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$3;->a:Lcn/domob/android/ads/DomobFeedsAdView$2;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobFeedsAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/DomobFeedsAdView$2$3;->a:Lcn/domob/android/ads/DomobFeedsAdView$2;

    iget-object v0, v0, Lcn/domob/android/ads/DomobFeedsAdView$2;->b:Lcn/domob/android/ads/DomobFeedsAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobFeedsAdView;->o()V

    .line 123
    :cond_11
    return-void
.end method
