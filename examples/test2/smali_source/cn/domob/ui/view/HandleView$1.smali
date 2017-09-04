.class Lcn/domob/ui/view/HandleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$OnImageDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/HandleView;->initHandleView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/HandleView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/HandleView;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcn/domob/ui/view/HandleView$1;->a:Lcn/domob/ui/view/HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFail(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 75
    # getter for: Lcn/domob/ui/view/HandleView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/HandleView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "fetch handler fail"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/domob/ui/view/HandleView$1;->a:Lcn/domob/ui/view/HandleView;

    # getter for: Lcn/domob/ui/view/HandleView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/view/HandleView;->access$100(Lcn/domob/ui/view/HandleView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "u_handle_background"

    invoke-static {v0, v1}, Lcn/domob/ui/utility/DDrawable;->getDrawableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    return-void
.end method

.method public onDownloadSuc(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 64
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 65
    # getter for: Lcn/domob/ui/view/HandleView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/HandleView;->access$000()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "fetch handler success"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 66
    if-eqz p1, :cond_18

    .line 67
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    :cond_18
    return-void
.end method
