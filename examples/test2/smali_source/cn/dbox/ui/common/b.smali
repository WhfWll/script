.class public Lcn/dbox/ui/common/b;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/common/b$a;
    }
.end annotation


# static fields
.field private static c:Lcn/dbox/core/h/d;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcn/dbox/ui/d/a;

.field private d:Landroid/content/Context;

.field private e:Lcn/dbox/core/b;

.field private f:I

.field private g:I

.field private h:Landroid/view/View;

.field private i:Lcn/dbox/ui/common/DBoxGallery;

.field private j:Lcn/dbox/ui/a/c;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/util/Timer;

.field private q:Lcn/dbox/ui/common/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/common/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/common/b;->c:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d$a;Lcn/dbox/core/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    .line 47
    iput v1, p0, Lcn/dbox/ui/common/b;->m:I

    .line 48
    iput v1, p0, Lcn/dbox/ui/common/b;->n:I

    .line 52
    iput v1, p0, Lcn/dbox/ui/common/b;->o:I

    .line 58
    iput-object p1, p0, Lcn/dbox/ui/common/b;->d:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcn/dbox/ui/common/b;->e:Lcn/dbox/core/b;

    .line 60
    iput-object p4, p0, Lcn/dbox/ui/common/b;->k:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcn/dbox/ui/common/b;->l:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Lcn/dbox/core/bean/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p2}, Lcn/dbox/core/bean/d$a;->a()I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/common/b;->g:I

    .line 65
    iget-object v0, p0, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/dbox/ui/common/b;->f:I

    .line 66
    invoke-virtual {p0, p1}, Lcn/dbox/ui/common/b;->a(Landroid/content/Context;)V

    .line 68
    iget v0, p0, Lcn/dbox/ui/common/b;->f:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_41

    .line 72
    iget v0, p0, Lcn/dbox/ui/common/b;->g:I

    if-ge v0, v2, :cond_3c

    .line 73
    iput v2, p0, Lcn/dbox/ui/common/b;->g:I

    .line 76
    :cond_3c
    iget v0, p0, Lcn/dbox/ui/common/b;->g:I

    invoke-direct {p0, v0}, Lcn/dbox/ui/common/b;->a(I)V

    .line 80
    :cond_41
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/common/b;I)I
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcn/dbox/ui/common/b;->n:I

    return p1
.end method

.method static synthetic a(Lcn/dbox/ui/common/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 8

    .prologue
    const/4 v3, 0x5

    .line 136
    sget-object v0, Lcn/dbox/ui/common/b;->c:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoscroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 137
    iput p1, p0, Lcn/dbox/ui/common/b;->o:I

    .line 138
    iget v0, p0, Lcn/dbox/ui/common/b;->o:I

    if-gt v0, v3, :cond_25

    iget v0, p0, Lcn/dbox/ui/common/b;->o:I

    if-lez v0, :cond_25

    .line 139
    iput v3, p0, Lcn/dbox/ui/common/b;->o:I

    .line 142
    :cond_25
    iget v0, p0, Lcn/dbox/ui/common/b;->o:I

    if-lez v0, :cond_4f

    .line 143
    iget-object v0, p0, Lcn/dbox/ui/common/b;->p:Ljava/util/Timer;

    if-eqz v0, :cond_32

    .line 145
    iget-object v0, p0, Lcn/dbox/ui/common/b;->p:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/dbox/ui/common/b;->p:Ljava/util/Timer;

    .line 148
    new-instance v0, Lcn/dbox/ui/common/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/dbox/ui/common/b$a;-><init>(Lcn/dbox/ui/common/b;Lcn/dbox/ui/common/b$1;)V

    iput-object v0, p0, Lcn/dbox/ui/common/b;->q:Lcn/dbox/ui/common/b$a;

    .line 149
    iget-object v0, p0, Lcn/dbox/ui/common/b;->p:Ljava/util/Timer;

    iget-object v1, p0, Lcn/dbox/ui/common/b;->q:Lcn/dbox/ui/common/b$a;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcn/dbox/ui/common/b;->o:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 152
    :cond_4f
    return-void
.end method

.method static synthetic b()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcn/dbox/ui/common/b;->c:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic b(Lcn/dbox/ui/common/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/dbox/ui/common/b;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcn/dbox/ui/common/b;->n:I

    return v0
.end method

.method static synthetic d(Lcn/dbox/ui/common/b;)I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcn/dbox/ui/common/b;->f:I

    return v0
.end method

.method static synthetic e(Lcn/dbox/ui/common/b;)Lcn/dbox/ui/common/DBoxGallery;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/b;->i:Lcn/dbox/ui/common/DBoxGallery;

    return-object v0
.end method

.method static synthetic f(Lcn/dbox/ui/common/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/dbox/ui/common/b;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcn/dbox/ui/common/b;->n:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 85
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0, v1}, Lcn/dbox/ui/common/b;->setBackgroundColor(I)V

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "dbox_banner"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/dbox/ui/common/b;->h:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcn/dbox/ui/common/b;->h:Landroid/view/View;

    const-string v1, "gallery"

    invoke-static {p1, v1}, Lcn/dbox/ui/e/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/dbox/ui/common/DBoxGallery;

    iput-object v0, p0, Lcn/dbox/ui/common/b;->i:Lcn/dbox/ui/common/DBoxGallery;

    .line 95
    new-instance v0, Lcn/dbox/ui/a/c;

    iget-object v1, p0, Lcn/dbox/ui/common/b;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/dbox/ui/common/b;->e:Lcn/dbox/core/b;

    invoke-direct {v0, p1, v1, v2}, Lcn/dbox/ui/a/c;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    iput-object v0, p0, Lcn/dbox/ui/common/b;->j:Lcn/dbox/ui/a/c;

    .line 96
    iget-object v0, p0, Lcn/dbox/ui/common/b;->i:Lcn/dbox/ui/common/DBoxGallery;

    iget-object v1, p0, Lcn/dbox/ui/common/b;->j:Lcn/dbox/ui/a/c;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/DBoxGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    iget-object v0, p0, Lcn/dbox/ui/common/b;->i:Lcn/dbox/ui/common/DBoxGallery;

    new-instance v1, Lcn/dbox/ui/common/b$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/b$1;-><init>(Lcn/dbox/ui/common/b;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/DBoxGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcn/dbox/ui/common/b;->i:Lcn/dbox/ui/common/DBoxGallery;

    new-instance v1, Lcn/dbox/ui/common/b$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/b$2;-><init>(Lcn/dbox/ui/common/b;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/common/DBoxGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 126
    iget-object v0, p0, Lcn/dbox/ui/common/b;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/b;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public a(Lcn/dbox/ui/d/a;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcn/dbox/ui/common/b;->b:Lcn/dbox/ui/d/a;

    .line 183
    return-void
.end method
