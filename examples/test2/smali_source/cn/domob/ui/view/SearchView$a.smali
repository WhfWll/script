.class Lcn/domob/ui/view/SearchView$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView;

.field private b:Ljava/util/List;
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
.method public constructor <init>(Lcn/domob/ui/view/SearchView;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 517
    iput-object p2, p0, Lcn/domob/ui/view/SearchView$a;->b:Ljava/util/List;

    .line 518
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 531
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 536
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "l_hotsearch_item"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DLayout;->getLayoutInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 538
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_arrow_position"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    iget-object v2, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tv_hotsearch_item_name"

    invoke-static {v2, v3}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const/4 v3, 0x2

    if-le p1, v3, :cond_6f

    .line 546
    iget-object v3, p0, Lcn/domob/ui/view/SearchView$a;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcn/domob/ui/view/SearchView;->access$200(Lcn/domob/ui/view/SearchView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/ui/utility/DRes;->initGetRes(Landroid/content/Context;)Lcn/domob/ui/utility/DRes;

    move-result-object v3

    const-string v4, "u_arrow_gray"

    invoke-virtual {v3, v4}, Lcn/domob/ui/utility/DRes;->getDrawable(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 548
    :cond_6f
    iget-object v1, p0, Lcn/domob/ui/view/SearchView$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    return-object v0
.end method
