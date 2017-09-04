.class Lcn/domob/android/ads/i$1;
.super Lcn/domob/android/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/i;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-direct {p0}, Lcn/domob/android/f/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 111
    invoke-static {}, Lcn/domob/android/ads/i;->b()Lcn/domob/android/i/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_77

    .line 115
    invoke-virtual {v2}, Lcn/domob/android/ads/j;->d()Lcn/domob/android/ads/j$c;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_75

    .line 117
    invoke-virtual {v3}, Lcn/domob/android/ads/j$c;->r()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v3}, Lcn/domob/android/ads/j$c;->q()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_3b
    iget-object v3, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-static {v3}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcn/domob/android/ads/j;->g()Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-static {v5}, Lcn/domob/android/ads/i;->b(Lcn/domob/android/ads/i;)Lcn/domob/android/ads/g;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v1, v5, v0}, La/a/a/a/a/a;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 125
    :goto_53
    iget-object v1, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-static {v1}, Lcn/domob/android/ads/i;->b(Lcn/domob/android/ads/i;)Lcn/domob/android/ads/g;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/i$1;->a:Lcn/domob/android/ads/i;

    invoke-static {v2}, Lcn/domob/android/ads/i;->c(Lcn/domob/android/ads/i;)Lcn/domob/android/f/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/f/g;->a()Lcn/domob/android/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/f/h;->d()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/g;->a(Lcn/domob/android/ads/j;I)V

    .line 126
    return-void

    .line 123
    :cond_6b
    invoke-static {}, Lcn/domob/android/ads/i;->b()Lcn/domob/android/i/f;

    move-result-object v1

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_53

    :cond_75
    move-object v1, v0

    goto :goto_3b

    :cond_77
    move-object v0, v2

    goto :goto_53
.end method
