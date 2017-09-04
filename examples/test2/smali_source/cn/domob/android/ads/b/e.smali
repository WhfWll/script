.class Lcn/domob/android/ads/b/e;
.super Lcn/domob/android/ads/b/b;
.source "SourceFile"


# static fields
.field private static c:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/b/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/b/e;->c:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/b/m;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/b/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/b/m;)V

    .line 102
    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 105
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    sget-object v2, Lcn/domob/android/ads/b/e;->c:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open MRAID browser with URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    :try_start_1f
    iget-object v2, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v2}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_31

    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 113
    :cond_31
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_64

    .line 114
    :cond_39
    new-instance v0, Lcn/domob/android/ads/a/d;

    iget-object v2, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v2}, Lcn/domob/android/ads/b/m;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v4}, Lcn/domob/android/ads/b/m;->k()Lcn/domob/android/ads/a/d$b;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcn/domob/android/ads/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/d$b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/a/d;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    :goto_52
    iget-object v0, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->j()Lcn/domob/android/ads/b/m$a;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/b/e;->b:Lcn/domob/android/ads/b/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/b/m;->j()Lcn/domob/android/ads/b/m$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/b/m$a;->a()V

    .line 125
    :cond_63
    :goto_63
    return-void

    .line 118
    :cond_64
    sget-object v0, Lcn/domob/android/ads/b/e;->c:Lcn/domob/android/i/f;

    const-string v1, "can not build with activity finishing"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_6b} :catch_6c

    goto :goto_52

    .line 122
    :catch_6c
    move-exception v0

    .line 123
    sget-object v1, Lcn/domob/android/ads/b/e;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_63
.end method
