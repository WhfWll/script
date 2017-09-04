.class public Lcn/domob/android/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/n$a;


# instance fields
.field private a:Lcn/domob/android/i/f;

.field private b:Lcn/domob/android/ads/g;

.field private c:Lcn/domob/android/ads/m;

.field private d:Lcn/domob/android/ads/f;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/g;Lcn/domob/android/ads/m;)V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/l;->a:Lcn/domob/android/i/f;

    .line 19
    iput-object p1, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    .line 20
    iput-object p2, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    .line 21
    new-instance v0, Lcn/domob/android/ads/f;

    invoke-direct {v0}, Lcn/domob/android/ads/f;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/l;->d:Lcn/domob/android/ads/f;

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->onDomobAdClicked()V

    .line 72
    :cond_9
    return-void
.end method

.method protected a(Landroid/content/Context;Lcn/domob/android/ads/j;)V
    .registers 9

    .prologue
    .line 28
    invoke-virtual {p2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->c()I

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {p1}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v4

    .line 31
    :goto_e
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->d()I

    move-result v1

    if-nez v1, :cond_47

    invoke-static {p1}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v5

    .line 33
    :goto_18
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_21

    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0, v4, v5}, Lcn/domob/android/ads/m;->setCreativeRect(II)V

    .line 37
    :cond_21
    iget-object v0, p0, Lcn/domob/android/ads/l;->d:Lcn/domob/android/ads/f;

    iget-object v2, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;Lcn/domob/android/ads/g;Lcn/domob/android/ads/j;II)Lcn/domob/android/ads/n;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_53

    .line 39
    invoke-virtual {v0, p0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n$a;)V

    .line 40
    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/l$1;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/l$1;-><init>(Lcn/domob/android/ads/l;Lcn/domob/android/ads/n;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    :goto_3a
    return-void

    .line 29
    :cond_3b
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v4, v1

    goto :goto_e

    .line 31
    :cond_47
    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    goto :goto_18

    .line 48
    :cond_53
    iget-object v0, p0, Lcn/domob/android/ads/l;->a:Lcn/domob/android/i/f;

    const-string v1, "bad ad received"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_3a
.end method

.method public a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/l;->a:Lcn/domob/android/i/f;

    const-string v1, "FAILED to load ad content view and the errorMessage is: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 65
    return-void
.end method

.method public a(Lcn/domob/android/ads/n;)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0, p1}, Lcn/domob/android/ads/m;->onDomobAdReturned(Lcn/domob/android/ads/n;)V

    .line 59
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0, p1}, Lcn/domob/android/ads/m;->onProcessActionType(Ljava/lang/String;)V

    .line 124
    :cond_9
    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_d

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->onDomobAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_d

    .line 83
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->x()Landroid/content/Context;

    move-result-object v0

    goto :goto_c
.end method

.method public c()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->c()V

    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    sget-object v1, Lcn/domob/android/ads/g$a;->b:Lcn/domob/android/ads/g$a;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/g$a;)V

    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_15

    .line 91
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->onDomobAdOverlayPresented()V

    .line 93
    :cond_15
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    sget-object v1, Lcn/domob/android/ads/g$a;->a:Lcn/domob/android/ads/g$a;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/g$a;)V

    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/l;->b:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->e()V

    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_15

    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->onDomobAdOverlayDismissed()V

    .line 102
    :cond_15
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->onDomobLeaveApplication()V

    .line 109
    :cond_9
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcn/domob/android/ads/l;->a:Lcn/domob/android/i/f;

    const-string v1, "ad call to close itself"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    if-eqz v0, :cond_10

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/l;->c:Lcn/domob/android/ads/m;

    invoke-interface {v0}, Lcn/domob/android/ads/m;->close()V

    .line 117
    :cond_10
    return-void
.end method
