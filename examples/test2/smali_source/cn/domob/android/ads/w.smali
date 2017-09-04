.class public Lcn/domob/android/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/w$c;,
        Lcn/domob/android/ads/w$f;,
        Lcn/domob/android/ads/w$b;,
        Lcn/domob/android/ads/w$a;,
        Lcn/domob/android/ads/w$g;,
        Lcn/domob/android/ads/w$e;,
        Lcn/domob/android/ads/w$d;,
        Lcn/domob/android/ads/w$h;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "sw"

.field private static final B:Ljava/lang/String; = "sh"

.field private static final C:Ljava/lang/String; = "so"

.field private static final D:Ljava/lang/String; = "phase"

.field private static final E:Ljava/lang/String; = "origin"

.field private static final F:Ljava/lang/String; = "data"

.field public static final a:Ljava/lang/String; = "eid"

.field public static final b:Ljava/lang/String; = "gdim"

.field public static final c:Ljava/lang/String; = "adim"

.field private static d:Lcn/domob/android/i/f; = null

.field private static final g:Ljava/lang/String; = "click_report"

.field private static final h:Ljava/lang/String; = "impression_report"

.field private static final i:Ljava/lang/String; = "v"

.field private static final j:Ljava/lang/String; = "sv"

.field private static final k:Ljava/lang/String; = "rt"

.field private static final l:Ljava/lang/String; = "ua"

.field private static final m:Ljava/lang/String; = "ipb"

.field private static final n:Ljava/lang/String; = "ppid"

.field private static final o:Ljava/lang/String; = "idv"

.field private static final p:Ljava/lang/String; = "ts"

.field private static final q:Ljava/lang/String; = "rnd"

.field private static final r:Ljava/lang/String; = "vcode"

.field private static final s:Ljava/lang/String; = "tr"

.field private static final t:Ljava/lang/String; = "type"

.field private static final u:Ljava/lang/String; = "pkg"

.field private static final v:Ljava/lang/String; = "vc"

.field private static final w:Ljava/lang/String; = "vn"

.field private static final x:Ljava/lang/String; = "total"

.field private static final y:Ljava/lang/String; = "failsafe"

.field private static final z:Ljava/lang/String; = "frame"


# instance fields
.field private G:Lcn/domob/android/f/g;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcn/domob/android/ads/w;->f:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/f/f;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 318
    new-instance v0, Lcn/domob/android/ads/w$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/w$1;-><init>(Lcn/domob/android/ads/w;)V

    iput-object v0, p0, Lcn/domob/android/ads/w;->G:Lcn/domob/android/f/g;

    .line 327
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/w;->G:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcn/domob/android/f/c;->b(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V

    .line 328
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    if-nez p1, :cond_7

    .line 340
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 343
    :cond_7
    const-string v0, "v"

    const-string v1, "20140529"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "sv"

    const-string v1, "040602"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "idv"

    iget-object v1, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/w$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    if-nez p1, :cond_a

    .line 218
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Build Report Common Params Error, paramsMap is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 240
    :goto_9
    return-void

    .line 222
    :cond_a
    const-string v0, ""

    .line 223
    if-eqz p2, :cond_1b

    .line 224
    iget-object v0, p2, Lcn/domob/android/ads/w$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_61

    iget-object v0, p2, Lcn/domob/android/ads/w$a;->a:Ljava/lang/String;

    .line 226
    :goto_14
    const-string v1, "origin"

    iget-object v2, p2, Lcn/domob/android/ads/w$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1b
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2, v0}, Lcn/domob/android/i/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/i/i$a;

    move-result-object v3

    .line 233
    const-string v4, "tr"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "ts"

    invoke-virtual {v3}, Lcn/domob/android/i/i$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "rnd"

    invoke-virtual {v3}, Lcn/domob/android/i/i$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "vcode"

    invoke-virtual {v3}, Lcn/domob/android/i/i$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "ipb"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "ppid"

    iget-object v1, p0, Lcn/domob/android/ads/w;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "ua"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 224
    :cond_61
    const-string v0, ""

    goto :goto_14
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$b;Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Prepare to report:click_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 164
    if-nez p3, :cond_14

    .line 165
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 168
    :cond_14
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 171
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click report url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcn/domob/android/f/f;

    invoke-direct {v0, p3}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    const-string v1, "click_report"

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/f/f;Ljava/lang/String;)V

    .line 177
    :goto_39
    return-void

    .line 175
    :cond_3a
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Click report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_39
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$f;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Prepare to report:impression_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 184
    if-nez p3, :cond_14

    .line 185
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 188
    :cond_14
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 189
    const-string v0, "frame"

    iget-object v1, p2, Lcn/domob/android/ads/w$f;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "sw"

    iget v1, p2, Lcn/domob/android/ads/w$f;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "sh"

    iget v1, p2, Lcn/domob/android/ads/w$f;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "so"

    iget-object v1, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/b/a;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v0, "phase"

    iget-object v1, p2, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-wide v0, p2, Lcn/domob/android/ads/w$f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_59

    .line 198
    const-string v0, "total"

    iget-wide v2, p2, Lcn/domob/android/ads/w$f;->i:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_59
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impression report urls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcn/domob/android/f/f;

    invoke-direct {v0, p3}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impression_report-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/f/f;Ljava/lang/String;)V

    .line 210
    :goto_8e
    return-void

    .line 208
    :cond_8f
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Impression report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_8e
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$h;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare to report:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 256
    if-nez p5, :cond_25

    .line 257
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 260
    :cond_25
    invoke-direct {p0, p5, p4}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 261
    invoke-direct {p0, p5}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;)V

    .line 263
    if-eqz p2, :cond_3a

    .line 264
    const-string v0, "rt"

    invoke-virtual {p2}, Lcn/domob/android/ads/w$h;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_3a
    if-eqz p3, :cond_41

    .line 269
    const-string v0, "type"

    invoke-virtual {p5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_41
    if-eqz p4, :cond_95

    .line 273
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 274
    const-string v0, "pkg"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_4e
    iget v0, p4, Lcn/domob/android/ads/w$c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    .line 278
    const-string v0, "vc"

    iget v1, p4, Lcn/domob/android/ads/w$c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_5e
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 283
    const-string v0, "vn"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_69
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->g:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 287
    const-string v0, "failsafe"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->g:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_74
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 291
    const-string v0, "data"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_7f
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->i:Ljava/lang/String;

    if-eqz v0, :cond_8a

    .line 295
    const-string v0, "rgid"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->i:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_8a
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->j:Ljava/lang/String;

    if-eqz v0, :cond_95

    .line 300
    const-string v0, "rid"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->j:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_95
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event report urls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcn/domob/android/f/f;

    invoke-direct {v0, p5}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/f/f;Ljava/lang/String;)V

    .line 314
    :goto_b5
    return-void

    .line 312
    :cond_b6
    sget-object v0, Lcn/domob/android/ads/w;->d:Lcn/domob/android/i/f;

    const-string v1, "Event report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_b5
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 349
    new-instance v0, Lcn/domob/android/ads/w$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/w$2;-><init>(Lcn/domob/android/ads/w;)V

    iput-object v0, p0, Lcn/domob/android/ads/w;->G:Lcn/domob/android/f/g;

    .line 356
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/w;->e:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/w;->G:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/g;)V

    .line 357
    return-void
.end method
