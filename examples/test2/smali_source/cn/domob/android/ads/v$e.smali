.class public Lcn/domob/android/ads/v$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcn/domob/android/ads/v$d;

.field private i:Lcn/domob/android/ads/v$c;

.field private j:Lcn/domob/android/ads/v$b;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:[I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput v0, p0, Lcn/domob/android/ads/v$e;->b:I

    .line 278
    iput v0, p0, Lcn/domob/android/ads/v$e;->c:I

    .line 279
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->d:Z

    .line 280
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->e:Z

    .line 281
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->f:Z

    .line 282
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->g:Z

    .line 289
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->k:Z

    .line 293
    const-string v0, "triangle"

    iput-object v0, p0, Lcn/domob/android/ads/v$e;->l:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/v$e;->m:[I

    .line 301
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->n:Z

    .line 305
    iput v1, p0, Lcn/domob/android/ads/v$e;->o:I

    .line 309
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->p:Z

    .line 313
    iput v1, p0, Lcn/domob/android/ads/v$e;->q:I

    .line 317
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->r:Z

    .line 321
    const-string v0, "#7f000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->s:I

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/v$e;->t:Z

    .line 329
    const-string v0, "#7f000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->u:I

    .line 333
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->v:Z

    .line 337
    iput-boolean v1, p0, Lcn/domob/android/ads/v$e;->w:Z

    .line 342
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    .line 343
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->b:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$b;)Lcn/domob/android/ads/v$b;
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->j:Lcn/domob/android/ads/v$b;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$c;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->i:Lcn/domob/android/ads/v$c;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$c;)Lcn/domob/android/ads/v$c;
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->i:Lcn/domob/android/ads/v$c;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;Lcn/domob/android/ads/v$d;)Lcn/domob/android/ads/v$d;
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->h:Lcn/domob/android/ads/v$d;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 4

    .prologue
    const/16 v2, 0x24

    .line 346
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->k:Z

    if-eqz v0, :cond_34

    .line 347
    const-string v0, "rectangle"

    iget-object v1, p0, Lcn/domob/android/ads/v$e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 348
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->x:I

    .line 349
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->y:I

    .line 350
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->m:[I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcn/domob/android/ads/v$e;->m:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    .line 351
    :cond_2e
    invoke-direct {p0}, Lcn/domob/android/ads/v$e;->b()[I

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/v$e;->m:[I

    .line 358
    :cond_34
    :goto_34
    return-void

    .line 353
    :cond_35
    const-string v0, "triangle"

    iget-object v1, p0, Lcn/domob/android/ads/v$e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 354
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->x:I

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/v$e;->y:I

    goto :goto_34
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->k:Z

    return p1
.end method

.method static synthetic a(Lcn/domob/android/ads/v$e;[I)[I
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcn/domob/android/ads/v$e;->m:[I

    return-object p1
.end method

.method static synthetic b(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->c:I

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/v$e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->n:Z

    return p1
.end method

.method private b()[I
    .registers 5

    .prologue
    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 365
    const/4 v1, 0x0

    iget v2, p0, Lcn/domob/android/ads/v$e;->b:I

    iget v3, p0, Lcn/domob/android/ads/v$e;->x:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 366
    const/4 v1, 0x1

    iget-object v2, p0, Lcn/domob/android/ads/v$e;->a:Landroid/content/Context;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcn/domob/android/i/g;->a(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcn/domob/android/ads/v$e;->y:I

    add-int/2addr v2, v3

    neg-int v2, v2

    aput v2, v0, v1

    .line 367
    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->o:I

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/v$e;)V
    .registers 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcn/domob/android/ads/v$e;->a()V

    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->p:Z

    return p1
.end method

.method static synthetic d(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->q:I

    return p1
.end method

.method static synthetic d(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$b;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->j:Lcn/domob/android/ads/v$b;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->f:Z

    return p1
.end method

.method static synthetic e(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->s:I

    return p1
.end method

.method static synthetic e(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->v:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->d:Z

    return p1
.end method

.method static synthetic f(Lcn/domob/android/ads/v$e;I)I
    .registers 2

    .prologue
    .line 269
    iput p1, p0, Lcn/domob/android/ads/v$e;->u:I

    return p1
.end method

.method static synthetic f(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->w:Z

    return v0
.end method

.method static synthetic f(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->g:Z

    return p1
.end method

.method static synthetic g(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->k:Z

    return v0
.end method

.method static synthetic g(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->e:Z

    return p1
.end method

.method static synthetic h(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->t:Z

    return v0
.end method

.method static synthetic h(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->r:Z

    return p1
.end method

.method static synthetic i(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->u:I

    return v0
.end method

.method static synthetic i(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->t:Z

    return p1
.end method

.method static synthetic j(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->s:I

    return v0
.end method

.method static synthetic j(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->w:Z

    return p1
.end method

.method static synthetic k(Lcn/domob/android/ads/v$e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/ads/v$e;Z)Z
    .registers 2

    .prologue
    .line 269
    iput-boolean p1, p0, Lcn/domob/android/ads/v$e;->v:Z

    return p1
.end method

.method static synthetic l(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->p:Z

    return v0
.end method

.method static synthetic m(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->q:I

    return v0
.end method

.method static synthetic n(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->x:I

    return v0
.end method

.method static synthetic o(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->b:I

    return v0
.end method

.method static synthetic p(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->y:I

    return v0
.end method

.method static synthetic q(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->c:I

    return v0
.end method

.method static synthetic r(Lcn/domob/android/ads/v$e;)[I
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->m:[I

    return-object v0
.end method

.method static synthetic s(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->f:Z

    return v0
.end method

.method static synthetic t(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->d:Z

    return v0
.end method

.method static synthetic u(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->g:Z

    return v0
.end method

.method static synthetic v(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->e:Z

    return v0
.end method

.method static synthetic w(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->r:Z

    return v0
.end method

.method static synthetic x(Lcn/domob/android/ads/v$e;)I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcn/domob/android/ads/v$e;->o:I

    return v0
.end method

.method static synthetic y(Lcn/domob/android/ads/v$e;)Lcn/domob/android/ads/v$d;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/v$e;->h:Lcn/domob/android/ads/v$d;

    return-object v0
.end method

.method static synthetic z(Lcn/domob/android/ads/v$e;)Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcn/domob/android/ads/v$e;->n:Z

    return v0
.end method
