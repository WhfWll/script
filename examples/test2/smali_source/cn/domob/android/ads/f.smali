.class public Lcn/domob/android/ads/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcn/domob/android/ads/g;Lcn/domob/android/ads/j;II)Lcn/domob/android/ads/n;
    .registers 10

    .prologue
    .line 12
    invoke-virtual {p3}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->b()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcn/domob/android/ads/g;->o()I

    move-result v2

    .line 14
    const/4 v0, 0x0

    .line 15
    sget-object v3, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 16
    new-instance v0, Lcn/domob/android/ads/z;

    new-instance v1, Lcn/domob/android/ads/k;

    invoke-direct {v1, p4, p5}, Lcn/domob/android/ads/k;-><init>(II)V

    invoke-direct {v0, p1, v1, p3, p2}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    .line 36
    :cond_1f
    :goto_1f
    return-object v0

    .line 17
    :cond_20
    sget-object v3, Lcn/domob/android/ads/DomobAdView$a;->e:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1f

    .line 20
    invoke-static {v1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 21
    new-instance v0, Lcn/domob/android/ads/a/c;

    new-instance v1, Lcn/domob/android/ads/k;

    invoke-direct {v1, p4, p5}, Lcn/domob/android/ads/k;-><init>(II)V

    invoke-direct {v0, p1, v1, p3, p2}, Lcn/domob/android/ads/a/c;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    goto :goto_1f

    .line 24
    :cond_39
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 25
    new-instance v0, Lcn/domob/android/ads/a/c;

    new-instance v1, Lcn/domob/android/ads/k;

    invoke-direct {v1, p4, p5}, Lcn/domob/android/ads/k;-><init>(II)V

    invoke-direct {v0, p1, v1, p3, p2}, Lcn/domob/android/ads/a/c;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    goto :goto_1f

    .line 27
    :cond_4c
    const-string v2, "mraid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 28
    new-instance v0, Lcn/domob/android/ads/b/a;

    new-instance v1, Lcn/domob/android/ads/k;

    invoke-direct {v1, p4, p5}, Lcn/domob/android/ads/k;-><init>(II)V

    invoke-direct {v0, p1, v1, p3, p2}, Lcn/domob/android/ads/b/a;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    goto :goto_1f

    .line 30
    :cond_5f
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 31
    new-instance v0, Lcn/domob/android/ads/D;

    new-instance v1, Lcn/domob/android/ads/k;

    invoke-direct {v1, p4, p5}, Lcn/domob/android/ads/k;-><init>(II)V

    invoke-direct {v0, p1, v1, p3, p2}, Lcn/domob/android/ads/D;-><init>(Landroid/content/Context;Lcn/domob/android/ads/k;Lcn/domob/android/ads/j;Lcn/domob/android/ads/g;)V

    goto :goto_1f
.end method
