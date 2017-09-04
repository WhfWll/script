.class Lcn/domob/android/ads/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/J$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static final b:Ljava/lang/String; = "method"

.field private static final c:Ljava/lang/String; = "ua"

.field private static final d:Ljava/lang/String; = "cid"

.field private static final e:Ljava/lang/String; = "ipb"

.field private static final f:Ljava/lang/String; = "sv"

.field private static final g:Ljava/lang/String; = "network"

.field private static final h:Ljava/lang/String; = "idv"

.field private static final i:Ljava/lang/String; = "get_task_list"

.field private static final j:Ljava/lang/String; = "report_result"

.field private static final k:Ljava/lang/String; = "3rd"

.field private static final l:Ljava/lang/String; = "tasks"

.field private static final m:Ljava/lang/String; = "det_interval"

.field private static final n:Ljava/lang/String; = "pb[version_code]"

.field private static final o:Ljava/lang/String; = "pb[identifier]"

.field private static final p:Ljava/lang/String; = "result"

.field private static final q:Ljava/lang/String; = "visit"

.field private static final r:Ljava/lang/String; = "seqid"

.field private static final s:Ljava/lang/String; = "vcode"

.field private static final t:Ljava/lang/String; = "s"

.field private static final u:Ljava/lang/String; = "c"

.field private static final v:J = 0x36ee80L

.field private static final w:J = 0x240c8400L

.field private static final x:J = 0x927c0L

.field private static z:Lcn/domob/android/ads/J;


# instance fields
.field private A:Z

.field private B:Lcn/domob/android/ads/g;

.field private y:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/J;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/J;->z:Lcn/domob/android/ads/J;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/J;->A:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/J;->B:Lcn/domob/android/ads/g;

    .line 67
    return-void
.end method

.method protected static a()Lcn/domob/android/ads/J;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcn/domob/android/ads/J;->z:Lcn/domob/android/ads/J;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcn/domob/android/ads/J;

    invoke-direct {v0}, Lcn/domob/android/ads/J;-><init>()V

    sput-object v0, Lcn/domob/android/ads/J;->z:Lcn/domob/android/ads/J;

    .line 75
    :cond_b
    sget-object v0, Lcn/domob/android/ads/J;->z:Lcn/domob/android/ads/J;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    const/4 v0, 0x1

    .line 376
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    .line 377
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 378
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-static {v3, v1, v0, v2}, Lcn/domob/android/ads/J;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    if-eqz v2, :cond_4c

    .line 383
    const/4 v0, 0x0

    :goto_2d
    move v2, v0

    .line 385
    goto :goto_f

    .line 386
    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post params string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    return-object v0

    :cond_4c
    move v0, v2

    goto :goto_2d
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-string v0, "method"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {p0}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    if-nez v0, :cond_12

    .line 307
    const-string v0, "Android,,,,,,,,"

    .line 310
    :cond_12
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v2, Lcn/domob/android/ads/c/a;

    const-string v3, "domob_config"

    invoke-direct {v2, p0, v3}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    const-string v3, "cookie_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_4a

    .line 316
    sget-object v3, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-class v4, Lcn/domob/android/ads/J;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_4a
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_b0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b0

    .line 322
    const-string v4, "ipb"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_5f
    invoke-static {p0}, Lcn/domob/android/b/a;->b(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_74

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_74

    .line 331
    const-string v5, "pb[version_code]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_74
    invoke-static {p0}, Lcn/domob/android/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 337
    if-eqz v4, :cond_89

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_89

    .line 338
    const-string v5, "pb[identifier]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_89
    const-string v4, "sv"

    const-string v5, "040602"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v4, "network"

    invoke-static {p0}, Lcn/domob/android/b/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v4, "idv"

    invoke-static {p0}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v4, "vcode"

    invoke-static {v3, v0, v2}, Lcn/domob/android/i/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/i/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/i/i$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    return-object v1

    .line 324
    :cond_b0
    sget-object v4, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "publisher id is null or empty!"

    invoke-virtual {v4, v5, v6}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private a(Landroid/content/Context;J)V
    .registers 10

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/c/a;

    const-string v1, "domob_config"

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 146
    const-string v2, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/a;->a(Ljava/util/HashMap;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 152
    :goto_1d
    return-void

    .line 149
    :catch_1e
    move-exception v0

    .line 150
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetectTime error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method static synthetic a(Lcn/domob/android/ads/J;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/domob/android/ads/J;->b()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 355
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    if-eqz p2, :cond_25

    .line 357
    if-eqz p3, :cond_26

    .line 358
    :try_start_c
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_25
    :goto_25
    return-void

    .line 362
    :cond_26
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_45} :catch_46

    goto :goto_25

    .line 367
    :catch_46
    move-exception v0

    .line 368
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/J;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 234
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/J;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 235
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-static {p1}, Lcn/domob/android/b/a;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 113
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v2, "is emulator ignore request"

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :cond_11
    :goto_11
    return v0

    .line 118
    :cond_12
    :try_start_12
    new-instance v2, Lcn/domob/android/ads/c/a;

    const-string v3, "domob_config"

    invoke-direct {v2, p1, v3}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    const-string v3, "next_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 121
    cmp-long v4, v2, v8

    if-gez v4, :cond_27

    move v0, v1

    .line 122
    goto :goto_11

    .line 125
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 128
    sget-object v4, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceed detInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " min"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_68} :catch_6f

    move-result-wide v2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_11

    move v0, v1

    .line 132
    goto :goto_11

    .line 136
    :catch_6f
    move-exception v1

    .line 137
    sget-object v2, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsNeedDetect error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11
.end method

.method private b()V
    .registers 5

    .prologue
    .line 91
    iget-boolean v0, p0, Lcn/domob/android/ads/J;->A:Z

    if-eqz v0, :cond_5

    .line 108
    :goto_4
    return-void

    .line 94
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/J;->A:Z

    .line 96
    :try_start_8
    iget-object v0, p0, Lcn/domob/android/ads/J;->y:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 97
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v1, "need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/J;->y:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/J;->b(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1c} :catch_28

    .line 107
    :goto_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/J;->A:Z

    goto :goto_4

    .line 100
    :cond_20
    :try_start_20
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v1, "no need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_1c

    .line 102
    :catch_28
    move-exception v0

    .line 103
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info detect has Throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private b(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/32 v6, 0x240c8400

    .line 156
    const-wide/32 v0, 0x927c0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;J)V

    .line 157
    const-string v0, "get_task_list"

    invoke-static {p1, v0}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/J;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Lcn/domob/android/ads/t;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/t;-><init>(Landroid/content/Context;)V

    .line 160
    sget-object v2, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https req:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcn/domob/android/ads/J;->B:Lcn/domob/android/ads/g;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/t;->a(Ljava/lang/String;Lcn/domob/android/ads/g;)Ljava/lang/String;

    move-result-object v0

    .line 163
    sget-object v2, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https rsp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 228
    :cond_5c
    :goto_5c
    return-void

    .line 167
    :cond_5d
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 171
    :try_start_62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 172
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_9a

    .line 173
    :cond_6f
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v1, "Https rsp jsonobject is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_5c

    .line 223
    :catch_77
    move-exception v0

    .line 224
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDetectInfo has a exception msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_5c

    .line 177
    :cond_9a
    :try_start_9a
    const-string v2, "det_interval"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    if-nez v2, :cond_c7

    .line 179
    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;J)V

    .line 192
    :goto_a9
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 195
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_dd

    .line 197
    :cond_bf
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v1, "Can\'t find a tag name of task"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5c

    .line 182
    :cond_c7
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 184
    cmp-long v4, v2, v6

    if-lez v4, :cond_d9

    .line 185
    const-wide/32 v2, 0x240c8400

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;J)V

    goto :goto_a9

    .line 187
    :cond_d9
    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;J)V

    goto :goto_a9

    .line 201
    :cond_dd
    const-string v3, "report_result"

    invoke-static {p1, v3}, Lcn/domob/android/ads/J;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 204
    const-string v4, "seqid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_f0

    .line 206
    const-string v4, "seqid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_f0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    invoke-direct {p0, v2, v0}, Lcn/domob/android/ads/J;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 212
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 213
    const-string v4, "result"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "result"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    if-eqz v3, :cond_5c

    .line 218
    invoke-direct {p0, v3}, Lcn/domob/android/ads/J;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcn/domob/android/ads/J;->B:Lcn/domob/android/ads/g;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/t;->a(Ljava/lang/String;Lcn/domob/android/ads/g;)Ljava/lang/String;

    .line 220
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Https send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_134} :catch_77

    goto/16 :goto_5c
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 241
    :try_start_0
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 268
    :goto_8
    return-void

    .line 244
    :cond_9
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 245
    if-nez v1, :cond_37

    .line 246
    sget-object v0, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v1, "Https rsp JSONArray is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_8

    .line 265
    :catch_19
    move-exception v0

    .line 266
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkThirdPartyExist has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 249
    :cond_37
    :try_start_37
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 251
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_46} :catch_19

    move-result-object v3

    .line 253
    :try_start_47
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 255
    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_4f} :catch_52
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_59

    .line 250
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 256
    :catch_52
    move-exception v4

    .line 257
    :try_start_53
    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4f

    .line 258
    :catch_59
    move-exception v3

    .line 259
    sget-object v3, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    const-string v4, "check package has exception"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4f

    .line 262
    :cond_62
    const-string v0, "3rd"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_19

    goto :goto_8
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 273
    const-string v0, "visit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 275
    if-eqz v0, :cond_4b

    .line 277
    :try_start_e
    new-instance v2, Lcn/domob/android/f/e;

    invoke-direct {v2}, Lcn/domob/android/f/e;-><init>()V

    .line 278
    invoke-virtual {v2, v0}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/domob/android/f/e;->a(Z)Lcn/domob/android/f/e;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/ads/J;->y:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcn/domob/android/f/e;->a(Landroid/content/Context;)Lcn/domob/android/f/e;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/ads/J;->y:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/f/e;->d(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 280
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/f/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 281
    if-nez v0, :cond_41

    const-string v0, ""

    .line 282
    :cond_41
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v0, "visit"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_4c

    .line 297
    :cond_4b
    :goto_4b
    return-void

    .line 285
    :catch_4c
    move-exception v0

    .line 286
    sget-object v2, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visit url has a Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    :try_start_69
    const-string v2, "c"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v0, "s"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    const-string v0, "visit"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_90} :catch_91

    goto :goto_4b

    .line 292
    :catch_91
    move-exception v0

    .line 293
    sget-object v1, Lcn/domob/android/ads/J;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/content/Context;Lcn/domob/android/ads/g;)V
    .registers 4

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcn/domob/android/ads/J;->y:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcn/domob/android/ads/J;->B:Lcn/domob/android/ads/g;

    .line 82
    new-instance v0, Lcn/domob/android/ads/J$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/J$1;-><init>(Lcn/domob/android/ads/J;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/J$1;->start()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 87
    monitor-exit p0

    return-void

    .line 80
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
