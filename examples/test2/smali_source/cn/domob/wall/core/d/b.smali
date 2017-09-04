.class public Lcn/domob/wall/core/d/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/d/b$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/wall/core/h/d;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcn/domob/wall/core/d/b$a;

.field c:Lcn/domob/wall/core/d/c;

.field private e:Lcn/domob/wall/core/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/d/b;->d:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V
    .registers 10

    .prologue
    const/16 v4, 0xb

    const/4 v3, -0x1

    .line 34
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcn/domob/wall/core/d/b;->a:Landroid/content/Context;

    .line 36
    new-instance v0, Lcn/domob/wall/core/d/a;

    invoke-direct {v0, p2}, Lcn/domob/wall/core/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    .line 37
    iput-object p4, p0, Lcn/domob/wall/core/d/b;->b:Lcn/domob/wall/core/d/b$a;

    .line 38
    invoke-virtual {p0, v3}, Lcn/domob/wall/core/d/b;->setBackgroundColor(I)V

    .line 39
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/b$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/wall/core/d/b$1;-><init>(Lcn/domob/wall/core/d/b;Lcn/domob/wall/core/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a$a;)V

    .line 49
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/b$2;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/b$2;-><init>(Lcn/domob/wall/core/d/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->a(Lcn/domob/wall/core/d/a$b;)V

    .line 56
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/b$3;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/b$3;-><init>(Lcn/domob/wall/core/d/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 64
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/b$4;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/b$4;-><init>(Lcn/domob/wall/core/d/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 77
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    new-instance v1, Lcn/domob/wall/core/d/b$5;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/d/b$5;-><init>(Lcn/domob/wall/core/d/b;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/d/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    new-instance v0, Lcn/domob/wall/core/d/c;

    iget-object v1, p0, Lcn/domob/wall/core/d/b;->a:Landroid/content/Context;

    new-instance v2, Lcn/domob/wall/core/d/b$6;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/d/b$6;-><init>(Lcn/domob/wall/core/d/b;)V

    invoke-direct {v0, v1, p3, v2}, Lcn/domob/wall/core/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/c$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    .line 130
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/c;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 133
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    iget-object v2, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/b;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/d/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/d/b;)Lcn/domob/wall/core/d/a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcn/domob/wall/core/d/b;->d:Lcn/domob/wall/core/h/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 157
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 158
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0, v2, v2}, Lcn/domob/wall/core/d/c;->a(ZZ)V

    .line 169
    :goto_17
    return-void

    .line 160
    :cond_18
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0, v2, v1}, Lcn/domob/wall/core/d/c;->a(ZZ)V

    goto :goto_17

    .line 163
    :cond_1e
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {v0}, Lcn/domob/wall/core/d/a;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 164
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/d/c;->a(ZZ)V

    goto :goto_17

    .line 166
    :cond_2c
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0, v1, v1}, Lcn/domob/wall/core/d/c;->a(ZZ)V

    goto :goto_17
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/wall/core/d/b;->e:Lcn/domob/wall/core/d/a;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 149
    return-void
.end method
