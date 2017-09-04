.class public Lcn/domob/android/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/j$b;,
        Lcn/domob/android/ads/j$a;,
        Lcn/domob/android/ads/j$d;,
        Lcn/domob/android/ads/j$c;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "content"

.field public static final B:Ljava/lang/String; = "base_url"

.field public static final C:Ljava/lang/String; = "o"

.field public static final D:Ljava/lang/String; = "preload"

.field public static final E:Ljava/lang/String; = "timeout"

.field public static final F:Ljava/lang/String; = "autoplay"

.field public static final G:Ljava/lang/String; = "cls_btn"

.field public static final H:Ljava/lang/String; = "width"

.field public static final I:Ljava/lang/String; = "height"

.field public static final J:Ljava/lang/String; = "click_tracker"

.field public static final K:Ljava/lang/String; = "imp_tracker"

.field public static final L:Ljava/lang/String; = "event_tracker"

.field public static final M:Ljava/lang/String; = "tracker"

.field public static final N:Ljava/lang/String; = "animation"

.field public static final O:Ljava/lang/String; = "o"

.field public static final P:Ljava/lang/String; = "cls_btn"

.field public static final Q:Ljava/lang/String; = "cls_pos"

.field public static final R:Ljava/lang/String; = "imp_min"

.field public static final S:Ljava/lang/String; = "imp_cls"

.field public static final T:Ljava/lang/String; = "expire"

.field public static final U:Ljava/lang/String; = "rc"

.field public static final V:Ljava/lang/String; = "pkg"

.field public static final W:Ljava/lang/String; = "mz_url"

.field public static final X:Ljava/lang/String; = "vav"

.field public static final Y:Ljava/lang/String; = "imp_progress"

.field public static final Z:Ljava/lang/String; = "border"

.field public static final a:Ljava/lang/String; = "/.dm/"

.field public static final aa:Ljava/lang/String; = "background"

.field public static final ab:Ljava/lang/String; = "color"

.field public static final ac:Ljava/lang/String; = "visible"

.field public static final ad:Ljava/lang/String; = "interstitial_timeout"

.field public static final ae:Ljava/lang/String; = "code"

.field public static final af:Ljava/lang/String; = "text"

.field public static final ag:Ljava/lang/String; = "refresh"

.field public static final ah:Ljava/lang/String; = "disable"

.field public static final ai:Ljava/lang/String; = "dis_time"

.field public static final aj:Ljava/lang/String; = "ors"

.field public static final ak:Ljava/lang/String; = "version"

.field public static final al:Ljava/lang/String; = "config"

.field public static final am:Ljava/lang/String; = "freq_max"

.field public static final an:Ljava/lang/String; = "freq_reset"

.field public static final ao:Ljava/lang/String; = "cached_max"

.field public static final ap:Ljava/lang/String; = "sp_timeout"

.field public static final aq:Ljava/lang/String; = "image_url"

.field private static ar:Lcn/domob/android/i/f; = null

.field public static final b:Ljava/lang/String; = "dm.file"

.field public static final c:Ljava/lang/String; = "sid"

.field public static final d:Ljava/lang/String; = "dmid"

.field public static final e:Ljava/lang/String; = "cid"

.field public static final f:Ljava/lang/String; = "ad"

.field public static final g:Ljava/lang/String; = "error"

.field public static final h:Ljava/lang/String; = "control"

.field public static final i:Ljava/lang/String; = "freq"

.field public static final j:Ljava/lang/String; = "cache"

.field public static final k:Ljava/lang/String; = "debug"

.field public static final l:Ljava/lang/String; = "id"

.field public static final m:Ljava/lang/String; = "format"

.field public static final n:Ljava/lang/String; = "width"

.field public static final o:Ljava/lang/String; = "height"

.field public static final p:Ljava/lang/String; = "adWidth"

.field public static final q:Ljava/lang/String; = "adHeight"

.field public static final r:Ljava/lang/String; = "adop"

.field public static final s:Ljava/lang/String; = "ct"

.field public static final t:Ljava/lang/String; = "url"

.field public static final u:Ljava/lang/String; = "content"

.field public static final v:Ljava/lang/String; = "base_url"

.field public static final w:Ljava/lang/String; = "expandable"

.field public static final x:Ljava/lang/String; = "render"

.field public static final y:Ljava/lang/String; = "ct"

.field public static final z:Ljava/lang/String; = "url"


# instance fields
.field private aA:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Ljava/lang/String;

.field private av:Lcn/domob/android/ads/j$c;

.field private aw:Lcn/domob/android/ads/j$d;

.field private ax:Lcn/domob/android/ads/j$a;

.field private ay:Landroid/content/Context;

.field private az:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/j;->ar:Lcn/domob/android/i/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/j;->aA:Ljava/lang/String;

    .line 127
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/j;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/j;->ay:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/j;
    .registers 5

    .prologue
    .line 134
    new-instance v0, Lcn/domob/android/ads/j;

    invoke-direct {v0}, Lcn/domob/android/ads/j;-><init>()V

    .line 135
    iput-object p0, v0, Lcn/domob/android/ads/j;->ay:Landroid/content/Context;

    .line 137
    invoke-direct {v0, p1}, Lcn/domob/android/ads/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 138
    sget-object v1, Lcn/domob/android/ads/j;->ar:Lcn/domob/android/i/f;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 143
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;)Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/j;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 154
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/j;->as:Ljava/lang/String;

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 156
    const-string v1, "sid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/j;->at:Ljava/lang/String;

    .line 157
    const-string v1, "dmid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "/.dm/"

    const-string v3, "dm.file"

    invoke-static {v2, v3, v1}, Lcn/domob/android/i/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "cid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/j;->au:Ljava/lang/String;

    .line 161
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 162
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 163
    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 165
    const-string v4, "cache"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, p0, Lcn/domob/android/ads/j;->az:Lorg/json/JSONArray;

    .line 168
    const-string v4, "debug"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 170
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_59
    if-eqz v1, :cond_7c

    .line 174
    new-instance v0, Lcn/domob/android/ads/j$c;

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/j$c;-><init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/j;->av:Lcn/domob/android/ads/j$c;

    .line 181
    :goto_62
    if-eqz v3, :cond_6b

    .line 182
    new-instance v0, Lcn/domob/android/ads/j$a;

    invoke-direct {v0, p0, v3}, Lcn/domob/android/ads/j$a;-><init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/j;->ax:Lcn/domob/android/ads/j$a;

    .line 185
    :cond_6b
    iget-object v0, p0, Lcn/domob/android/ads/j;->av:Lcn/domob/android/ads/j$c;

    if-eqz v0, :cond_7a

    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/j;->ay:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/j;->av:Lcn/domob/android/ads/j$c;

    invoke-virtual {v1}, Lcn/domob/android/ads/j$c;->E()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/e/a;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 189
    :cond_7a
    const/4 v0, 0x1

    .line 194
    :goto_7b
    return v0

    .line 175
    :cond_7c
    if-eqz v2, :cond_8e

    .line 176
    new-instance v0, Lcn/domob/android/ads/j$d;

    invoke-direct {v0, p0, v2}, Lcn/domob/android/ads/j$d;-><init>(Lcn/domob/android/ads/j;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/android/ads/j;->aw:Lcn/domob/android/ads/j$d;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_85} :catch_86

    goto :goto_62

    .line 190
    :catch_86
    move-exception v0

    .line 191
    sget-object v1, Lcn/domob/android/ads/j;->ar:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 194
    const/4 v0, 0x0

    goto :goto_7b

    .line 178
    :cond_8e
    :try_start_8e
    sget-object v0, Lcn/domob/android/ads/j;->ar:Lcn/domob/android/i/f;

    const-string v1, "There is no ad response or error response."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_86

    goto :goto_62
.end method

.method static synthetic i()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcn/domob/android/ads/j;->ar:Lcn/domob/android/i/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcn/domob/android/ads/j;->as:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/j;->at:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcn/domob/android/ads/j;->aA:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcn/domob/android/ads/j;->au:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/domob/android/ads/j$c;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/j;->av:Lcn/domob/android/ads/j$c;

    return-object v0
.end method

.method public e()Lcn/domob/android/ads/j$d;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/j;->aw:Lcn/domob/android/ads/j$d;

    return-object v0
.end method

.method public f()Lcn/domob/android/ads/j$a;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/j;->ax:Lcn/domob/android/ads/j$a;

    return-object v0
.end method

.method public g()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/j;->az:Lorg/json/JSONArray;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/j;->aA:Ljava/lang/String;

    return-object v0
.end method
