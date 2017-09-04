.class Lcn/domob/ui/view/DownloadView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/DownloadView;->getDownloadView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DownloadView;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 146
    # getter for: Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/DownloadView;->access$100()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ll_sliding_menu"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    .line 149
    new-array v2, v4, [I

    aput p3, v2, v7

    aput p4, v2, v3

    .line 150
    new-array v1, v4, [I

    aput p3, v1, v7

    aput p4, v1, v3

    .line 151
    new-instance v3, Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    invoke-direct {v3, v0, p3, p4}, Lcn/domob/ui/view/DownloadView$a;-><init>(Lcn/domob/ui/view/DownloadView;II)V

    .line 153
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_c2

    .line 154
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_ba

    .line 155
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "rl_menu_delete"

    invoke-static {v1, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->b:Landroid/widget/RelativeLayout;

    .line 157
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "rl_menu_detail"

    invoke-static {v1, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->c:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_b9
    return v7

    .line 162
    :cond_ba
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b9

    .line 167
    :cond_c2
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 168
    :goto_d0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 171
    iget-object v5, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v5, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    goto :goto_d0

    .line 174
    :cond_ef
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # invokes: Lcn/domob/ui/view/DownloadView;->arrayEquals([I[I)Z
    invoke-static {v0, v1, v2}, Lcn/domob/ui/view/DownloadView;->access$400(Lcn/domob/ui/view/DownloadView;[I[I)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 175
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_109

    .line 176
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b9

    .line 178
    :cond_109
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b9

    .line 183
    :cond_111
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v6, :cond_17b

    .line 186
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "rl_menu_delete"

    invoke-static {v1, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->b:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "rl_menu_detail"

    invoke-static {v1, v4}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->c:Landroid/widget/RelativeLayout;

    .line 192
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    .line 195
    :cond_17b
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$3;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b9
.end method
