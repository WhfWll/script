.class public Lcn/dbox/ui/b/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final m:I = -0xc0a08


# instance fields
.field private final a:I

.field public b:Lcn/dbox/ui/common/f;

.field public c:Lcn/dbox/ui/card/c;

.field public d:Lcn/dbox/ui/common/c;

.field public e:Lcn/dbox/ui/d/a;

.field public f:Landroid/content/Context;

.field public g:Lcn/dbox/core/bean/d;

.field public h:Lcn/dbox/ui/common/b;

.field public i:Lcn/dbox/ui/common/d;

.field public j:Lcn/dbox/core/b;

.field public k:Landroid/widget/LinearLayout$LayoutParams;

.field public l:Z

.field n:I

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:I

.field public v:Landroid/widget/BaseAdapter;

.field w:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v1, p0, Lcn/dbox/ui/b/b;->l:Z

    .line 96
    iput v1, p0, Lcn/dbox/ui/b/b;->n:I

    .line 141
    const-string v0, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    iput-object v0, p0, Lcn/dbox/ui/b/b;->q:Ljava/lang/String;

    .line 142
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u66f4\u591a"

    iput-object v0, p0, Lcn/dbox/ui/b/b;->r:Ljava/lang/String;

    .line 190
    iput-boolean v1, p0, Lcn/dbox/ui/b/b;->t:Z

    .line 191
    iput v1, p0, Lcn/dbox/ui/b/b;->u:I

    .line 229
    iput v1, p0, Lcn/dbox/ui/b/b;->a:I

    .line 231
    new-instance v0, Lcn/dbox/ui/b/b$4;

    invoke-direct {v0, p0}, Lcn/dbox/ui/b/b$4;-><init>(Lcn/dbox/ui/b/b;)V

    iput-object v0, p0, Lcn/dbox/ui/b/b;->w:Landroid/os/Handler;

    .line 50
    iput-object p3, p0, Lcn/dbox/ui/b/b;->j:Lcn/dbox/core/b;

    .line 51
    iput-object p1, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcn/dbox/ui/b/b;->g:Lcn/dbox/core/bean/d;

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/dbox/ui/b/b;->k:Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/b;->setOrientation(I)V

    .line 60
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/b;->setBackgroundColor(I)V

    .line 62
    if-eqz p4, :cond_4a

    .line 63
    new-instance v0, Lcn/dbox/ui/common/c;

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/dbox/ui/common/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/ui/b/b;->d:Lcn/dbox/ui/common/c;

    .line 66
    :cond_4a
    new-instance v0, Lcn/dbox/ui/common/d;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/b/b;->i:Lcn/dbox/ui/common/d;

    .line 67
    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7d

    .line 71
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    new-instance v0, Lcn/dbox/ui/common/b;

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcn/dbox/ui/common/b;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d$a;Lcn/dbox/core/b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    .line 75
    iget-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    invoke-virtual {v0, v6}, Lcn/dbox/ui/common/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_7d
    invoke-virtual {p0}, Lcn/dbox/ui/b/b;->c()V

    .line 78
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcn/dbox/ui/b/b;->b:Lcn/dbox/ui/common/f;

    if-eqz v0, :cond_12

    .line 86
    iget v0, p0, Lcn/dbox/ui/b/b;->n:I

    if-eqz v0, :cond_b

    .line 87
    iget v0, p0, Lcn/dbox/ui/b/b;->n:I

    .line 93
    :goto_a
    return v0

    .line 89
    :cond_b
    iget-object v0, p0, Lcn/dbox/ui/b/b;->b:Lcn/dbox/ui/common/f;

    invoke-virtual {v0}, Lcn/dbox/ui/common/f;->b()I

    move-result v0

    goto :goto_a

    .line 90
    :cond_12
    iget-object v0, p0, Lcn/dbox/ui/b/b;->c:Lcn/dbox/ui/card/c;

    if-eqz v0, :cond_1d

    .line 91
    iget-object v0, p0, Lcn/dbox/ui/b/b;->c:Lcn/dbox/ui/card/c;

    invoke-virtual {v0}, Lcn/dbox/ui/card/c;->getGridViewLastVisiblePosition()I

    move-result v0

    goto :goto_a

    .line 93
    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 98
    iput p1, p0, Lcn/dbox/ui/b/b;->n:I

    .line 99
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;)V
    .registers 5

    .prologue
    .line 194
    iput-object p1, p0, Lcn/dbox/ui/b/b;->v:Landroid/widget/BaseAdapter;

    .line 195
    iget-object v0, p0, Lcn/dbox/ui/b/b;->j:Lcn/dbox/core/b;

    new-instance v1, Lcn/dbox/ui/b/b$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/b$3;-><init>(Lcn/dbox/ui/b/b;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/b;->a(Lcn/dbox/core/b$m;)V

    .line 225
    iget-object v0, p0, Lcn/dbox/ui/b/b;->j:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/b/b;->g:Lcn/dbox/core/bean/d;

    invoke-virtual {v1}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/dbox/ui/b/b;->u:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/dbox/ui/b/b;->u:I

    invoke-virtual {v0, v1, v2}, Lcn/dbox/core/b;->a(Ljava/lang/String;I)V

    .line 227
    return-void
.end method

.method public a(Lcn/dbox/ui/d/a;)V
    .registers 4

    .prologue
    .line 131
    iput-object p1, p0, Lcn/dbox/ui/b/b;->e:Lcn/dbox/ui/d/a;

    .line 132
    iget-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    if-eqz v0, :cond_d

    .line 133
    iget-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    iget-object v1, p0, Lcn/dbox/ui/b/b;->e:Lcn/dbox/ui/d/a;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/b;->a(Lcn/dbox/ui/d/a;)V

    .line 135
    :cond_d
    return-void
.end method

.method public a(Lcn/dbox/ui/d/c;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcn/dbox/ui/b/b;->d:Lcn/dbox/ui/common/c;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcn/dbox/ui/b/b;->d:Lcn/dbox/ui/common/c;

    invoke-virtual {v0, p1}, Lcn/dbox/ui/common/c;->a(Lcn/dbox/ui/d/c;)V

    .line 123
    :cond_9
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    if-eqz v0, :cond_b

    .line 108
    iget-object v0, p0, Lcn/dbox/ui/b/b;->h:Lcn/dbox/ui/common/b;

    invoke-virtual {v0}, Lcn/dbox/ui/common/b;->a()I

    move-result v0

    .line 110
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    const-string v2, "dbox_list_footer"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/b/b;->o:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcn/dbox/ui/b/b;->o:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    const-string v2, "more_textview"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/dbox/ui/b/b;->p:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcn/dbox/ui/b/b;->p:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/b/b$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/b$1;-><init>(Lcn/dbox/ui/b/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcn/dbox/ui/b/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/b/b$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/b$2;-><init>(Lcn/dbox/ui/b/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
