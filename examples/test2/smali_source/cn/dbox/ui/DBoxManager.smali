.class public Lcn/dbox/ui/DBoxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/DBoxManager$BannerRatio;,
        Lcn/dbox/ui/DBoxManager$DBoxViewListener;
    }
.end annotation


# static fields
.field private static b:Lcn/dbox/core/h/d;


# instance fields
.field a:Ljava/lang/String;

.field private c:Lcn/dbox/core/b;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/dbox/core/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/dbox/ui/a;

.field private h:Landroid/app/Dialog;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/DialogInterface$OnDismissListener;

.field private m:Lcn/dbox/ui/d/e;

.field private n:Lcn/dbox/ui/DBoxManager$DBoxViewListener;

.field private o:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/DBoxManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/DBoxManager;->b:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publisherID"    # Ljava/lang/String;
    .param p3, "placementID"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Lcn/dbox/ui/DBoxManager$7;

    invoke-direct {v0, p0}, Lcn/dbox/ui/DBoxManager$7;-><init>(Lcn/dbox/ui/DBoxManager;)V

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 264
    new-instance v0, Lcn/dbox/ui/DBoxManager$8;

    invoke-direct {v0, p0}, Lcn/dbox/ui/DBoxManager$8;-><init>(Lcn/dbox/ui/DBoxManager;)V

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->m:Lcn/dbox/ui/d/e;

    .line 364
    const-string v0, "16:5"

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Lcn/dbox/core/b;

    invoke-direct {v0, p1, p2, p3}, Lcn/dbox/core/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    .line 55
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    new-instance v1, Lcn/dbox/ui/DBoxManager$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$1;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/b;->a(Lcn/dbox/core/b$j;)V

    .line 65
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    .line 69
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    new-instance v1, Lcn/dbox/ui/DBoxManager$2;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$2;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcn/dbox/ui/DBoxManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->o:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcn/dbox/ui/DBoxManager;->b:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/DBoxManager$DBoxViewListener;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->n:Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/dbox/ui/DBoxManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcn/dbox/ui/DBoxManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 30
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->f:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    new-instance v1, Lcn/dbox/ui/DBoxManager$4;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$4;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Lcn/dbox/core/b;->a(Lcn/dbox/core/b$l;)V

    .line 213
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0}, Lcn/dbox/core/b;->a()V

    .line 214
    return-void
.end method

.method static synthetic b(Lcn/dbox/ui/DBoxManager;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->b()V

    return-void
.end method

.method static synthetic c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 218
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->k:Ljava/lang/String;

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->j:Ljava/lang/String;

    .line 221
    :cond_8
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/DBoxManager$5;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$5;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 236
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/DBoxManager$6;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$6;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method static synthetic d(Lcn/dbox/ui/DBoxManager;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->c()V

    return-void
.end method

.method static synthetic e(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/dbox/ui/DBoxManager;)V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->d()V

    return-void
.end method

.method static synthetic g(Lcn/dbox/ui/DBoxManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 441
    invoke-static {p0}, Lcn/dbox/core/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/dbox/ui/DBoxManager;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcn/dbox/ui/DBoxManager;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/core/b;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    return-object v0
.end method

.method static synthetic l(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic m(Lcn/dbox/ui/DBoxManager;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->o:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public doEntryReports(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 3
    .param p1, "type"    # Lcn/dbox/core/bean/Entrance$EntryReportType;

    .prologue
    .line 289
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0, p1}, Lcn/dbox/core/b;->a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 290
    return-void
.end method

.method public doTicketStartReports()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dbox/core/b;->b(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 297
    return-void
.end method

.method public hideHeadView()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    if-eqz v0, :cond_9

    .line 311
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    invoke-virtual {v0}, Lcn/dbox/ui/a;->d()V

    .line 313
    :cond_9
    return-void
.end method

.method public preLoadData()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->b()V

    .line 94
    return-void
.end method

.method public preloadAdWall()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0}, Lcn/dbox/core/b;->g()V

    .line 387
    return-void
.end method

.method public presentWall()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->k:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v0, v0}, Lcn/dbox/ui/DBoxManager;->presentWall(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public presentWall(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->k:Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1, v0}, Lcn/dbox/ui/DBoxManager;->presentWall(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public presentWall(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "uiLayout"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Lcn/dbox/ui/a;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/dbox/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    .line 128
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->m:Lcn/dbox/ui/d/e;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/d/e;)V

    .line 129
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    new-instance v1, Lcn/dbox/ui/DBoxManager$3;

    invoke-direct {v1, p0}, Lcn/dbox/ui/DBoxManager$3;-><init>(Lcn/dbox/ui/DBoxManager;)V

    invoke-virtual {v0, v1}, Lcn/dbox/ui/a;->a(Lcn/dbox/ui/d/f;)V

    .line 137
    if-nez p1, :cond_34

    .line 138
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    :goto_28
    if-eqz p2, :cond_2c

    .line 147
    iput-object p2, p0, Lcn/dbox/ui/DBoxManager;->k:Ljava/lang/String;

    .line 149
    :cond_2c
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3d

    .line 150
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->b()V

    .line 154
    :goto_33
    return-void

    .line 142
    :cond_34
    invoke-virtual {p0}, Lcn/dbox/ui/DBoxManager;->hideHeadView()V

    .line 143
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->g:Lcn/dbox/ui/a;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_28

    .line 152
    :cond_3d
    invoke-direct {p0}, Lcn/dbox/ui/DBoxManager;->c()V

    goto :goto_33
.end method

.method public presentWall(Ljava/lang/String;)V
    .registers 3
    .param p1, "uiLayout"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcn/dbox/ui/DBoxManager;->presentWall(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public sendLandingReport(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V
    .registers 5
    .param p1, "adUrl"    # Ljava/lang/String;
    .param p2, "browserType"    # Lcn/dbox/core/b$b;
    .param p3, "reportUrl"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2, p3}, Lcn/dbox/core/b;->a(Ljava/lang/String;Lcn/dbox/core/b$b;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public sendTicketInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0, p1}, Lcn/dbox/core/b;->b(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public setAdWallId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "publisherIDWall"    # Ljava/lang/String;
    .param p2, "placementIDWall"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    invoke-virtual {v0, p1, p2}, Lcn/dbox/core/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_9
    return-void
.end method

.method public setBannerRatio(Lcn/dbox/ui/DBoxManager$BannerRatio;)V
    .registers 4
    .param p1, "br"    # Lcn/dbox/ui/DBoxManager$BannerRatio;

    .prologue
    .line 372
    if-eqz p1, :cond_12

    .line 373
    sget-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->SIXTEENFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    invoke-virtual {v0}, Lcn/dbox/ui/DBoxManager$BannerRatio;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcn/dbox/ui/DBoxManager$BannerRatio;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 374
    const-string v0, "16:5"

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->a:Ljava/lang/String;

    .line 379
    :cond_12
    :goto_12
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->c:Lcn/dbox/core/b;

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dbox/core/b;->e(Ljava/lang/String;)V

    .line 380
    return-void

    .line 375
    :cond_1a
    sget-object v0, Lcn/dbox/ui/DBoxManager$BannerRatio;->THIRTYTWOFIVE:Lcn/dbox/ui/DBoxManager$BannerRatio;

    invoke-virtual {v0}, Lcn/dbox/ui/DBoxManager$BannerRatio;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcn/dbox/ui/DBoxManager$BannerRatio;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 376
    const-string v0, "32:5"

    iput-object v0, p0, Lcn/dbox/ui/DBoxManager;->a:Ljava/lang/String;

    goto :goto_12
.end method

.method public setDBoxViewListener(Lcn/dbox/ui/DBoxManager$DBoxViewListener;)V
    .registers 2
    .param p1, "dBoxViewListener"    # Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager;->n:Lcn/dbox/ui/DBoxManager$DBoxViewListener;

    .line 352
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-static {p1}, Lcn/dbox/core/b;->c(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public showLandingPageAd(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/DBoxManager$9;

    invoke-direct {v1, p0, p1}, Lcn/dbox/ui/DBoxManager$9;-><init>(Lcn/dbox/ui/DBoxManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method
