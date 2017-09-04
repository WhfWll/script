.class Lcn/domob/android/ads/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/K;->a:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/K;->b:Ljava/lang/String;

    .line 9
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcn/domob/android/ads/K;->c:J

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/K;->d:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/K;->e:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/K;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/K;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 62
    iput-wide p1, p0, Lcn/domob/android/ads/K;->c:J

    .line 63
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcn/domob/android/ads/K;->f:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/android/ads/K;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 75
    iput-wide p1, p0, Lcn/domob/android/ads/K;->d:J

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/domob/android/ads/K;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/android/ads/K;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/domob/android/ads/K;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public d()J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcn/domob/android/ads/K;->c:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcn/domob/android/ads/K;->e:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcn/domob/android/ads/K;->d:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/K;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Z
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/K;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v0, p0, Lcn/domob/android/ads/K;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/domob/android/ads/K;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
