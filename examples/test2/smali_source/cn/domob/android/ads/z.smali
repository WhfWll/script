.class public Lcn/domob/android/ads/z;
.super Lcn/domob/android/ads/n;
.source "SourceFile"


# static fields
.field private static g:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V
    .registers 7

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    .line 17
    sget-object v0, Lcn/domob/android/ads/z;->g:Lcn/domob/android/i/f;

    const-string v1, "New DomobSplashAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->n()V

    .line 23
    return-void
.end method

.method public a(II)V
    .registers 3

    .prologue
    .line 62
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/B;

    if-eqz v0, :cond_10

    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/B;

    invoke-virtual {v0}, Lcn/domob/android/ads/B;->destroy()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    .line 58
    :cond_10
    return-void
.end method

.method public n()V
    .registers 5

    .prologue
    .line 28
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    if-nez v0, :cond_3a

    .line 29
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/z;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    .line 31
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/z;->b:Lcn/domob/android/ads/k;

    invoke-virtual {v2}, Lcn/domob/android/ads/k;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->b:Lcn/domob/android/ads/k;

    invoke-virtual {v3}, Lcn/domob/android/ads/k;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    iget-object v1, p0, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/j;

    if-eqz v1, :cond_37

    .line 35
    iget-object v1, p0, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :cond_37
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->g()V

    .line 40
    :cond_3a
    return-void
.end method
