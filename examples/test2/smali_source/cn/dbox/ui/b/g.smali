.class public Lcn/dbox/ui/b/g;
.super Lcn/dbox/ui/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/b/g$a;
    }
.end annotation


# static fields
.field private static A:Lcn/dbox/core/h/d;


# instance fields
.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field a:Landroid/view/View;

.field x:Landroid/widget/LinearLayout$LayoutParams;

.field y:Lcn/dbox/core/a/c;

.field z:Lcn/dbox/ui/b/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/b/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/b/g;->A:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/dbox/ui/b/b;-><init>(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;Z)V

    .line 32
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->B:Z

    .line 33
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->C:Z

    .line 34
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->D:Z

    .line 55
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->E:Z

    .line 58
    invoke-direct {p0}, Lcn/dbox/ui/b/g;->g()V

    .line 59
    iput-boolean p4, p0, Lcn/dbox/ui/b/g;->E:Z

    .line 60
    iget-object v0, p0, Lcn/dbox/ui/b/g;->d:Lcn/dbox/ui/common/c;

    if-eqz v0, :cond_1b

    .line 61
    iget-object v0, p0, Lcn/dbox/ui/b/g;->d:Lcn/dbox/ui/common/c;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;)V

    .line 63
    :cond_1b
    iget-object v0, p0, Lcn/dbox/ui/b/g;->h:Lcn/dbox/ui/common/b;

    if-eqz v0, :cond_24

    .line 64
    iget-object v0, p0, Lcn/dbox/ui/b/g;->h:Lcn/dbox/ui/common/b;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;)V

    .line 66
    :cond_24
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/dbox/ui/b/g;->x:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/b/g;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/b/g;->f:Landroid/content/Context;

    const-string v2, "dbox_error"

    invoke-static {v1, v2}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    const-string v1, "error_image"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "dbox_error_landing"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    iget-object v0, p0, Lcn/dbox/ui/b/g;->a:Landroid/view/View;

    new-instance v1, Lcn/dbox/ui/b/g$1;

    invoke-direct {v1, p0, p2}, Lcn/dbox/ui/b/g$1;-><init>(Lcn/dbox/ui/b/g;Lcn/dbox/core/bean/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcn/dbox/ui/b/g;->h:Lcn/dbox/ui/common/b;

    if-nez v0, :cond_7f

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    const-string v0, ""

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 86
    :cond_75
    iget-object v0, p0, Lcn/dbox/ui/b/g;->i:Lcn/dbox/ui/common/d;

    if-eqz v0, :cond_7e

    .line 87
    iget-object v0, p0, Lcn/dbox/ui/b/g;->i:Lcn/dbox/ui/common/d;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;)V

    .line 94
    :cond_7e
    :goto_7e
    return-void

    .line 90
    :cond_7f
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/b/g;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)V

    .line 91
    iget-object v0, p0, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/b/g;->addView(Landroid/view/View;)V

    goto :goto_7e
.end method

.method static synthetic a(Lcn/dbox/ui/b/g;)Z
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/dbox/ui/b/g;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/dbox/ui/b/g;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/dbox/ui/b/g;->B:Z

    return p1
.end method

.method static synthetic b(Lcn/dbox/ui/b/g;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/dbox/ui/b/g;->D:Z

    return p1
.end method

.method static synthetic c(Lcn/dbox/ui/b/g;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/dbox/ui/b/g;->C:Z

    return p1
.end method

.method static synthetic f()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcn/dbox/ui/b/g;->A:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method private g()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->B:Z

    .line 40
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->C:Z

    .line 41
    iput-boolean v0, p0, Lcn/dbox/ui/b/g;->D:Z

    .line 42
    return-void
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/dbox/ui/b/g;->B:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/ui/b/g;->D:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/ui/b/g;->C:Z

    if-nez v0, :cond_e

    .line 50
    const/4 v0, 0x1

    .line 53
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/dbox/core/bean/d;Lcn/dbox/core/b;)V
    .registers 11

    .prologue
    .line 98
    new-instance v0, Lcn/dbox/core/a/c;

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/dbox/core/bean/d;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/dbox/ui/b/g$2;

    invoke-direct {v4, p0}, Lcn/dbox/ui/b/g$2;-><init>(Lcn/dbox/ui/b/g;)V

    iget-boolean v6, p0, Lcn/dbox/ui/b/g;->E:Z

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcn/dbox/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$a;Lcn/dbox/core/bean/d;Z)V

    iput-object v0, p0, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    .line 171
    iget-object v0, p0, Lcn/dbox/ui/b/g;->y:Lcn/dbox/core/a/c;

    new-instance v1, Lcn/dbox/ui/b/g$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/g$3;-><init>(Lcn/dbox/ui/b/g;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c$e;)V

    .line 190
    return-void
.end method

.method public a(Lcn/dbox/ui/b/g$a;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcn/dbox/ui/b/g;->z:Lcn/dbox/ui/b/g$a;

    .line 197
    return-void
.end method
