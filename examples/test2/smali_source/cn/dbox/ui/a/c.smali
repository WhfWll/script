.class public Lcn/dbox/ui/a/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/a/c$a;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/dbox/core/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/high16 v0, 0x3e200000

    iput v0, p0, Lcn/dbox/ui/a/c;->a:F

    .line 29
    const/high16 v0, 0x3ea00000

    iput v0, p0, Lcn/dbox/ui/a/c;->b:F

    .line 31
    iput-object p1, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcn/dbox/ui/a/c;->d:Ljava/util/ArrayList;

    .line 33
    iput-object p3, p0, Lcn/dbox/ui/a/c;->e:Lcn/dbox/core/b;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 4

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x1

    .line 39
    iget-object v2, p0, Lcn/dbox/ui/a/c;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 40
    iget-object v2, p0, Lcn/dbox/ui/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_11

    .line 46
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 43
    goto :goto_10

    :cond_13
    move v0, v1

    .line 46
    goto :goto_10
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 63
    if-nez p2, :cond_8b

    .line 64
    iget-object v0, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    const-string v2, "dbox_gallery_item"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 69
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Lcn/dbox/ui/a/c$a;

    invoke-direct {v1, p0, v3}, Lcn/dbox/ui/a/c$a;-><init>(Lcn/dbox/ui/a/c;Lcn/dbox/ui/a/c$1;)V

    .line 74
    iget-object v0, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    const-string v2, "gallery_image"

    invoke-static {v0, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/dbox/ui/a/c$a;->a:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/a/c;->e:Lcn/dbox/core/b;

    invoke-virtual {v0}, Lcn/dbox/core/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "32:5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    const/high16 v2, 0x3e200000

    invoke-static {v0, v2}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;F)I

    move-result v0

    .line 84
    :goto_4a
    iget-object v2, v1, Lcn/dbox/ui/a/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_55
    iget-object v0, p0, Lcn/dbox/ui/a/c;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/dbox/ui/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v2, v1, Lcn/dbox/ui/a/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcn/dbox/ui/a/c;->e:Lcn/dbox/core/b;

    iget-object v3, v1, Lcn/dbox/ui/a/c$a;->a:Landroid/widget/ImageView;

    new-instance v4, Lcn/dbox/ui/a/c$1;

    invoke-direct {v4, p0}, Lcn/dbox/ui/a/c$1;-><init>(Lcn/dbox/ui/a/c;)V

    invoke-virtual {v2, v0, v3, v4}, Lcn/dbox/core/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/dbox/core/b$k;)V

    .line 112
    iget-object v0, v1, Lcn/dbox/ui/a/c$a;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    return-object p2

    .line 82
    :cond_82
    iget-object v0, p0, Lcn/dbox/ui/a/c;->c:Landroid/content/Context;

    const/high16 v2, 0x3ea00000

    invoke-static {v0, v2}, Lcn/dbox/ui/common/k;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_4a

    .line 88
    :cond_8b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/a/c$a;

    move-object v1, v0

    goto :goto_55
.end method
