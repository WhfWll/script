.class public Lcn/dbox/ui/c/b;
.super Lcn/dbox/ui/common/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/c/b$a;
    }
.end annotation


# instance fields
.field public n:I

.field o:Z

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcn/dbox/ui/d/a;

.field private r:Lcn/dbox/ui/c/a;

.field private s:Lcn/dbox/ui/common/g;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/ui/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 7
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
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/dbox/ui/common/h;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    .line 39
    iput v1, p0, Lcn/dbox/ui/c/b;->n:I

    .line 40
    iput-boolean v1, p0, Lcn/dbox/ui/c/b;->o:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/c/b;->p:Ljava/util/HashMap;

    .line 45
    iget-object v0, p0, Lcn/dbox/ui/c/b;->m:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const v0, -0xc0a08

    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/b;->setBackgroundColor(I)V

    .line 47
    invoke-static {p2}, Lcn/dbox/ui/common/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, p3}, Lcn/dbox/ui/c/b;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/common/g;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dbox/ui/c/b;->s:Lcn/dbox/ui/common/g;

    return-object v0
.end method

.method static synthetic b(Lcn/dbox/ui/c/b;)Lcn/dbox/ui/c/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dbox/ui/c/b;->r:Lcn/dbox/ui/c/a;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/ui/c/b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcn/dbox/ui/c/b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/ui/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 171
    const/4 v1, 0x0

    move v2, v3

    .line 172
    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_99

    .line 173
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v5, "web"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 174
    new-instance v1, Lcn/dbox/ui/b/g;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    iget-object v5, p0, Lcn/dbox/ui/c/b;->d:Lcn/dbox/core/b;

    invoke-direct {v1, p1, v0, v5, v3}, Lcn/dbox/ui/b/g;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    move-object v0, v1

    .line 183
    :goto_2e
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_8

    .line 175
    :cond_36
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v5, "list"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 176
    new-instance v1, Lcn/dbox/ui/b/e;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    iget-object v5, p0, Lcn/dbox/ui/c/b;->d:Lcn/dbox/core/b;

    invoke-direct {v1, p1, v0, v5, v3}, Lcn/dbox/ui/b/e;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    move-object v0, v1

    goto :goto_2e

    .line 177
    :cond_57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v5, "feeds"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 178
    new-instance v1, Lcn/dbox/ui/b/c;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    iget-object v5, p0, Lcn/dbox/ui/c/b;->d:Lcn/dbox/core/b;

    invoke-direct {v1, p1, v0, v5, v3}, Lcn/dbox/ui/b/c;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    move-object v0, v1

    goto :goto_2e

    .line 180
    :cond_78
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->j()Ljava/lang/String;

    move-result-object v0

    const-string v5, "card"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 181
    new-instance v1, Lcn/dbox/ui/b/a;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    iget-object v5, p0, Lcn/dbox/ui/c/b;->d:Lcn/dbox/core/b;

    invoke-direct {v1, p1, v0, v5, v3}, Lcn/dbox/ui/b/a;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    move-object v0, v1

    goto :goto_2e

    .line 185
    :cond_99
    return-object v4

    :cond_9a
    move-object v0, v1

    goto :goto_2e
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p2, :cond_1f

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 59
    new-instance v0, Lcn/dbox/ui/c/a;

    invoke-direct {v0, p1, p2}, Lcn/dbox/ui/c/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/dbox/ui/c/b;->r:Lcn/dbox/ui/c/a;

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/c/b;->r:Lcn/dbox/ui/c/a;

    new-instance v1, Lcn/dbox/ui/c/b$1;

    invoke-direct {v1, p0, p2}, Lcn/dbox/ui/c/b$1;-><init>(Lcn/dbox/ui/c/b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/c/a;->a(Lcn/dbox/ui/c/a$a;)V

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/c/b;->r:Lcn/dbox/ui/c/a;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/b;->addView(Landroid/view/View;)V

    .line 84
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/c/b;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcn/dbox/ui/common/g;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/c/b;->s:Lcn/dbox/ui/common/g;

    .line 85
    iget-object v0, p0, Lcn/dbox/ui/c/b;->s:Lcn/dbox/ui/common/g;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/c/b;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public a(Lcn/dbox/ui/d/a;)V
    .registers 4

    .prologue
    .line 193
    iput-object p1, p0, Lcn/dbox/ui/c/b;->q:Lcn/dbox/ui/d/a;

    .line 194
    iget-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 195
    iget-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/b;

    .line 196
    invoke-virtual {v0, p1}, Lcn/dbox/ui/b/b;->a(Lcn/dbox/ui/d/a;)V

    goto :goto_c

    .line 199
    :cond_1c
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 243
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    if-le v0, p2, :cond_17

    move p2, v0

    .line 245
    :cond_17
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_20
    return-void

    .line 247
    :cond_21
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcn/dbox/ui/common/g;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/d;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;)",
            "Lcn/dbox/ui/common/g;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 122
    new-instance v0, Lcn/dbox/ui/common/g;

    invoke-direct {v0, p1}, Lcn/dbox/ui/common/g;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcn/dbox/ui/c/b;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    .line 128
    new-instance v1, Lcn/dbox/ui/a/d;

    iget-object v2, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcn/dbox/ui/a/d;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/g;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 130
    new-instance v1, Lcn/dbox/ui/d/d;

    new-instance v2, Lcn/dbox/ui/c/b$2;

    invoke-direct {v2, p0, p2}, Lcn/dbox/ui/c/b$2;-><init>(Lcn/dbox/ui/c/b;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Lcn/dbox/ui/d/d;-><init>(Lcn/dbox/ui/d/d$a;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/g;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 165
    return-object v0
.end method

.method public b()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/dbox/core/bean/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 106
    iget-object v2, p0, Lcn/dbox/ui/c/b;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 108
    :cond_1c
    iget-object v0, p0, Lcn/dbox/ui/c/b;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 258
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 259
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 260
    if-le v0, p2, :cond_17

    move p2, v0

    .line 261
    :cond_17
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_20
    return-void

    .line 263
    :cond_21
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method public c()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_23

    .line 209
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    iget v1, p0, Lcn/dbox/ui/c/b;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    iget v2, p0, Lcn/dbox/ui/c/b;->n:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->a()I

    move-result v0

    .line 211
    invoke-virtual {p0, v1, v0}, Lcn/dbox/ui/c/b;->a(Ljava/lang/String;I)V

    .line 214
    :cond_23
    iget-object v0, p0, Lcn/dbox/ui/c/b;->v:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    if-eqz v0, :cond_23

    .line 227
    iget-object v0, p0, Lcn/dbox/ui/c/b;->t:Ljava/util/ArrayList;

    iget v1, p0, Lcn/dbox/ui/c/b;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->d()Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcn/dbox/ui/c/b;->u:Ljava/util/ArrayList;

    iget v2, p0, Lcn/dbox/ui/c/b;->n:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/b/b;

    invoke-virtual {v0}, Lcn/dbox/ui/b/b;->b()I

    move-result v0

    .line 229
    invoke-virtual {p0, v1, v0}, Lcn/dbox/ui/c/b;->b(Ljava/lang/String;I)V

    .line 232
    :cond_23
    iget-object v0, p0, Lcn/dbox/ui/c/b;->w:Ljava/util/HashMap;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcn/dbox/ui/c/b;->n:I

    return v0
.end method
