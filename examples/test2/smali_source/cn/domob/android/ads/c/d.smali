.class public Lcn/domob/android/ads/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/c/d$a;,
        Lcn/domob/android/ads/c/d$b;,
        Lcn/domob/android/ads/c/d$c;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcn/domob/android/ads/c/d$a;

.field private c:Lcn/domob/android/ads/c/d$c;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcn/domob/android/ads/c/d$b;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcn/domob/android/ads/c/d$c;->c:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 23
    iput-object p1, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcn/domob/android/ads/c/d$a;

    invoke-direct {v0, p0, p2}, Lcn/domob/android/ads/c/d$a;-><init>(Lcn/domob/android/ads/c/d;Lcn/domob/android/ads/c/d$b;)V

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    .line 25
    return-void
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcn/domob/android/ads/c/d;->e:J

    return-wide v0
.end method

.method public a(J)V
    .registers 8

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 33
    iput-wide p1, p0, Lcn/domob/android/ads/c/d;->e:J

    .line 34
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    iget-wide v2, p0, Lcn/domob/android/ads/c/d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    sget-object v0, Lcn/domob/android/ads/c/d$c;->a:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/c/d;->d:J

    .line 38
    :cond_1b
    return-void
.end method

.method public a(Lcn/domob/android/ads/c/d$b;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/c/d$a;->a(Lcn/domob/android/ads/c/d$b;)V

    .line 105
    return-void
.end method

.method public b()V
    .registers 7

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    sget-object v1, Lcn/domob/android/ads/c/d$c;->a:Lcn/domob/android/ads/c/d$c;

    if-ne v0, v1, :cond_23

    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-wide v0, p0, Lcn/domob/android/ads/c/d;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/domob/android/ads/c/d;->d:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcn/domob/android/ads/c/d;->e:J

    .line 47
    sget-object v0, Lcn/domob/android/ads/c/d$c;->b:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 49
    :cond_23
    return-void
.end method

.method public c()V
    .registers 5

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    sget-object v1, Lcn/domob/android/ads/c/d$c;->b:Lcn/domob/android/ads/c/d$c;

    if-ne v0, v1, :cond_1f

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    iget-wide v2, p0, Lcn/domob/android/ads/c/d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/c/d;->d:J

    .line 58
    sget-object v0, Lcn/domob/android/ads/c/d$c;->a:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 60
    :cond_1f
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d$a;->run()V

    .line 70
    :cond_12
    sget-object v0, Lcn/domob/android/ads/c/d$c;->c:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    :cond_d
    sget-object v0, Lcn/domob/android/ads/c/d$c;->c:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 82
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 88
    invoke-direct {p0}, Lcn/domob/android/ads/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    :cond_d
    sget-object v0, Lcn/domob/android/ads/c/d$c;->c:Lcn/domob/android/ads/c/d$c;

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->c:Lcn/domob/android/ads/c/d$c;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/c/d;->a:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/d$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/d$a;->a()Z

    move-result v0

    return v0
.end method
