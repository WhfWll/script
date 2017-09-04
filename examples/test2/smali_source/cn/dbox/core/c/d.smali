.class public Lcn/dbox/core/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/core/c/d$a;
    }
.end annotation


# static fields
.field private static a:Lcn/dbox/core/h/d; = null

.field private static final e:I = 0x2

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5


# instance fields
.field private b:Lcn/dbox/core/c/c;

.field private c:Lcn/dbox/core/c;

.field private d:Landroid/content/Context;

.field private k:Lcn/dbox/core/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/core/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Lcn/dbox/core/c;)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    .line 69
    invoke-virtual {p1}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic a(Lcn/dbox/core/c/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method private a(ILjava/util/HashMap;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    const-string v1, "cid"

    invoke-static {}, Lcn/dbox/core/c/f;->a()Lcn/dbox/core/c/f;

    move-result-object v2

    iget-object v3, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/dbox/core/c/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcn/dbox/core/c/f;->a()Lcn/dbox/core/c/f;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/dbox/core/c/f;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 156
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    .line 157
    const-string v1, "last_time_req"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_31
    const-string v1, "ratio"

    iget-object v2, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "sdk"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "rt"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "ua"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "idv"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "20140918"

    aput-object v4, v3, v6

    const-string v4, "android"

    aput-object v4, v3, v7

    const-string v4, "20140711"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "sv"

    const-string v2, "000900"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "l"

    invoke-static {}, Lcn/dbox/core/h/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Lcn/dbox/core/c;)Z

    move-result v1

    if-eqz v1, :cond_329

    .line 204
    const-string v1, "c"

    const-string v2, "%s,%s,%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "la"

    aput-object v4, v3, v6

    const-string v4, "iad"

    aput-object v4, v3, v7

    const-string v4, "aw"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_d3
    const-string v1, "so"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "sw"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->t(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "sh"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "sd"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->s(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "pb[name]"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "pb[version]"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    if-eqz p2, :cond_196

    .line 236
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 237
    sget-object v2, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 238
    const-string v1, "ids"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 239
    const-string v1, "ids"

    const-string v2, "ids"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_15d
    const-string v1, "acid"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 244
    const-string v1, "acid"

    const-string v2, "acid"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_170
    const-string v1, "q"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 249
    const-string v1, "q"

    const-string v2, "q"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_183
    const-string v1, "details"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 254
    const-string v1, "details"

    const-string v2, "details"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_196
    const-string v1, "network"

    iget-object v2, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/dbox/core/h/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_1e8

    .line 267
    sget-object v2, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 269
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_340

    .line 270
    const-string v1, "dma"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1e8
    :goto_1e8
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_351

    .line 280
    const-string v1, "odin1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_1fd
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_358

    .line 289
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/dbox/core/h/e;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v2, "d[coord]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "d[coord_acc]"

    invoke-static {}, Lcn/dbox/core/h/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v1, "d[coord_accuracy]"

    invoke-static {}, Lcn/dbox/core/h/e;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :goto_231
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->E(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    sget-object v2, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    const-string v3, "Base info: cid=%s, lac=%s, mcc=%s, mnc=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v1, v6

    aput-object v5, v4, v6

    aget-object v5, v1, v7

    aput-object v5, v4, v7

    aget-object v5, v1, v8

    aput-object v5, v4, v8

    aget-object v5, v1, v9

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 306
    const-string v2, "cell"

    aget-object v3, v1, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "lac"

    aget-object v3, v1, v7

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "mcc"

    aget-object v3, v1, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "mnc"

    aget-object v1, v1, v9

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 313
    if-eqz v1, :cond_2b8

    .line 314
    sget-object v2, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 316
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_2b8
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_2f7

    .line 321
    sget-object v2, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode apSSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-static {v4, v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 323
    const-string v2, "an"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-static {v3, v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_2f7
    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/dbox/core/h/e;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_308

    .line 335
    const-string v2, "aaid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_308
    sget-object v1, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad request params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Lcn/dbox/core/h/f;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_329
    const-string v1, "c"

    const-string v2, "%s,%s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "la"

    aput-object v4, v3, v6

    const-string v4, "iad"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d3

    .line 272
    :cond_340
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e8

    .line 282
    :cond_351
    const-string v2, "odin1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1fd

    .line 298
    :cond_358
    const-string v1, "d[coord_status]"

    invoke-static {}, Lcn/dbox/core/h/e;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_231
.end method

.method static synthetic b(Lcn/dbox/core/c/d;)Lcn/dbox/core/c/d$a;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/dbox/core/c/d;->k:Lcn/dbox/core/c/d$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcn/dbox/core/b$h;
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcn/dbox/core/b$h;->a:Lcn/dbox/core/b$h;

    .line 45
    div-int/lit16 v0, p1, 0x3e8

    packed-switch v0, :pswitch_data_1a

    .line 61
    :goto_7
    sget-object v0, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    .line 64
    :goto_9
    return-object v0

    .line 47
    :pswitch_a
    sget-object v0, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    goto :goto_9

    .line 50
    :pswitch_d
    sget-object v0, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    goto :goto_9

    .line 53
    :pswitch_10
    sget-object v0, Lcn/dbox/core/b$h;->c:Lcn/dbox/core/b$h;

    goto :goto_9

    .line 56
    :pswitch_13
    sget-object v0, Lcn/dbox/core/b$h;->e:Lcn/dbox/core/b$h;

    goto :goto_9

    .line 59
    :pswitch_16
    sget-object v0, Lcn/dbox/core/b$h;->b:Lcn/dbox/core/b$h;

    goto :goto_7

    .line 45
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public a(Lcn/dbox/core/c/d$a;Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/dbox/core/c/d$a;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcn/dbox/core/c/d;->k:Lcn/dbox/core/c/d$a;

    .line 81
    const/4 v0, 0x2

    :try_start_a
    invoke-direct {p0, v0, p2}, Lcn/dbox/core/c/d;->a(ILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 85
    new-instance v0, Lcn/dbox/core/c/c;

    iget-object v1, p0, Lcn/dbox/core/c/d;->d:Landroid/content/Context;

    iget-object v2, p0, Lcn/dbox/core/c/d;->c:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    new-instance v8, Lcn/dbox/core/c/d$1;

    invoke-direct {v8, p0}, Lcn/dbox/core/c/d$1;-><init>(Lcn/dbox/core/c/d;)V

    invoke-direct/range {v0 .. v8}, Lcn/dbox/core/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/dbox/core/c/c$a;)V

    iput-object v0, p0, Lcn/dbox/core/c/d;->b:Lcn/dbox/core/c/c;

    .line 137
    iget-object v0, p0, Lcn/dbox/core/c/d;->b:Lcn/dbox/core/c/c;

    invoke-virtual {v0}, Lcn/dbox/core/c/c;->b()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2e} :catch_2f

    .line 143
    :goto_2e
    return-void

    .line 138
    :catch_2f
    move-exception v0

    .line 139
    sget-object v1, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/dbox/core/h/d;->e(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcn/dbox/core/c/d;->a:Lcn/dbox/core/h/d;

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method
