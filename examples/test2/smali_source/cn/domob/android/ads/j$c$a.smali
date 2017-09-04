.class public Lcn/domob/android/ads/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/j$c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/j$c;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 693
    iput-object p1, p0, Lcn/domob/android/ads/j$c$a;->a:Lcn/domob/android/ads/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    if-eqz p2, :cond_70

    .line 695
    const-string v0, "render"

    const-string v1, "fs"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->b:Ljava/lang/String;

    .line 696
    const-string v0, "ct"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->c:Ljava/lang/String;

    .line 697
    const-string v0, "url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->d:Ljava/lang/String;

    .line 698
    const-string v0, "content"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->f:Ljava/lang/String;

    .line 699
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->e:Ljava/lang/String;

    .line 700
    const-string v0, "o"

    const-string v1, "h"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j$c$a;->g:Ljava/lang/String;

    .line 701
    const-string v0, "preload"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->h:Z

    .line 702
    const-string v0, "timeout"

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$c$a;->i:I

    .line 703
    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->j:Z

    .line 704
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->k:Z

    .line 705
    const-string v0, "width"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$c$a;->l:I

    .line 706
    const-string v0, "height"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/j$c$a;->m:I

    .line 708
    :cond_70
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Lcn/domob/android/ads/j$c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->h:Z

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 763
    iget v0, p0, Lcn/domob/android/ads/j$c$a;->i:I

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->j:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcn/domob/android/ads/j$c$a;->k:Z

    return v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 784
    iget v0, p0, Lcn/domob/android/ads/j$c$a;->l:I

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 791
    iget v0, p0, Lcn/domob/android/ads/j$c$a;->m:I

    return v0
.end method
