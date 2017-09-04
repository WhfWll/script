.class Lcn/domob/android/g/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static final b:Ljava/lang/String; = "sid"

.field private static final c:J

.field private static volatile d:Z

.field private static e:J

.field private static f:Z

.field private static l:I


# instance fields
.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcn/domob/android/g/a/a$a;

.field private j:Lcn/domob/android/g/a/c;

.field private k:Lcn/domob/android/f/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/g/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    .line 34
    sput-boolean v2, Lcn/domob/android/g/a/b;->d:Z

    .line 38
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/domob/android/g/a/b;->e:J

    .line 42
    sput-boolean v2, Lcn/domob/android/g/a/b;->f:Z

    .line 66
    sput v2, Lcn/domob/android/g/a/b;->l:I

    return-void
.end method

.method constructor <init>(Lcn/domob/android/g/a/c;)V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/g/a/b;->i:Lcn/domob/android/g/a/a$a;

    .line 69
    iput-object p1, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    .line 70
    return-void
.end method

.method private a(Lcn/domob/android/g/a/c;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/g/a/c;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Lcn/domob/android/g/a/c;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/g/a/c;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/domob/android/g/a/d;->a(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v1

    .line 247
    invoke-virtual {p1}, Lcn/domob/android/g/a/c;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 248
    invoke-virtual {p1}, Lcn/domob/android/g/a/c;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 252
    :cond_36
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete request parameter is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 253
    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcn/domob/android/g/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    .line 158
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "try to use the new url(%s) to connect again"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->d()V

    .line 160
    return-void
.end method

.method protected static a()Z
    .registers 1

    .prologue
    .line 329
    sget-boolean v0, Lcn/domob/android/g/a/b;->d:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 288
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcn/domob/android/i/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v2, "create new url(%s) for detect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 293
    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 114
    invoke-direct {p0, v0}, Lcn/domob/android/g/a/b;->a(Ljava/lang/String;)V

    .line 116
    :cond_d
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->d()I

    move-result v0

    if-lez v0, :cond_7d

    .line 126
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->c()[Ljava/lang/String;

    move-result-object v3

    .line 128
    if-eqz v3, :cond_75

    array-length v0, v3

    if-lez v0, :cond_75

    .line 130
    sget v0, Lcn/domob/android/g/a/b;->l:I

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    iget-object v5, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v5}, Lcn/domob/android/g/a/c;->d()I

    move-result v5

    mul-int/2addr v4, v5

    if-gt v0, v4, :cond_5f

    .line 131
    sget v0, Lcn/domob/android/g/a/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v4}, Lcn/domob/android/g/a/c;->d()I

    move-result v4

    div-int v4, v0, v4

    sget v0, Lcn/domob/android/g/a/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v5}, Lcn/domob/android/g/a/c;->d()I

    move-result v5

    rem-int/2addr v0, v5

    if-lez v0, :cond_48

    move v0, v1

    :goto_3d
    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 133
    array-length v4, v3

    if-ge v0, v4, :cond_4a

    if-ltz v0, :cond_4a

    .line 134
    aget-object v0, v3, v0

    .line 147
    :goto_47
    return-object v0

    :cond_48
    move v0, v2

    .line 131
    goto :goto_3d

    .line 136
    :cond_4a
    sget-object v3, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v4, "logical error, index(%d) out of array"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 147
    :goto_5d
    const/4 v0, 0x0

    goto :goto_47

    .line 139
    :cond_5f
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v3, "all domains has failed, detected failed times is %d"

    new-array v1, v1, [Ljava/lang/Object;

    sget v4, Lcn/domob/android/g/a/b;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_5d

    .line 142
    :cond_75
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "domain array is null or length is zero"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_5d

    .line 145
    :cond_7d
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "Each domain can try to detect the number is not greater than 0"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method private c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 304
    .line 306
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 308
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_2a

    .line 312
    :goto_11
    if-eqz v1, :cond_19

    .line 313
    const-string v2, "sid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_19
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 317
    :goto_20
    if-eqz v0, :cond_34

    .line 318
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v2, "connect response contain sid"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 322
    :goto_29
    return v0

    .line 309
    :catch_2a
    move-exception v1

    .line 310
    sget-object v2, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_11

    .line 316
    :cond_32
    const/4 v0, 0x0

    goto :goto_20

    .line 320
    :cond_34
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v2, "connect response not contain sid"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private d()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->j()V

    .line 171
    :cond_b
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 172
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcn/domob/android/g/a/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/g/a/b;->h:Z

    .line 176
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found available url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 189
    :cond_3e
    :goto_3e
    return-void

    .line 179
    :cond_3f
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->h()I

    .line 180
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->i()V

    .line 182
    sget-boolean v0, Lcn/domob/android/g/a/b;->f:Z

    if-nez v0, :cond_3e

    .line 183
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->b()V

    goto :goto_3e

    .line 187
    :cond_4d
    sget-object v0, Lcn/domob/android/g/a/a$a;->a:Lcn/domob/android/g/a/a$a;

    iput-object v0, p0, Lcn/domob/android/g/a/b;->i:Lcn/domob/android/g/a/a$a;

    goto :goto_3e
.end method

.method private e()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 195
    sget-wide v2, Lcn/domob/android/g/a/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_26

    sget-wide v2, Lcn/domob/android/g/a/b;->e:J

    iget-object v1, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v1}, Lcn/domob/android/g/a/c;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_26

    .line 197
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v2, "all domains failed has been timeout, so reset varable, detect again"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 198
    sput-boolean v0, Lcn/domob/android/g/a/b;->f:Z

    .line 199
    sput v0, Lcn/domob/android/g/a/b;->l:I

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_26
    return v0
.end method

.method private f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 211
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "do sync connect"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    invoke-direct {p0}, Lcn/domob/android/g/a/b;->g()Lcn/domob/android/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/c;->a(Lcn/domob/android/f/e;)Lcn/domob/android/f/h;

    move-result-object v1

    .line 213
    const/4 v0, 0x0

    .line 214
    if-eqz v1, :cond_1a

    .line 215
    invoke-virtual {v1}, Lcn/domob/android/f/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_1a
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect response String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 218
    return-object v0
.end method

.method private g()Lcn/domob/android/f/e;
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    if-nez v0, :cond_23

    .line 228
    new-instance v0, Lcn/domob/android/f/e;

    invoke-direct {v0}, Lcn/domob/android/f/e;-><init>()V

    iput-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    .line 229
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    iget-object v1, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v1}, Lcn/domob/android/g/a/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->a(Landroid/content/Context;)Lcn/domob/android/f/e;

    .line 230
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->c(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 231
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->a(Z)Lcn/domob/android/f/e;

    .line 233
    :cond_23
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    new-instance v1, Lcn/domob/android/f/f;

    iget-object v2, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-direct {p0, v2}, Lcn/domob/android/g/a/b;->a(Lcn/domob/android/g/a/c;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->a(Lcn/domob/android/f/f;)Lcn/domob/android/f/e;

    .line 234
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    iget-object v1, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/f/e;->a(Ljava/lang/String;)Lcn/domob/android/f/e;

    .line 235
    iget-object v0, p0, Lcn/domob/android/g/a/b;->k:Lcn/domob/android/f/e;

    return-object v0
.end method

.method private h()I
    .registers 6

    .prologue
    .line 260
    sget v0, Lcn/domob/android/g/a/b;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/g/a/b;->l:I

    .line 261
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "detect failed, total failed time is %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcn/domob/android/g/a/b;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 262
    sget v0, Lcn/domob/android/g/a/b;->l:I

    return v0
.end method

.method private i()V
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->c()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->d()I

    move-result v0

    if-lez v0, :cond_32

    .line 270
    sget v0, Lcn/domob/android/g/a/b;->l:I

    iget-object v1, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v1}, Lcn/domob/android/g/a/c;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v2}, Lcn/domob/android/g/a/c;->d()I

    move-result v2

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_32

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/g/a/b;->f:Z

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/domob/android/g/a/b;->e:J

    .line 273
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "all domains have been masked"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 276
    :cond_32
    return-void
.end method

.method private j()V
    .registers 7

    .prologue
    .line 336
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->k()I

    move-result v0

    .line 337
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v2, "thread sleep %d millisecond"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 339
    int-to-long v0, v0

    :try_start_1a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 343
    :goto_1d
    return-void

    .line 340
    :catch_1e
    move-exception v0

    .line 341
    sget-object v1, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method private k()I
    .registers 3

    .prologue
    .line 351
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 352
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "start multi domain detect"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/g/a/b;->d:Z

    .line 76
    iput-boolean v3, p0, Lcn/domob/android/g/a/b;->h:Z

    .line 77
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/i/c;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 78
    sget-boolean v0, Lcn/domob/android/g/a/b;->f:Z

    if-eqz v0, :cond_71

    .line 80
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 81
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->b()V

    .line 92
    :goto_26
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->a()Lcn/domob/android/g/a/a$b;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 93
    sget-boolean v0, Lcn/domob/android/g/a/b;->f:Z

    if-eqz v0, :cond_36

    .line 94
    sget-object v0, Lcn/domob/android/g/a/a$a;->b:Lcn/domob/android/g/a/a$a;

    iput-object v0, p0, Lcn/domob/android/g/a/b;->i:Lcn/domob/android/g/a/a$a;

    .line 96
    :cond_36
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "multi domain detect finished"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcn/domob/android/g/a/b;->h:Z

    if-eqz v0, :cond_81

    .line 98
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found available domain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->a()Lcn/domob/android/g/a/a$b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/g/a/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/domob/android/g/a/a$b;->a(Ljava/lang/String;)V

    .line 105
    :cond_66
    :goto_66
    sput-boolean v3, Lcn/domob/android/g/a/b;->d:Z

    .line 106
    return-void

    .line 83
    :cond_69
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "all domain has been detected failed, and allow detecting time is not reaching"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 86
    :cond_71
    invoke-direct {p0}, Lcn/domob/android/g/a/b;->b()V

    goto :goto_26

    .line 89
    :cond_75
    sget-object v0, Lcn/domob/android/g/a/a$a;->a:Lcn/domob/android/g/a/a$a;

    iput-object v0, p0, Lcn/domob/android/g/a/b;->i:Lcn/domob/android/g/a/a$a;

    .line 90
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "network is not available, so finish detecting"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_26

    .line 101
    :cond_81
    sget-object v0, Lcn/domob/android/g/a/b;->a:Lcn/domob/android/i/f;

    const-string v1, "not found available domain"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/domob/android/g/a/b;->j:Lcn/domob/android/g/a/c;

    invoke-virtual {v0}, Lcn/domob/android/g/a/c;->a()Lcn/domob/android/g/a/a$b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/g/a/b;->i:Lcn/domob/android/g/a/a$a;

    invoke-interface {v0, v1}, Lcn/domob/android/g/a/a$b;->a(Lcn/domob/android/g/a/a$a;)V

    goto :goto_66
.end method
