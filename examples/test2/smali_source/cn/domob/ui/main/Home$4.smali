.class Lcn/domob/ui/main/Home$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/Home;->initTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:I

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/widget/TextView;

.field final synthetic i:Lcn/domob/ui/main/Home;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/Home;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 524
    iput-object p1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iput-object p2, p0, Lcn/domob/ui/main/Home$4;->a:Landroid/widget/TextView;

    iput p3, p0, Lcn/domob/ui/main/Home$4;->b:I

    iput-object p4, p0, Lcn/domob/ui/main/Home$4;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcn/domob/ui/main/Home$4;->d:Landroid/widget/TextView;

    iput p6, p0, Lcn/domob/ui/main/Home$4;->e:I

    iput-object p7, p0, Lcn/domob/ui/main/Home$4;->f:Landroid/widget/TextView;

    iput-object p8, p0, Lcn/domob/ui/main/Home$4;->g:Landroid/widget/TextView;

    iput-object p9, p0, Lcn/domob/ui/main/Home$4;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 529
    # getter for: Lcn/domob/ui/main/Home;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/Home;->access$700()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tabId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tab_app"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcn/domob/ui/main/Home;->mTAB_APP:Ljava/lang/String;
    invoke-static {v0, v1}, Lcn/domob/ui/main/Home;->access$1002(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tab_game"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcn/domob/ui/main/Home;->mTAB_GAME:Ljava/lang/String;
    invoke-static {v0, v1}, Lcn/domob/ui/main/Home;->access$1102(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$900(Lcn/domob/ui/main/Home;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tab_all"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcn/domob/ui/main/Home;->mTAB_ALL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcn/domob/ui/main/Home;->access$1202(Lcn/domob/ui/main/Home;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTAB_APP:Ljava/lang/String;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$1000(Lcn/domob/ui/main/Home;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 541
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$1300(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$1400(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;
    invoke-static {v3}, Lcn/domob/ui/main/Home;->access$1500(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcn/domob/ui/main/Home;->setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    invoke-static {v0, v1, v2, v3}, Lcn/domob/ui/main/Home;->access$1600(Lcn/domob/ui/main/Home;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 543
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->a:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 544
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->c:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 548
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->h:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    :cond_b8
    :goto_b8
    return-void

    .line 550
    :cond_b9
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTAB_GAME:Ljava/lang/String;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$1100(Lcn/domob/ui/main/Home;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 552
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$1500(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$1400(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;
    invoke-static {v3}, Lcn/domob/ui/main/Home;->access$1300(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcn/domob/ui/main/Home;->setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    invoke-static {v0, v1, v2, v3}, Lcn/domob/ui/main/Home;->access$1600(Lcn/domob/ui/main/Home;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 555
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->a:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->c:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 559
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->h:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b8

    .line 562
    :cond_107
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTAB_ALL:Ljava/lang/String;
    invoke-static {v0}, Lcn/domob/ui/main/Home;->access$1200(Lcn/domob/ui/main/Home;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 564
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    iget-object v1, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_all:Landroid/widget/ImageView;
    invoke-static {v1}, Lcn/domob/ui/main/Home;->access$1400(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_app:Landroid/widget/ImageView;
    invoke-static {v2}, Lcn/domob/ui/main/Home;->access$1300(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/main/Home$4;->i:Lcn/domob/ui/main/Home;

    # getter for: Lcn/domob/ui/main/Home;->mTab_bg_background_game:Landroid/widget/ImageView;
    invoke-static {v3}, Lcn/domob/ui/main/Home;->access$1500(Lcn/domob/ui/main/Home;)Landroid/widget/ImageView;

    move-result-object v3

    # invokes: Lcn/domob/ui/main/Home;->setTabVisibility(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    invoke-static {v0, v1, v2, v3}, Lcn/domob/ui/main/Home;->access$1600(Lcn/domob/ui/main/Home;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 566
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->a:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->c:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v0, p0, Lcn/domob/ui/main/Home$4;->h:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/main/Home$4;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b8
.end method
