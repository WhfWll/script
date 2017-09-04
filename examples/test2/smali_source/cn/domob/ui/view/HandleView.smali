.class public Lcn/domob/ui/view/HandleView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mHandlerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/view/HandleView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/view/HandleView;->mLogger:Lcn/domob/ui/main/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Ljava/lang/String;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mDService"    # Lcn/domob/wall/core/DService;
    .param p3, "handleUrl"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcn/domob/ui/view/HandleView;->mDService:Lcn/domob/wall/core/DService;

    .line 29
    iput-object p3, p0, Lcn/domob/ui/view/HandleView;->mHandlerUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$000()Lcn/domob/ui/main/Logger;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcn/domob/ui/view/HandleView;->mLogger:Lcn/domob/ui/main/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcn/domob/ui/view/HandleView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcn/domob/ui/view/HandleView;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public initHandleView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x4

    .line 34
    iget-object v0, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v2, "l_handle"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 39
    iget-object v1, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v2, "handle_background"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    iget-object v2, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v3, "handle_num_background"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 46
    iget-object v3, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v4, "handle_num"

    invoke-static {v3, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    iget-object v4, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v5, "handleRelativeLayout"

    invoke-static {v4, v5}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 55
    iget-object v4, p0, Lcn/domob/ui/view/HandleView;->mHandlerUrl:Ljava/lang/String;

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcn/domob/ui/view/HandleView;->mHandlerUrl:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_8c

    .line 56
    sget-object v4, Lcn/domob/ui/view/HandleView;->mLogger:Lcn/domob/ui/main/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5165\u53e3\u56fe\u7247URL\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/view/HandleView;->mHandlerUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lcn/domob/ui/view/HandleView;->mHandlerUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v5, p0, Lcn/domob/ui/view/HandleView;->mDService:Lcn/domob/wall/core/DService;

    new-instance v6, Lcn/domob/ui/view/HandleView$1;

    invoke-direct {v6, p0}, Lcn/domob/ui/view/HandleView$1;-><init>(Lcn/domob/ui/view/HandleView;)V

    invoke-virtual {v5, v4, v1, v6}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 86
    :goto_85
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    return-object v0

    .line 82
    :cond_8c
    iget-object v4, p0, Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;

    const-string v5, "u_handle_background"

    invoke-static {v4, v5}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_85
.end method
