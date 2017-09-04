.class Lcn/domob/android/ads/G$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/G;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/ads/G;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/G;Landroid/widget/ImageButton;)V
    .registers 3

    .prologue
    .line 103
    iput-object p1, p0, Lcn/domob/android/ads/G$3;->b:Lcn/domob/android/ads/G;

    iput-object p2, p0, Lcn/domob/android/ads/G$3;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/G$3;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    .line 106
    iget-object v0, p0, Lcn/domob/android/ads/G$3;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 108
    :cond_a
    return-void
.end method
