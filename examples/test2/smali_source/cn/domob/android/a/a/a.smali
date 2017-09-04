.class public Lcn/domob/android/a/a/a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/a/a/a$a;
    }
.end annotation


# static fields
.field private static final b:I = 0x64

.field private static final j:I

.field private static final k:I = 0x4b

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = -0x1

.field private static final o:Ljava/lang/String; = "\u79d2"


# instance fields
.field private a:Lcn/domob/android/i/f;

.field private c:Landroid/content/Context;

.field private d:Lcn/domob/android/a/a/a$a;

.field private e:Ljava/util/Timer;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/domob/android/a/a/a;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    .line 83
    iput-object p1, p0, Lcn/domob/android/a/a/a;->c:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcn/domob/android/a/a/a;->g:I

    .line 85
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->e()I

    move-result v0

    iput v0, p0, Lcn/domob/android/a/a/a;->h:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 87
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->f()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcn/domob/android/a/a/a;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->k()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/a/a/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/a/a/a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcn/domob/android/a/a/a;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()I
    .registers 3

    .prologue
    .line 94
    iget v0, p0, Lcn/domob/android/a/a/a;->g:I

    div-int/lit16 v1, v0, 0x3e8

    iget v0, p0, Lcn/domob/android/a/a/a;->g:I

    rem-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->g()V

    .line 102
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->h()V

    .line 103
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 109
    sget v0, Lcn/domob/android/a/a/a;->j:I

    invoke-virtual {p0, v0}, Lcn/domob/android/a/a/a;->setBackgroundColor(I)V

    .line 110
    invoke-virtual {p0}, Lcn/domob/android/a/a/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    const/4 v1, -0x2

    .line 117
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/domob/android/a/a/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/a/a/a;->f:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcn/domob/android/a/a/a;->f:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcn/domob/android/a/a/a;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/domob/android/a/a/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcn/domob/android/a/a/a;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcn/domob/android/a/a/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/domob/android/a/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x64

    .line 151
    iget-object v0, p0, Lcn/domob/android/a/a/a;->e:Ljava/util/Timer;

    if-nez v0, :cond_1f

    .line 152
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "create countdown Timer"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcn/domob/android/a/a/a$1;

    invoke-direct {v1, p0}, Lcn/domob/android/a/a/a$1;-><init>(Lcn/domob/android/a/a/a;)V

    .line 160
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/domob/android/a/a/a;->e:Ljava/util/Timer;

    .line 165
    iget-object v0, p0, Lcn/domob/android/a/a/a;->e:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 167
    :cond_1f
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 173
    iget v0, p0, Lcn/domob/android/a/a/a;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 174
    iget v0, p0, Lcn/domob/android/a/a/a;->g:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcn/domob/android/a/a/a;->g:I

    .line 175
    iget v0, p0, Lcn/domob/android/a/a/a;->g:I

    if-lez v0, :cond_1d

    .line 176
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->e()I

    move-result v0

    .line 177
    iget v1, p0, Lcn/domob/android/a/a/a;->h:I

    if-ge v0, v1, :cond_1c

    .line 178
    iput v0, p0, Lcn/domob/android/a/a/a;->h:I

    .line 179
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->l()V

    .line 192
    :cond_1c
    :goto_1c
    return-void

    .line 182
    :cond_1d
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown finished"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 185
    iget-object v0, p0, Lcn/domob/android/a/a/a;->d:Lcn/domob/android/a/a/a$a;

    if-eqz v0, :cond_1c

    .line 186
    iget-object v0, p0, Lcn/domob/android/a/a/a;->d:Lcn/domob/android/a/a/a$a;

    invoke-interface {v0}, Lcn/domob/android/a/a/a$a;->a()V

    goto :goto_1c
.end method

.method private l()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/a/a/a;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/a/a/a$2;

    invoke-direct {v1, p0}, Lcn/domob/android/a/a/a$2;-><init>(Lcn/domob/android/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private m()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown destroy"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 229
    iget-object v0, p0, Lcn/domob/android/a/a/a;->e:Ljava/util/Timer;

    if-eqz v0, :cond_13

    .line 230
    iget-object v0, p0, Lcn/domob/android/a/a/a;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 233
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/a/a/a;->a(Lcn/domob/android/a/a/a$a;)V

    .line 234
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcn/domob/android/a/a/a;->g:I

    return v0
.end method

.method public a(Lcn/domob/android/a/a/a$a;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcn/domob/android/a/a/a;->d:Lcn/domob/android/a/a/a$a;

    .line 79
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown start"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 144
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->j()V

    .line 145
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown paused"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 213
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown resume"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/a/a/a;->i:I

    .line 221
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 239
    iget-object v0, p0, Lcn/domob/android/a/a/a;->a:Lcn/domob/android/i/f;

    const-string v1, "countdown detached from window"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcn/domob/android/a/a/a;->m()V

    .line 242
    return-void
.end method
