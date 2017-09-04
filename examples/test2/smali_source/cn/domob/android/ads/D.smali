.class public Lcn/domob/android/ads/D;
.super Lcn/domob/android/ads/a/c;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/j/a$a;
.implements Lcn/domob/android/j/a$c;


# static fields
.field private static m:Lcn/domob/android/i/f;


# instance fields
.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/D;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/D;->m:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/a/c;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/D;)I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcn/domob/android/ads/D;->o:I

    return v0
.end method

.method private a(Ljava/lang/String;J)V
    .registers 14

    .prologue
    .line 154
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/D;->d:Lcn/domob/android/ads/g;

    invoke-virtual {p0}, Lcn/domob/android/ads/D;->c()Lcn/domob/android/ads/j;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/D;->s:Ljava/util/HashMap;

    iget-object v8, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v8}, Lcn/domob/android/ads/F;->a(Lcn/domob/android/ads/g;Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/lang/String;JLandroid/view/View;)V

    .line 155
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/D;)I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcn/domob/android/ads/D;->p:I

    return v0
.end method

.method static synthetic c(Lcn/domob/android/ads/D;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/domob/android/ads/D;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method private w()V
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    .line 76
    iget-object v0, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->G()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/D;->n:Ljava/util/HashMap;

    .line 77
    iget-object v0, p0, Lcn/domob/android/ads/D;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache"

    invoke-virtual {p0, v0, v2, v3}, Lcn/domob/android/ads/D;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 78
    const-string v0, "groupID"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/D;->q:Ljava/lang/String;

    .line 79
    const-string v0, "resourceID"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/ads/D;->r:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/D;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/D;->q:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/D;->r:Ljava/lang/String;

    invoke-static {v0, v2, v3}, La/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)La/a/a/a/a/g;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_6d

    .line 82
    invoke-virtual {v0}, La/a/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcn/domob/android/ads/D;->b:Lcn/domob/android/ads/k;

    invoke-virtual {v2}, Lcn/domob/android/ads/k;->a()I

    move-result v2

    iput v2, p0, Lcn/domob/android/ads/D;->o:I

    .line 84
    iget-object v2, p0, Lcn/domob/android/ads/D;->b:Lcn/domob/android/ads/k;

    invoke-virtual {v2}, Lcn/domob/android/ads/k;->b()I

    move-result v2

    iput v2, p0, Lcn/domob/android/ads/D;->p:I

    .line 101
    if-eqz v0, :cond_65

    .line 102
    iget-object v2, p0, Lcn/domob/android/ads/D;->g:Landroid/os/Handler;

    new-instance v3, Lcn/domob/android/ads/D$1;

    invoke-direct {v3, p0, v0, v1}, Lcn/domob/android/ads/D$1;-><init>(Lcn/domob/android/ads/D;Ljava/lang/String;Lcn/domob/android/ads/j$c;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :goto_64
    return-void

    .line 112
    :cond_65
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "resource local path is null."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_64

    .line 115
    :cond_6d
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not find video resources, if the current network status is wifi, resources in the download."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "resource can not found."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_64
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/domob/android/ads/D;->w()V

    .line 34
    return-void
.end method

.method public a(II)V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/j/a;

    invoke-virtual {v0, p1, p2}, Lcn/domob/android/j/a;->a(II)V

    .line 192
    :cond_b
    return-void
.end method

.method public a(J)V
    .registers 12

    .prologue
    .line 134
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/D;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/D;->d:Lcn/domob/android/ads/g;

    iget-object v5, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    iget-object v6, p0, Lcn/domob/android/ads/D;->n:Ljava/util/HashMap;

    iget-object v7, p0, Lcn/domob/android/ads/D;->s:Ljava/util/HashMap;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;JLcn/domob/android/ads/g;Lcn/domob/android/ads/j;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 136
    return-void
.end method

.method public a(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->g()V

    .line 130
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcn/domob/android/ads/D;->s:Ljava/util/HashMap;

    .line 197
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 159
    if-eqz p1, :cond_6

    .line 160
    invoke-virtual {p0}, Lcn/domob/android/ads/D;->m()V

    .line 164
    :goto_5
    return-void

    .line 162
    :cond_6
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/D;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 145
    const-string v0, "m"

    invoke-direct {p0, v0, p1, p2}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;J)V

    .line 146
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcn/domob/android/ads/D;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 123
    return-void
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 150
    const-string v0, "f"

    invoke-direct {p0, v0, p1, p2}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;J)V

    .line 151
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 183
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/D;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action button tracker url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/j/a;

    if-eqz v0, :cond_11

    .line 39
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->c()V

    .line 41
    :cond_11
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/j/a;

    if-eqz v0, :cond_12

    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/j/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/a;->a(Z)V

    .line 48
    :cond_12
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->d()V

    .line 63
    :cond_b
    invoke-super {p0}, Lcn/domob/android/ads/a/c;->j()V

    .line 64
    return-void
.end method

.method protected k()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/D;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->e()V

    .line 71
    :cond_b
    invoke-super {p0}, Lcn/domob/android/ads/a/c;->k()V

    .line 72
    return-void
.end method

.method public n()V
    .registers 5

    .prologue
    .line 140
    const-string v0, "s"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcn/domob/android/ads/D;->a(Ljava/lang/String;J)V

    .line 141
    return-void
.end method

.method public o()V
    .registers 6

    .prologue
    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/D;->d:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    const-string v2, "cached_reso_invalid"

    iget-object v3, p0, Lcn/domob/android/ads/D;->q:Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/D;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public p()V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/D;->d:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    const-string v2, "detail_failed"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public q()V
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/D;->d:Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/D;->c:Lcn/domob/android/ads/j;

    const-string v2, "detail_success"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;Ljava/lang/String;)V

    .line 179
    return-void
.end method
