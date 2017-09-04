.class public Lcn/domob/wall/core/d/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/h/d;


# instance fields
.field private b:Lcn/domob/wall/core/d/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Dialog;

.field private e:Lcn/domob/wall/core/b;

.field private f:Lcn/domob/wall/core/d/b;

.field private g:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/d/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/d/d;->a:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V
    .registers 15

    .prologue
    const/4 v10, -0x2

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcn/domob/wall/core/d/d;->c:Landroid/content/Context;

    .line 37
    new-instance v0, Lcn/domob/wall/core/d/a;

    invoke-direct {v0, p2}, Lcn/domob/wall/core/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    .line 38
    iput-object p1, p0, Lcn/domob/wall/core/d/d;->e:Lcn/domob/wall/core/b;

    .line 41
    invoke-virtual {p0, v9}, Lcn/domob/wall/core/d/d;->setBackgroundColor(I)V

    .line 43
    new-instance v0, Lcn/domob/wall/core/d/b;

    iget-object v3, p0, Lcn/domob/wall/core/d/d;->e:Lcn/domob/wall/core/b;

    iget-object v4, p0, Lcn/domob/wall/core/d/d;->c:Landroid/content/Context;

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdExtend;->getmLabel()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/domob/wall/core/d/d$1;

    invoke-direct {v6, p0}, Lcn/domob/wall/core/d/d$1;-><init>(Lcn/domob/wall/core/d/d;)V

    invoke-direct {v0, v3, v4, v5, v6}, Lcn/domob/wall/core/d/b;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/d;->f:Lcn/domob/wall/core/d/b;

    .line 56
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 60
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    iget-object v1, p0, Lcn/domob/wall/core/d/d;->f:Lcn/domob/wall/core/d/b;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/d/b;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/wall/core/d/d;->c:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/wall/core/d/d;->d:Landroid/app/Dialog;

    .line 65
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->d:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/wall/core/d/d;->f:Lcn/domob/wall/core/d/b;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/d$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/wall/core/d/d$2;-><init>(Lcn/domob/wall/core/d/d;Lcn/domob/wall/core/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a$a;)V

    .line 96
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_REQ:Lcn/domob/wall/core/DService$EWallReportType;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdExtend;->getmUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/d$3;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/d$3;-><init>(Lcn/domob/wall/core/d/d;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 112
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/d$4;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/d$4;-><init>(Lcn/domob/wall/core/d/d;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/d$5;

    invoke-direct {v1, p0, p1}, Lcn/domob/wall/core/d/d$5;-><init>(Lcn/domob/wall/core/d/d;Lcn/domob/wall/core/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a$b;)V

    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->b:Lcn/domob/wall/core/d/a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/d/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcn/domob/wall/core/d/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/d;->g:Landroid/widget/ProgressBar;

    .line 136
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object v1, p0, Lcn/domob/wall/core/d/d;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/d;->addView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/d/d;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcn/domob/wall/core/d/d;->a:Lcn/domob/wall/core/h/d;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/wall/core/d/d;)Lcn/domob/wall/core/d/b;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->f:Lcn/domob/wall/core/d/b;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/wall/core/d/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/wall/core/d/d;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/wall/core/d/d;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method
