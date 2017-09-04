.class public Lcn/dbox/ui/card/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcn/dbox/ui/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/c;Lcn/dbox/core/b;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcn/dbox/ui/card/e;->b:I

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/card/e;->a(Landroid/content/Context;Lcn/dbox/core/bean/c;Lcn/dbox/core/b;)V

    .line 39
    iget-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 40
    iget-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/card/e;->addView(Landroid/view/View;)V

    .line 42
    :cond_12
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/card/e;)Lcn/dbox/ui/d/b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/dbox/ui/card/e;->f:Lcn/dbox/ui/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/dbox/core/bean/c;Lcn/dbox/core/b;)V
    .registers 7

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dbox_card_channel"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    const-string v1, "se_channel_header_logo"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/dbox/ui/card/e;->d:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    const-string v1, "se_channel_header_name"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/card/e;->e:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcn/dbox/ui/card/e;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p2}, Lcn/dbox/core/bean/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lcn/dbox/core/bean/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcn/dbox/ui/card/e;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcn/dbox/ui/card/e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcn/dbox/ui/card/e;->c:Landroid/view/View;

    const-string v1, "card_view"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/card/ScrollCardView;

    .line 78
    iget v1, p0, Lcn/dbox/ui/card/e;->b:I

    invoke-virtual {v0, v1}, Lcn/dbox/ui/card/ScrollCardView;->setNumColumns(I)V

    .line 79
    invoke-virtual {p2}, Lcn/dbox/core/bean/c;->d()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/dbox/ui/card/e;->a:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Lcn/dbox/ui/a/b;

    iget-object v2, p0, Lcn/dbox/ui/card/e;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v2, p3}, Lcn/dbox/ui/a/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/card/ScrollCardView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    new-instance v1, Lcn/dbox/ui/card/e$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/card/e$1;-><init>(Lcn/dbox/ui/card/e;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/card/ScrollCardView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    return-void
.end method

.method public a(Lcn/dbox/ui/d/b;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcn/dbox/ui/card/e;->f:Lcn/dbox/ui/d/b;

    .line 107
    return-void
.end method
