.class public Lcn/dbox/ui/common/f;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/common/f$a;,
        Lcn/dbox/ui/common/f$b;
    }
.end annotation


# instance fields
.field public a:Lcn/dbox/ui/common/f$b;

.field public b:Lcn/dbox/ui/common/f$a;

.field c:I

.field public d:Landroid/widget/AbsListView$OnScrollListener;

.field e:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcn/dbox/ui/common/f;->c:I

    .line 50
    new-instance v0, Lcn/dbox/ui/common/f$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/f$1;-><init>(Lcn/dbox/ui/common/f;)V

    iput-object v0, p0, Lcn/dbox/ui/common/f;->d:Landroid/widget/AbsListView$OnScrollListener;

    .line 90
    new-instance v0, Lcn/dbox/ui/common/f$2;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/f$2;-><init>(Lcn/dbox/ui/common/f;)V

    iput-object v0, p0, Lcn/dbox/ui/common/f;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    invoke-virtual {p0}, Lcn/dbox/ui/common/f;->a()V

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/f;->setVerticalScrollBarEnabled(Z)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/f;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcn/dbox/ui/common/f;->d:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/f;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 28
    iget-object v0, p0, Lcn/dbox/ui/common/f;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/f;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 29
    return-void
.end method

.method public a(Lcn/dbox/ui/common/f$a;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/dbox/ui/common/f;->b:Lcn/dbox/ui/common/f$a;

    .line 47
    return-void
.end method

.method public a(Lcn/dbox/ui/common/f$b;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcn/dbox/ui/common/f;->a:Lcn/dbox/ui/common/f$b;

    .line 38
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcn/dbox/ui/common/f;->c:I

    if-nez v0, :cond_a

    .line 82
    invoke-virtual {p0}, Lcn/dbox/ui/common/f;->getLastVisiblePosition()I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/common/f;->c:I

    .line 84
    :cond_a
    iget v0, p0, Lcn/dbox/ui/common/f;->c:I

    return v0
.end method
