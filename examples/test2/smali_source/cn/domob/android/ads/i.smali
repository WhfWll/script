.class Lcn/domob/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/i$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "pb[version]"

.field private static final B:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final C:Ljava/lang/String; = "d[coord]"

.field private static final D:Ljava/lang/String; = "d[coord_acc]"

.field private static final E:Ljava/lang/String; = "d[coord_status]"

.field private static final F:Ljava/lang/String; = "d[coord_accuracy]"

.field private static final G:Ljava/lang/String; = "d[pc]"

.field private static final H:Ljava/lang/String; = "d[dob]"

.field private static final I:Ljava/lang/String; = "d[gender]"

.field private static final J:Ljava/lang/String; = "spot"

.field private static final K:Ljava/lang/String; = "network"

.field private static final L:Ljava/lang/String; = "lpkg"

.field private static final M:Ljava/lang/String; = "or"

.field private static final N:Ljava/lang/String; = "orv"

.field private static final O:Ljava/lang/String; = "dma"

.field private static final P:Ljava/lang/String; = "ama"

.field private static final Q:Ljava/lang/String; = "an"

.field private static final R:Ljava/lang/String; = "lac"

.field private static final S:Ljava/lang/String; = "cell"

.field private static final T:Ljava/lang/String; = "mcc"

.field private static final U:Ljava/lang/String; = "mnc"

.field private static final V:Ljava/lang/String; = "ar"

.field private static final W:Ljava/lang/String; = "ppid"

.field private static final X:Ljava/lang/String; = "scan"

.field private static final Y:Ljava/lang/String; = "iffd"

.field private static final Z:Ljava/lang/String; = "cffd"

.field protected static final a:I = 0x1

.field private static final aa:Ljava/lang/String; = "cd"

.field private static final ab:Ljava/lang/String; = "dmid"

.field private static final ac:Ljava/lang/String; = "aaid"

.field private static final ad:Ljava/lang/String; = "act"

.field private static b:Lcn/domob/android/i/f; = null

.field private static final e:Ljava/lang/String; = "sdk"

.field private static final f:Ljava/lang/String; = "rt"

.field private static final g:Ljava/lang/String; = "pt"

.field private static final h:Ljava/lang/String; = "ts"

.field private static final i:Ljava/lang/String; = "ua"

.field private static final j:Ljava/lang/String; = "ipb"

.field private static final k:Ljava/lang/String; = "idv"

.field private static final l:Ljava/lang/String; = "v"

.field private static final m:Ljava/lang/String; = "sv"

.field private static final n:Ljava/lang/String; = "l"

.field private static final o:Ljava/lang/String; = "f"

.field private static final p:Ljava/lang/String; = "e"

.field private static final q:Ljava/lang/String; = "cid"

.field private static final r:Ljava/lang/String; = "dim"

.field private static final s:Ljava/lang/String; = "so"

.field private static final t:Ljava/lang/String; = "sw"

.field private static final u:Ljava/lang/String; = "sh"

.field private static final v:Ljava/lang/String; = "sd"

.field private static final w:Ljava/lang/String; = "c"

.field private static final x:Ljava/lang/String; = "k"

.field private static final y:Ljava/lang/String; = "pb[identifier]"

.field private static final z:Ljava/lang/String; = "pb[name]"


# instance fields
.field private ae:Lcn/domob/android/f/g;

.field private c:Lcn/domob/android/ads/g;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/g;)V
    .registers 4

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    const-string v1, "New instance of DomobAdRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    .line 95
    invoke-virtual {p1}, Lcn/domob/android/ads/g;->x()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/i;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/i;)Lcn/domob/android/ads/g;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private c()Lcn/domob/android/f/f;
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    const-string v0, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "ppid"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "20141125"

    aput-object v4, v3, v7

    const-string v4, "android"

    aput-object v4, v3, v6

    const-string v4, "20140529"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "sv"

    const-string v2, "040602"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "l"

    invoke-static {}, Lcn/domob/android/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "f"

    const-string v2, "jsonp"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "cid"

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->o()I

    move-result v0

    if-eqz v0, :cond_b2

    .line 155
    const-string v0, "pt"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_b2
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 160
    const-string v0, "dim"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_c5
    const-string v0, "so"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "sw"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "sh"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->v(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "sd"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->t(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "gif"

    aput-object v3, v2, v7

    const-string v3, "ltx"

    aput-object v3, v2, v6

    const-string v3, "la"

    aput-object v3, v2, v8

    const-string v3, "hv"

    aput-object v3, v2, v9

    const-string v3, "expd"

    aput-object v3, v2, v10

    const/4 v3, 0x5

    const-string v4, "iad"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "spi"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "mraid1"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "wvl"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "tpup"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "gd"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->F(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",vib\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_157
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "pb[name]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "pb[version]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "network"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "ar"

    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->h()Z

    move-result v0

    if-ne v0, v6, :cond_41d

    const-string v0, "1"

    :goto_194
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1aa

    .line 201
    const-string v0, "k"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1aa
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_421

    .line 207
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/android/b/a;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "d[coord]"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "d[coord_acc]"

    invoke-static {}, Lcn/domob/android/b/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "d[coord_accuracy]"

    invoke-static {}, Lcn/domob/android/b/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_1de
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->D(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    sget-object v2, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    const-string v3, "Base info: cid=%s, lac=%s, mcc=%s, mnc=%s"

    new-array v4, v10, [Ljava/lang/Object;

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 223
    const-string v2, "cell"

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "lac"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "mcc"

    aget-object v3, v0, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v2, "mnc"

    aget-object v0, v0, v9

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_230

    .line 229
    const-string v0, "d[pc]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_230
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_243

    .line 233
    const-string v0, "d[dob]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_243
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_256

    .line 237
    const-string v0, "d[gender]"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_256
    iget-object v0, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_269

    .line 241
    const-string v0, "spot"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_269
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_288

    .line 245
    const-string v0, "lpkg"

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/h;->d(Ljava/lang/String;)V

    .line 249
    :cond_288
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29f

    .line 250
    const-string v0, "or"

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_29f
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b6

    .line 253
    const-string v0, "orv"

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_2b6
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2fd

    .line 259
    sget-object v2, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 261
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_2fd
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_344

    .line 266
    sget-object v2, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 268
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_344
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_383

    .line 273
    sget-object v2, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode apSSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-static {v4, v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 275
    const-string v2, "an"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-static {v3, v0}, Lcn/domob/android/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_383
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3ac

    .line 281
    sget-object v2, Lcn/domob/android/ads/i;->b:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaned AP mac and name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 282
    const-string v2, "scan"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_3ac
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/e/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 289
    aget-object v2, v0, v7

    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c1

    .line 290
    const-string v2, "iffd"

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_3c1
    aget-object v2, v0, v6

    invoke-static {v2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d0

    .line 293
    const-string v2, "cffd"

    aget-object v0, v0, v6

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_3d0
    const-string v0, "cd"

    iget-object v2, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v2}, La/a/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    const-string v2, "/.dm/dm.file"

    invoke-static {v0, v2}, Lcn/domob/android/i/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f7

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_3f7

    .line 308
    const-string v2, "dmid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_3f7
    iget-object v0, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/b/a;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_408

    .line 312
    const-string v2, "aaid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_408
    const-string v0, "act"

    iget-object v2, p0, Lcn/domob/android/ads/i;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lcn/domob/android/f/f;

    invoke-direct {v0, v1}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 197
    :cond_41d
    const-string v0, "0"

    goto/16 :goto_194

    .line 215
    :cond_421
    const-string v0, "d[coord_status]"

    invoke-static {}, Lcn/domob/android/b/a;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1de
.end method

.method static synthetic c(Lcn/domob/android/ads/i;)Lcn/domob/android/f/g;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/domob/android/ads/i;->ae:Lcn/domob/android/f/g;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    .line 106
    new-instance v0, Lcn/domob/android/ads/i$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i$1;-><init>(Lcn/domob/android/ads/i;)V

    iput-object v0, p0, Lcn/domob/android/ads/i;->ae:Lcn/domob/android/f/g;

    .line 128
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/i;->d:Landroid/content/Context;

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/ads/i;->c()Lcn/domob/android/f/f;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/i;->ae:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/f/c;->b(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V

    .line 129
    return-void
.end method
