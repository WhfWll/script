.class public Lcn/dbox/ui/a;
.super Lcn/dbox/ui/common/h;
.source "SourceFile"


# static fields
.field private static n:Lcn/dbox/core/h/d;


# instance fields
.field private o:Landroid/widget/LinearLayout$LayoutParams;

.field private p:Lcn/dbox/ui/card/b;

.field private q:Lcn/dbox/ui/c/b;

.field private r:Lcn/dbox/ui/common/j;

.field private s:Lcn/dbox/ui/b/b;

.field private t:Landroid/app/Dialog;

.field private u:Landroid/app/Dialog;

.field private v:Lcn/dbox/ui/d/c;

.field private w:Lcn/dbox/ui/d/a;

.field private x:Lcn/dbox/ui/d/g;

.field private y:Lcn/dbox/ui/d/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/a;->n:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0, p1}, Lcn/dbox/ui/common/h;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/dbox/ui/a;->s:Lcn/dbox/ui/b/b;

    .line 279
    new-instance v0, Lcn/dbox/ui/a$5;

    invoke-direct {v0, p0}, Lcn/dbox/ui/a$5;-><init>(Lcn/dbox/ui/a;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->v:Lcn/dbox/ui/d/c;

    .line 294
    new-instance v0, Lcn/dbox/ui/a$6;

    invoke-direct {v0, p0}, Lcn/dbox/ui/a$6;-><init>(Lcn/dbox/ui/a;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->w:Lcn/dbox/ui/d/a;

    .line 311
    new-instance v0, Lcn/dbox/ui/a$7;

    invoke-direct {v0, p0}, Lcn/dbox/ui/a$7;-><init>(Lcn/dbox/ui/a;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->x:Lcn/dbox/ui/d/g;

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    iget-object v0, p0, Lcn/dbox/ui/a;->e:Lcn/dbox/ui/common/i;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/a;->addView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcn/dbox/ui/a;->i:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/ui/a;->t:Landroid/app/Dialog;

    .line 70
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/a;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/ui/a;Lcn/dbox/ui/b/b;)Lcn/dbox/ui/b/b;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcn/dbox/ui/a;->s:Lcn/dbox/ui/b/b;

    return-object p1
.end method

.method private a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/b;->a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    .line 243
    return-void
.end method

.method private a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 274
    iget-object v0, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/b;->a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_9
    return-void
.end method

.method private a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V

    .line 265
    return-void
.end method

.method private a(Lcn/dbox/core/bean/d;)V
    .registers 5

    .prologue
    .line 153
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/ui/a;->u:Landroid/app/Dialog;

    .line 155
    iget-object v0, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/a$4;

    invoke-direct {v1, p0, p1}, Lcn/dbox/ui/a$4;-><init>(Lcn/dbox/ui/a;Lcn/dbox/core/bean/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/a;Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcn/dbox/ui/a;->a(Lcn/dbox/core/b$f;Lcn/dbox/core/bean/d;Lcn/dbox/core/b$e;)V

    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/a;Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcn/dbox/ui/a;->a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/a;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcn/dbox/ui/a;->a(Lcn/dbox/core/bean/a;Lcn/dbox/core/b$a;Lcn/dbox/core/b$d;)V

    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/a;Lcn/dbox/core/bean/d;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcn/dbox/ui/a;->a(Lcn/dbox/core/bean/d;)V

    return-void
.end method

.method static synthetic b(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/f;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->y:Lcn/dbox/ui/d/f;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/ui/a;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->u:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lcn/dbox/ui/a;)Lcn/dbox/ui/b/b;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->s:Lcn/dbox/ui/b/b;

    return-object v0
.end method

.method static synthetic e()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcn/dbox/ui/a;->n:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic e(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/c;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->v:Lcn/dbox/ui/d/c;

    return-object v0
.end method

.method static synthetic f(Lcn/dbox/ui/a;)Lcn/dbox/ui/d/a;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->w:Lcn/dbox/ui/d/a;

    return-object v0
.end method

.method static synthetic g(Lcn/dbox/ui/a;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcn/dbox/ui/a;->t:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcn/dbox/ui/a;->i:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcn/dbox/ui/a;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/a;->removeView(Landroid/view/View;)V

    .line 133
    :cond_9
    iget-object v0, p0, Lcn/dbox/ui/a;->j:Landroid/view/View;

    new-instance v1, Lcn/dbox/ui/a$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/a$3;-><init>(Lcn/dbox/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcn/dbox/ui/a;->j:Landroid/view/View;

    iget-object v1, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 75
    invoke-virtual {p0, p1, p3, p4, p5}, Lcn/dbox/ui/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    .line 79
    iget-object v0, p0, Lcn/dbox/ui/a;->i:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lcn/dbox/ui/a;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/a;->removeView(Landroid/view/View;)V

    .line 83
    :cond_c
    iget-object v0, p0, Lcn/dbox/ui/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 84
    iget-object v0, p0, Lcn/dbox/ui/a;->l:Lcn/dbox/ui/common/d;

    if-eqz v0, :cond_1d

    .line 85
    iget-object v0, p0, Lcn/dbox/ui/a;->l:Lcn/dbox/ui/common/d;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/a;->addView(Landroid/view/View;)V

    .line 127
    :cond_1d
    :goto_1d
    return-void

    .line 88
    :cond_1e
    const-string v0, "card"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 89
    new-instance v0, Lcn/dbox/ui/card/b;

    iget-object v1, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v2, p0, Lcn/dbox/ui/a;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/dbox/ui/a;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/dbox/ui/card/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->p:Lcn/dbox/ui/card/b;

    .line 91
    iget-object v0, p0, Lcn/dbox/ui/a;->p:Lcn/dbox/ui/card/b;

    iget-object v1, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcn/dbox/ui/a;->p:Lcn/dbox/ui/card/b;

    new-instance v1, Lcn/dbox/ui/a$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/a$1;-><init>(Lcn/dbox/ui/a;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/card/b;->a(Lcn/dbox/ui/d/b;)V

    goto :goto_1d

    .line 106
    :cond_47
    const-string v0, "flat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 107
    new-instance v0, Lcn/dbox/ui/c/b;

    iget-object v1, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    iget-object v2, p0, Lcn/dbox/ui/a;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/dbox/ui/a;->c:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/dbox/ui/c/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    .line 109
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    iget-object v1, p0, Lcn/dbox/ui/a;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    new-instance v1, Lcn/dbox/ui/a$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/a$2;-><init>(Lcn/dbox/ui/a;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/c/b;->a(Lcn/dbox/ui/d/b;)V

    .line 122
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    iget-object v1, p0, Lcn/dbox/ui/a;->w:Lcn/dbox/ui/d/a;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/c/b;->a(Lcn/dbox/ui/d/a;)V

    goto :goto_1d
.end method

.method public a(Lcn/dbox/ui/d/f;)V
    .registers 2

    .prologue
    .line 430
    iput-object p1, p0, Lcn/dbox/ui/a;->y:Lcn/dbox/ui/d/f;

    .line 431
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .line 380
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    invoke-virtual {v0}, Lcn/dbox/ui/c/b;->b()Ljava/util/HashMap;

    move-result-object v3

    .line 382
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 383
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 389
    sget-object v0, Lcn/dbox/ui/a;->n:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":container:show:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ad"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 390
    if-eqz v6, :cond_e

    .line 391
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 392
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->l()Ljava/util/ArrayList;

    move-result-object v7

    .line 394
    const/4 v1, 0x0

    move v2, v1

    :goto_5d
    if-gt v2, v6, :cond_79

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_79

    .line 395
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/dbox/core/bean/a;

    invoke-virtual {v1, v2}, Lcn/dbox/core/bean/a;->a(I)V

    .line 396
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5d

    .line 399
    :cond_79
    iget-object v1, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcn/dbox/core/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_e

    .line 403
    :cond_83
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 352
    sget-object v0, Lcn/dbox/core/b$o;->b:Lcn/dbox/core/b$o;

    invoke-direct {p0, v0, v1, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/core/b$o;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Lcn/dbox/ui/common/j;

    iget-object v1, p0, Lcn/dbox/ui/a;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/dbox/ui/common/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/a;->r:Lcn/dbox/ui/common/j;

    .line 355
    iget-object v0, p0, Lcn/dbox/ui/a;->r:Lcn/dbox/ui/common/j;

    iget-object v1, p0, Lcn/dbox/ui/a;->x:Lcn/dbox/ui/d/g;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/j;->a(Lcn/dbox/ui/d/g;)V

    .line 356
    iget-object v0, p0, Lcn/dbox/ui/a;->t:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/a;->r:Lcn/dbox/ui/common/j;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcn/dbox/ui/a;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 358
    return-void
.end method

.method public b(Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .line 408
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    invoke-virtual {v0}, Lcn/dbox/ui/c/b;->b()Ljava/util/HashMap;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 411
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 412
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 413
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 416
    sget-object v0, Lcn/dbox/ui/a;->n:Lcn/dbox/core/h/d;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":container:show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ad"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 417
    if-eqz v5, :cond_e

    .line 418
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/bean/d;

    .line 419
    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->k()Lcn/dbox/core/bean/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v6

    .line 420
    const/4 v1, 0x0

    :goto_60
    if-ge v1, v5, :cond_72

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_72

    .line 421
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 423
    :cond_72
    iget-object v1, p0, Lcn/dbox/ui/a;->d:Lcn/dbox/core/b;

    invoke-virtual {v0}, Lcn/dbox/core/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcn/dbox/core/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_e

    .line 427
    :cond_7c
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    if-eqz v0, :cond_16

    .line 366
    iget-object v0, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    invoke-virtual {v0}, Lcn/dbox/ui/c/b;->c()Ljava/util/HashMap;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcn/dbox/ui/a;->q:Lcn/dbox/ui/c/b;

    invoke-virtual {v1}, Lcn/dbox/ui/c/b;->d()Ljava/util/HashMap;

    move-result-object v1

    .line 371
    invoke-virtual {p0, v0}, Lcn/dbox/ui/a;->a(Ljava/util/HashMap;)V

    .line 372
    invoke-virtual {p0, v1}, Lcn/dbox/ui/a;->b(Ljava/util/HashMap;)V

    .line 374
    :cond_16
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 434
    iget-object v0, p0, Lcn/dbox/ui/a;->e:Lcn/dbox/ui/common/i;

    if-eqz v0, :cond_b

    .line 435
    iget-object v0, p0, Lcn/dbox/ui/a;->e:Lcn/dbox/ui/common/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/i;->setVisibility(I)V

    .line 437
    :cond_b
    return-void
.end method
