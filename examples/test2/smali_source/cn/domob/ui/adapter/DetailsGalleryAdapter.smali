.class public Lcn/domob/ui/adapter/DetailsGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;
    }
.end annotation


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mImageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .registers 4
    .param p2, "paramContext"    # Landroid/content/Context;
    .param p3, "paramDService"    # Lcn/domob/wall/core/DService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcn/domob/wall/core/DService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "paramImageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mDService:Lcn/domob/wall/core/DService;

    .line 32
    return-void
.end method

.method static synthetic access$100()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 48
    if-nez p2, :cond_95

    .line 49
    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mContext:Landroid/content/Context;

    const-string v2, "l_details_gallery"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;

    invoke-direct {v1, p0, v4}, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;-><init>(Lcn/domob/ui/adapter/DetailsGalleryAdapter;Lcn/domob/ui/adapter/DetailsGalleryAdapter$1;)V

    .line 57
    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mContext:Landroid/content/Context;

    const-string v2, "gallery_image"

    invoke-static {v0, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;->a:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_36
    sget-object v2, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u7247url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    iget-object v4, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 66
    iget-object v0, v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    iget-object v3, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mDService:Lcn/domob/wall/core/DService;

    iget-object v0, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    iget-object v3, p0, Lcn/domob/ui/adapter/DetailsGalleryAdapter;->mImageUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;->a:Landroid/widget/ImageView;

    new-instance v4, Lcn/domob/ui/adapter/DetailsGalleryAdapter$1;

    invoke-direct {v4, p0}, Lcn/domob/ui/adapter/DetailsGalleryAdapter$1;-><init>(Lcn/domob/ui/adapter/DetailsGalleryAdapter;)V

    invoke-virtual {v2, v0, v3, v4}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 84
    iget-object v0, v1, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    return-object p2

    .line 62
    :cond_95
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/adapter/DetailsGalleryAdapter$a;

    move-object v1, v0

    goto :goto_36
.end method
