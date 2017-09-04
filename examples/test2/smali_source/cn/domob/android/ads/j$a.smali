.class public Lcn/domob/android/ads/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/j;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/16 v5, 0x14

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 839
    iput-object p1, p0, Lcn/domob/android/ads/j$a;->a:Lcn/domob/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-boolean v4, p0, Lcn/domob/android/ads/j$a;->b:Z

    .line 840
    if-eqz p2, :cond_9b

    .line 842
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 843
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$a;->c:I

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/j$a;->b:Z

    .line 846
    :cond_20
    const-string v0, "disable"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/j$a;->d:Z

    .line 847
    const-string v0, "dis_time"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$a;->e:I

    .line 849
    const-string v0, "ors"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_4c

    .line 851
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/j$a;->f:Ljava/lang/String;

    .line 852
    const-string v1, "config"

    const-string v2, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$a;->g:Ljava/lang/String;

    .line 855
    :cond_4c
    const-string v0, "sp_timeout"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 856
    if-le v0, v3, :cond_76

    invoke-static {p1}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 857
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 858
    const-string v2, "timeout"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v0, Lcn/domob/android/ads/c/a;

    invoke-static {p1}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "domob_config"

    invoke-direct {v0, v2, v3}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/a;->a(Ljava/util/HashMap;)V

    .line 862
    :cond_76
    const-string v0, "freq_max"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/domob/android/e/a;->a(I)V

    .line 864
    const-string v0, "freq_reset"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 865
    if-eqz v0, :cond_8e

    .line 866
    invoke-static {p1}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/e/a;->b(Landroid/content/Context;)V

    .line 868
    :cond_8e
    const-string v0, "cached_max"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 869
    invoke-static {p1}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/a/a;->a(Landroid/content/Context;I)V

    .line 871
    :cond_9b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 879
    iget v0, p0, Lcn/domob/android/ads/j$a;->c:I

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 886
    iget-boolean v0, p0, Lcn/domob/android/ads/j$a;->d:Z

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 893
    iget v0, p0, Lcn/domob/android/ads/j$a;->e:I

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 900
    iget-boolean v0, p0, Lcn/domob/android/ads/j$a;->b:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lcn/domob/android/ads/j$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Lcn/domob/android/ads/j$a;->g:Ljava/lang/String;

    return-object v0
.end method
