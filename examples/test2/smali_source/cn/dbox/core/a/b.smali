.class public Lcn/dbox/core/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/a/b$a;
    }
.end annotation


# static fields
.field private static d:Lcn/dbox/core/h/d; = null

.field private static final k:I = 0x64


# instance fields
.field a:Lcn/dbox/core/bean/a;

.field b:Lcn/dbox/core/a/c;

.field c:Lcn/dbox/ui/common/c;

.field private e:Landroid/content/Context;

.field private f:Lcn/dbox/core/a/c$b;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/view/animation/Animation;

.field private j:Z

.field private l:Lcn/dbox/core/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/a/b;->d:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$b;Lcn/dbox/core/bean/a;Lcn/dbox/core/a/b$a;)V
    .registers 14

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/a/b;->j:Z

    .line 51
    new-instance v0, Lcn/dbox/core/a/c;

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcn/dbox/core/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/dbox/core/a/c$b;Lcn/dbox/core/bean/a;Z)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->b:Lcn/dbox/core/a/c;

    .line 53
    iget-object v0, p0, Lcn/dbox/core/a/b;->b:Lcn/dbox/core/a/c;

    new-instance v1, Lcn/dbox/core/a/b$1;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/b$1;-><init>(Lcn/dbox/core/a/b;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/a/c;->a(Lcn/dbox/core/a/c$e;)V

    .line 74
    iput-object p5, p0, Lcn/dbox/core/a/b;->a:Lcn/dbox/core/bean/a;

    .line 75
    iput-object p6, p0, Lcn/dbox/core/a/b;->l:Lcn/dbox/core/a/b$a;

    .line 76
    iput-object p1, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcn/dbox/core/a/b;->f:Lcn/dbox/core/a/c$b;

    .line 79
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/a/b;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(II)Z
    .registers 5

    .prologue
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 196
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 197
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 198
    if-ne v1, v0, :cond_16

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic a(Lcn/dbox/core/a/b;Z)Z
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/dbox/core/a/b;->j:Z

    return p1
.end method

.method static synthetic b(Lcn/dbox/core/a/b;)Lcn/dbox/core/a/c$b;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcn/dbox/core/a/b;->f:Lcn/dbox/core/a/c$b;

    return-object v0
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v0, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 186
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/dbox/core/a/b;->a(II)Z

    move-result v0

    .line 190
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static synthetic c(Lcn/dbox/core/a/b;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/dbox/core/a/b;->j:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    sget-object v0, Lcn/dbox/core/a/b;->d:Lcn/dbox/core/h/d;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/dbox/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    .line 93
    new-instance v0, Lcn/dbox/ui/common/c;

    iget-object v3, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    iget-object v4, p0, Lcn/dbox/core/a/b;->a:Lcn/dbox/core/bean/a;

    invoke-virtual {v4}, Lcn/dbox/core/bean/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcn/dbox/ui/common/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    .line 95
    iget-object v0, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    invoke-virtual {v0, v7}, Lcn/dbox/ui/common/c;->b(Z)V

    .line 96
    iget-object v0, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    invoke-virtual {v0, v7}, Lcn/dbox/ui/common/c;->a(Z)V

    .line 97
    iget-object v0, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    const/16 v3, 0x270f

    invoke-virtual {v0, v3}, Lcn/dbox/ui/common/c;->setId(I)V

    .line 98
    iget-object v0, p0, Lcn/dbox/core/a/b;->l:Lcn/dbox/core/a/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v0

    sget-object v3, Lcn/dbox/core/a/b$a;->b:Lcn/dbox/core/a/b$a;

    invoke-virtual {v3}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_4b

    .line 99
    iget-object v0, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 101
    :cond_4b
    iget-object v0, p0, Lcn/dbox/core/a/b;->c:Lcn/dbox/ui/common/c;

    new-instance v3, Lcn/dbox/core/a/b$2;

    invoke-direct {v3, p0}, Lcn/dbox/core/a/b$2;-><init>(Lcn/dbox/core/a/b;)V

    invoke-virtual {v0, v3}, Lcn/dbox/ui/common/c;->a(Lcn/dbox/ui/d/c;)V

    .line 114
    iget-object v0, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    iget-object v3, p0, Lcn/dbox/core/a/b;->l:Lcn/dbox/core/a/b$a;

    invoke-virtual {v3}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v3

    sget-object v4, Lcn/dbox/core/a/b$a;->b:Lcn/dbox/core/a/b$a;

    invoke-virtual {v4}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_78

    .line 120
    const/4 v3, 0x3

    const/16 v4, 0x270f

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    :cond_78
    iget-object v3, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/dbox/core/a/b;->b:Lcn/dbox/core/a/c;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    invoke-direct {p0}, Lcn/dbox/core/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 125
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    .line 132
    :goto_91
    iget-object v0, p0, Lcn/dbox/core/a/b;->l:Lcn/dbox/core/a/b$a;

    invoke-virtual {v0}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v0

    sget-object v3, Lcn/dbox/core/a/b$a;->c:Lcn/dbox/core/a/b$a;

    invoke-virtual {v3}, Lcn/dbox/core/a/b$a;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_ff

    .line 133
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    .line 137
    iget-object v0, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    iget-object v0, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    :goto_b9
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    .line 150
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 151
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 155
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/core/a/b;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    new-instance v1, Lcn/dbox/core/a/b$3;

    invoke-direct {v1, p0}, Lcn/dbox/core/a/b$3;-><init>(Lcn/dbox/core/a/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    return-object v0

    .line 128
    :cond_f2
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/dbox/core/a/b;->e:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    goto :goto_91

    .line 140
    :cond_ff
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    move v5, v1

    move v7, v1

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v4, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    .line 144
    iget-object v0, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    iget-object v0, p0, Lcn/dbox/core/a/b;->b:Lcn/dbox/core/a/c;

    iget-object v1, p0, Lcn/dbox/core/a/b;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcn/dbox/core/a/c;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b9
.end method

.method public b()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 207
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    iget-object v0, p0, Lcn/dbox/core/a/b;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_11
    return-void
.end method
