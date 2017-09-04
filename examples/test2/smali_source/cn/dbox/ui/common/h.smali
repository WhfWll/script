.class public Lcn/dbox/ui/common/h;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcn/dbox/core/b;

.field public e:Lcn/dbox/ui/common/i;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/ui/card/e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcn/dbox/ui/d/b;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/content/Context;

.field public l:Lcn/dbox/ui/common/d;

.field public m:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0, v0}, Lcn/dbox/ui/common/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/common/h;->f:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcn/dbox/ui/common/h;->b:Ljava/util/ArrayList;

    .line 50
    invoke-static {p2}, Lcn/dbox/ui/common/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/h;->a:Ljava/util/ArrayList;

    .line 51
    iput-object p4, p0, Lcn/dbox/ui/common/h;->d:Lcn/dbox/core/b;

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/dbox/ui/common/h;->m:Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    iget-object v0, p0, Lcn/dbox/ui/common/h;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/h;->setOrientation(I)V

    .line 57
    new-instance v0, Lcn/dbox/ui/common/i;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/common/h;->e:Lcn/dbox/ui/common/i;

    .line 59
    iget-object v0, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    const-string v2, "dbox_progressbar"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/h;->h:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    const-string v2, "dbox_loading"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/h;->i:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    const-string v2, "dbox_error"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/h;->j:Landroid/view/View;

    .line 65
    new-instance v0, Lcn/dbox/ui/common/d;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/common/h;->l:Lcn/dbox/ui/common/d;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Lcn/dbox/core/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcn/dbox/ui/common/h;->k:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcn/dbox/ui/common/h;->b:Ljava/util/ArrayList;

    .line 72
    invoke-static {p2}, Lcn/dbox/ui/common/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/h;->a:Ljava/util/ArrayList;

    .line 73
    iput-object p4, p0, Lcn/dbox/ui/common/h;->d:Lcn/dbox/core/b;

    .line 74
    return-void
.end method

.method public a(Lcn/dbox/ui/d/b;)V
    .registers 4

    .prologue
    .line 77
    iput-object p1, p0, Lcn/dbox/ui/common/h;->g:Lcn/dbox/ui/d/b;

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcn/dbox/ui/common/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/common/h;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/card/e;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/card/e;->a(Lcn/dbox/ui/d/b;)V

    .line 78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 81
    :cond_1b
    return-void
.end method

.method public a(Lcn/dbox/ui/d/e;)V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcn/dbox/ui/common/h;->e:Lcn/dbox/ui/common/i;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/common/i;->a(Lcn/dbox/ui/d/e;)V

    .line 85
    return-void
.end method
