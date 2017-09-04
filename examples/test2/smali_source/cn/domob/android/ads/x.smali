.class Lcn/domob/android/ads/x;
.super Lcn/domob/android/ads/g;
.source "SourceFile"


# static fields
.field private static J:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/g;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v1, "Init Splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/c;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 79
    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/x$1;

    invoke-direct {v4, p0, p2, p3, p1}, Lcn/domob/android/ads/x$1;-><init>(Lcn/domob/android/ads/x;Lcn/domob/android/ads/c;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object v0, p1

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 118
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/j;I)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 25
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v1, "An ad response is received by splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 26
    if-eqz p1, :cond_119

    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->l()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 29
    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    .line 31
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v1, "There is a cached ad witch is about to be show."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;I)V

    .line 75
    :cond_21
    :goto_21
    invoke-virtual {p0, v6}, Lcn/domob/android/ads/x;->c(Z)V

    .line 76
    :goto_24
    return-void

    .line 35
    :cond_25
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 36
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/j$c;->e()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 38
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v1, "adResponse image_url is null !"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_24

    .line 41
    :cond_41
    sget-object v1, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v2, "There is a new ad witch is about to be inserted into DB."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcn/domob/android/ads/K;

    invoke-direct {v1}, Lcn/domob/android/ads/K;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->a()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcn/domob/android/ads/K;->b(Ljava/lang/String;)V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$c;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/K;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/K;->c(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/j$c;->A()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/domob/android/ads/K;->a(J)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/domob/android/ads/K;->b(J)V

    .line 50
    iget-object v3, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/K;->a(Ljava/lang/String;)V

    .line 51
    new-instance v3, Lcn/domob/android/ads/c;

    invoke-direct {v3}, Lcn/domob/android/ads/c;-><init>()V

    .line 52
    iget-object v4, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Lcn/domob/android/ads/K;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 53
    invoke-static {v0}, Lcn/domob/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 55
    iget-object v4, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 56
    invoke-virtual {p0}, Lcn/domob/android/ads/x;->x()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 58
    invoke-direct {p0, v0, v3, v1}, Lcn/domob/android/ads/x;->a(Ljava/lang/String;Lcn/domob/android/ads/c;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 63
    :cond_dc
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 64
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    const-string v1, "There is a error info response."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 65
    const-string v0, "DomobSDK"

    const-string v1, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/j$d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->e()Lcn/domob/android/ads/j$d;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/j$d;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 73
    :cond_119
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;I)V

    goto/16 :goto_21
.end method

.method protected a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 128
    sget-object v0, Lcn/domob/android/ads/x;->J:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to splash.Report fail event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 132
    iput-object p3, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_57

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 136
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 141
    :goto_46
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_50

    .line 142
    :cond_4e
    const-string v1, "http://e.domob.cn/event_report"

    .line 145
    :cond_50
    sget-object v2, Lcn/domob/android/ads/w$h;->i:Lcn/domob/android/ads/w$h;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 146
    return-void

    :cond_57
    move-object v1, v5

    goto :goto_46
.end method

.method protected b(Lcn/domob/android/ads/j;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method
