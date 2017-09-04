.class public Lcn/dbox/ui/b/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/b/d$a;
    }
.end annotation


# static fields
.field private static g:Lcn/dbox/core/h/d;


# instance fields
.field a:Landroid/widget/LinearLayout$LayoutParams;

.field b:Lcn/dbox/core/a/c;

.field c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field public e:Lcn/dbox/core/b;

.field f:Lcn/dbox/ui/b/d$a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/b/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/b/d;->g:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->h:Z

    .line 27
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->i:Z

    .line 28
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->j:Z

    .line 53
    const-string v0, "http://srp.12306.moxz.net/landing/"

    iput-object v0, p0, Lcn/dbox/ui/b/d;->d:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcn/dbox/ui/b/d;->c:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcn/dbox/ui/b/d;->k:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcn/dbox/ui/b/d;->e:Lcn/dbox/core/b;

    .line 62
    invoke-direct {p0}, Lcn/dbox/ui/b/d;->b()V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/dbox/ui/b/d;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcn/dbox/ui/b/d;->a(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V

    .line 68
    return-void
.end method

.method static synthetic a()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcn/dbox/ui/b/d;->g:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/ui/b/d;)Z
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/dbox/ui/b/d;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/dbox/ui/b/d;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/dbox/ui/b/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcn/dbox/ui/b/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/dbox/ui/b/d;->k:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->h:Z

    .line 35
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->i:Z

    .line 36
    iput-boolean v0, p0, Lcn/dbox/ui/b/d;->j:Z

    .line 37
    return-void
.end method

.method static synthetic b(Lcn/dbox/ui/b/d;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/dbox/ui/b/d;->j:Z

    return p1
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/dbox/ui/b/d;->h:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/ui/b/d;->j:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcn/dbox/ui/b/d;->i:Z

    if-nez v0, :cond_e

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic c(Lcn/dbox/ui/b/d;Z)Z
    .registers 2

    .prologue
    .line 19
    iput-boolean p1, p0, Lcn/dbox/ui/b/d;->i:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcn/dbox/core/b;)V
    .registers 11

    .prologue
    .line 72
    new-instance v0, Lcn/dbox/core/a/c;

    new-instance v4, Lcn/dbox/ui/b/d$1;

    invoke-direct {v4, p0}, Lcn/dbox/ui/b/d$1;-><init>(Lcn/dbox/ui/b/d;)V

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcn/dbox/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$c;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcn/dbox/ui/b/d;->b:Lcn/dbox/core/a/c;

    .line 143
    iget-object v0, p0, Lcn/dbox/ui/b/d;->b:Lcn/dbox/core/a/c;

    new-instance v1, Lcn/dbox/ui/b/d$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/d$2;-><init>(Lcn/dbox/ui/b/d;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c$e;)V

    .line 164
    iget-object v0, p0, Lcn/dbox/ui/b/d;->b:Lcn/dbox/core/a/c;

    invoke-virtual {v0, p2}, Lcn/dbox/core/a/c;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcn/dbox/ui/b/d;->b:Lcn/dbox/core/a/c;

    iget-object v1, p0, Lcn/dbox/ui/b/d;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcn/dbox/ui/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method

.method public a(Lcn/dbox/ui/b/d$a;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcn/dbox/ui/b/d;->f:Lcn/dbox/ui/b/d$a;

    .line 175
    return-void
.end method
