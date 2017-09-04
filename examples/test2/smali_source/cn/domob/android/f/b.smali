.class public Lcn/domob/android/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/f/b$b;,
        Lcn/domob/android/f/b$a;
    }
.end annotation


# static fields
.field private static final B:I = 0x1000

.field private static final C:Ljava/lang/String; = "ctwap"

.field public static final a:Ljava/lang/String; = "sid"

.field private static c:Lcn/domob/android/i/f; = null

.field private static d:Z = false

.field private static e:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:I = 0x2

.field private static final k:Ljava/lang/String; = "connection"

.field private static final l:Ljava/lang/String; = "time"

.field private static final m:J = -0x1L

.field private static w:Lcn/domob/android/f/b$a;


# instance fields
.field private A:[B

.field protected b:Ljava/net/URL;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcn/domob/android/f/a;

.field private j:Z

.field private n:Ljava/net/HttpURLConnection;

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/net/Proxy;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lcn/domob/android/f/b$b;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcn/domob/android/f/b;->d:Z

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcn/domob/android/f/b;->g:Z

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/f/b;->j:Z

    .line 131
    iput-object p1, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    .line 134
    iput-object p5, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    .line 136
    iput p7, p0, Lcn/domob/android/f/b;->u:I

    .line 137
    iput-object p2, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    if-nez v0, :cond_1a

    .line 145
    :cond_1a
    iget-object v0, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 146
    const-string v0, "GET"

    iput-object v0, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    .line 152
    :cond_22
    :try_start_22
    invoke-direct {p0}, Lcn/domob/android/f/b;->q()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/lang/Error; {:try_start_22 .. :try_end_25} :catch_34

    .line 161
    :goto_25
    return-void

    .line 153
    :catch_26
    move-exception v0

    .line 154
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 155
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_25

    .line 156
    :catch_34
    move-exception v0

    .line 157
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method public static a(Lcn/domob/android/f/b$a;)V
    .registers 1

    .prologue
    .line 164
    sput-object p0, Lcn/domob/android/f/b;->w:Lcn/domob/android/f/b$a;

    .line 165
    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 204
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxy -- proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->s:Ljava/net/Proxy;

    .line 206
    return-void
.end method

.method protected static a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 540
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 541
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 546
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 543
    goto :goto_16

    .line 544
    :catch_19
    move-exception v0

    .line 545
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 546
    goto :goto_16
.end method

.method private f(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcn/domob/android/f/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    if-eqz v0, :cond_11

    .line 379
    iget-object v0, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    iget-object v1, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/domob/android/f/b$b;->a(Ljava/lang/String;)V

    .line 381
    :cond_11
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "try to use the new domain(%s) to connect again"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcn/domob/android/f/b;->h()Ljava/lang/String;

    .line 383
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 393
    const/4 v5, 0x0

    .line 394
    iget-object v0, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    if-eqz v0, :cond_86

    .line 395
    iget-object v0, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    invoke-interface {v0}, Lcn/domob/android/f/b$b;->b()[Ljava/lang/String;

    move-result-object v6

    .line 397
    if-eqz v6, :cond_86

    array-length v0, v6

    if-lez v0, :cond_86

    move v1, v2

    move v0, v2

    .line 399
    :goto_14
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_84

    .line 400
    if-nez v0, :cond_2b

    aget-object v3, v6, v1

    invoke-static {v3}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    aget-object v3, v6, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 402
    :cond_2b
    sget-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v6, v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 404
    :goto_47
    const/4 v3, 0x2

    if-ge v0, v3, :cond_7c

    .line 405
    add-int/lit8 v0, v1, 0x1

    aget-object v0, v6, v0

    .line 410
    :goto_4e
    if-nez v0, :cond_79

    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    if-eqz v1, :cond_79

    .line 411
    array-length v1, v6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 412
    sput-boolean v4, Lcn/domob/android/f/b;->d:Z

    .line 413
    invoke-direct {p0}, Lcn/domob/android/f/b;->t()V

    .line 414
    iget-object v1, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    iget-object v2, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    invoke-interface {v2}, Lcn/domob/android/f/b$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/f/b$b;->a(Ljava/lang/String;)V

    .line 415
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v2, "all domains have been masked"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 420
    :cond_79
    :goto_79
    return-object v0

    :cond_7a
    move v0, v2

    .line 402
    goto :goto_47

    :cond_7c
    move v3, v4

    .line 399
    :goto_7d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_14

    :cond_82
    move v3, v0

    goto :goto_7d

    :cond_84
    move-object v0, v5

    goto :goto_4e

    :cond_86
    move-object v0, v5

    goto :goto_79
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 482
    const-string v0, ""

    .line 483
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 484
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 485
    if-ltz v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1e

    .line 486
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_1e
    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 501
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcn/domob/android/i/h;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    const-string v1, ".*\\d.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
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

    return-object v0
.end method

.method private j(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 513
    .line 515
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 517
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_34

    .line 521
    :goto_11
    if-eqz v1, :cond_19

    .line 522
    const-string v2, "sid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    :cond_19
    iget-object v1, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    if-nez v1, :cond_24

    .line 526
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v2, "Context is null, but it is a parameter of the method isNetworkAvailable"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    .line 528
    :cond_24
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/f/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_33
    return v0

    .line 518
    :catch_34
    move-exception v1

    .line 519
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_11

    .line 531
    :cond_3c
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private q()V
    .registers 8

    .prologue
    .line 171
    iget-object v0, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 201
    :cond_4
    :goto_4
    return-void

    .line 175
    :cond_5
    const/4 v1, 0x0

    .line 178
    :try_start_6
    iget-object v0, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/i/c;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_91

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v2, "port"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 184
    const-string v3, "apn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    sget-object v4, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current apnType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "| port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    if-eqz v2, :cond_91

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 189
    sget-object v3, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v4, "ad request use proxy"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0, v2}, Lcn/domob/android/f/b;->a(Ljava/lang/String;I)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_91} :catch_98
    .catchall {:try_start_6 .. :try_end_91} :catchall_ac

    .line 197
    :cond_91
    if-eqz v1, :cond_4

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 193
    :catch_98
    move-exception v0

    .line 194
    :try_start_99
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v3, "\u83b7\u53d6APN\u5931\u8d25\u3002"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_99 .. :try_end_a5} :catchall_ac

    .line 197
    if-eqz v1, :cond_4

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 197
    :catchall_ac
    move-exception v0

    if-eqz v1, :cond_b2

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v0
.end method

.method private r()V
    .registers 5

    .prologue
    .line 460
    iget-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/domob/android/f/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    sget-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 462
    :goto_1a
    sget-object v2, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v2, 0x2

    if-lt v0, v2, :cond_3d

    .line 464
    invoke-direct {p0, v1}, Lcn/domob/android/f/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 466
    invoke-direct {p0, v0}, Lcn/domob/android/f/b;->f(Ljava/lang/String;)V

    .line 473
    :goto_36
    return-void

    .line 461
    :cond_37
    const/4 v0, 0x0

    goto :goto_1a

    .line 468
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/f/b;->j:Z

    goto :goto_36

    .line 471
    :cond_3d
    invoke-direct {p0, v1}, Lcn/domob/android/f/b;->f(Ljava/lang/String;)V

    goto :goto_36
.end method

.method private s()Lcn/domob/android/f/a;
    .registers 4

    .prologue
    .line 563
    iget-object v0, p0, Lcn/domob/android/f/b;->i:Lcn/domob/android/f/a;

    if-nez v0, :cond_f

    .line 564
    new-instance v0, Lcn/domob/android/f/a;

    iget-object v1, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    const-string v2, "connection"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->i:Lcn/domob/android/f/a;

    .line 566
    :cond_f
    iget-object v0, p0, Lcn/domob/android/f/b;->i:Lcn/domob/android/f/a;

    return-object v0
.end method

.method private t()V
    .registers 7

    .prologue
    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 571
    const-string v1, "time"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-direct {p0}, Lcn/domob/android/f/b;->s()Lcn/domob/android/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/f/a;->a(Ljava/util/HashMap;)V

    .line 573
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcn/domob/android/f/b;->x:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 628
    iput p1, p0, Lcn/domob/android/f/b;->u:I

    .line 629
    return-void
.end method

.method public a(Lcn/domob/android/f/b$b;)V
    .registers 2

    .prologue
    .line 559
    iput-object p1, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    .line 560
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    iput-object p1, p0, Lcn/domob/android/f/b;->x:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 2
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
    .line 612
    iput-object p1, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    .line 613
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 555
    iput-boolean p1, p0, Lcn/domob/android/f/b;->g:Z

    .line 556
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 228
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcn/domob/android/f/b;->h()Ljava/lang/String;

    .line 230
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 588
    iput-object p1, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    .line 589
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 580
    iput-object p1, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public c()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 237
    .line 240
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_140

    .line 241
    iget-object v0, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_135

    .line 243
    iget-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_ee

    .line 244
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_48} :catch_112

    .line 259
    :goto_48
    :try_start_48
    iget-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;

    if-eqz v0, :cond_2c0

    .line 260
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 263
    iget-object v0, p0, Lcn/domob/android/f/b;->s:Ljava/net/Proxy;

    if-eqz v0, :cond_149

    .line 264
    iget-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/f/b;->s:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    .line 269
    :goto_7e
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2c0

    .line 270
    iget-object v0, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_97

    .line 271
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_97
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 277
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/f/b;->u:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 278
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/f/b;->u:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 280
    iget-object v0, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_162

    .line 281
    iget-object v0, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b9
    :goto_b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_162

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    if-eqz v1, :cond_b9

    .line 284
    iget-object v4, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_d4} :catch_d5
    .catchall {:try_start_48 .. :try_end_d4} :catchall_155

    goto :goto_b9

    .line 338
    :catch_d5
    move-exception v0

    move-object v1, v2

    .line 339
    :goto_d7
    :try_start_d7
    sget-object v3, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    sget-object v3, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_2b1

    .line 343
    if-eqz v2, :cond_e8

    .line 344
    :try_start_e5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_28a

    .line 351
    :cond_e8
    :goto_e8
    if-eqz v1, :cond_ed

    .line 352
    :try_start_ea
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_292

    .line 358
    :cond_ed
    :goto_ed
    return-void

    .line 246
    :cond_ee
    :try_start_ee
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;
    :try_end_110
    .catch Ljava/net/MalformedURLException; {:try_start_ee .. :try_end_110} :catch_112

    goto/16 :goto_48

    .line 255
    :catch_112
    move-exception v0

    .line 256
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL string:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Failed to init connector."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_48

    .line 250
    :cond_135
    :try_start_135
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;

    goto/16 :goto_48

    .line 253
    :cond_140
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_147
    .catch Ljava/net/MalformedURLException; {:try_start_135 .. :try_end_147} :catch_112

    goto/16 :goto_48

    .line 266
    :cond_149
    :try_start_149
    iget-object v0, p0, Lcn/domob/android/f/b;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_153} :catch_d5
    .catchall {:try_start_149 .. :try_end_153} :catchall_155

    goto/16 :goto_7e

    .line 342
    :catchall_155
    move-exception v0

    move-object v3, v2

    .line 343
    :goto_157
    if-eqz v3, :cond_15c

    .line 344
    :try_start_159
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_29a

    .line 351
    :cond_15c
    :goto_15c
    if-eqz v2, :cond_161

    .line 352
    :try_start_15e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_2a2

    .line 356
    :cond_161
    :goto_161
    throw v0

    .line 289
    :cond_162
    :try_start_162
    iget-object v0, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    iget-object v0, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_1f8

    .line 290
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "DomobConnector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 293
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 297
    if-eqz v1, :cond_1c0

    .line 298
    iget-object v3, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 300
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 301
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 312
    :cond_1c0
    :goto_1c0
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/f/b;->y:I

    .line 314
    :goto_1c8
    iget v0, p0, Lcn/domob/android/f/b;->y:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1d4

    iget v0, p0, Lcn/domob/android/f/b;->y:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_205

    .line 315
    :cond_1d4
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    .line 316
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 317
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/f/b;->y:I

    goto :goto_1c8

    .line 306
    :cond_1f8
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "DomobConnector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_1c0

    .line 320
    :cond_205
    iget v0, p0, Lcn/domob/android/f/b;->y:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2be

    iget v0, p0, Lcn/domob/android/f/b;->y:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_2be

    .line 321
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_23c} :catch_d5
    .catchall {:try_start_162 .. :try_end_23c} :catchall_155

    .line 324
    const/16 v0, 0x1000

    :try_start_23e
    new-array v0, v0, [B

    .line 326
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_247} :catch_2b6
    .catchall {:try_start_23e .. :try_end_247} :catchall_2aa

    .line 327
    :goto_247
    :try_start_247
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-eq v2, v5, :cond_256

    .line 328
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_247

    .line 338
    :catch_252
    move-exception v0

    move-object v2, v3

    goto/16 :goto_d7

    .line 331
    :cond_256
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/f/b;->A:[B

    .line 332
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/f/b;->A:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/f/b;->z:Ljava/lang/String;
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_267} :catch_252
    .catchall {:try_start_247 .. :try_end_267} :catchall_2ad

    move-object v2, v3

    .line 335
    :goto_268
    :try_start_268
    iget-object v0, p0, Lcn/domob/android/f/b;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26d} :catch_2bb
    .catchall {:try_start_268 .. :try_end_26d} :catchall_2b1

    move-object v0, v2

    move-object v2, v1

    .line 343
    :goto_26f
    if-eqz v0, :cond_274

    .line 344
    :try_start_271
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_274} :catch_283

    .line 351
    :cond_274
    :goto_274
    if-eqz v2, :cond_ed

    .line 352
    :try_start_276
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_279
    .catch Ljava/io/IOException; {:try_start_276 .. :try_end_279} :catch_27b

    goto/16 :goto_ed

    .line 354
    :catch_27b
    move-exception v0

    .line 355
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_ed

    .line 346
    :catch_283
    move-exception v0

    .line 347
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_274

    .line 346
    :catch_28a
    move-exception v0

    .line 347
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_e8

    .line 354
    :catch_292
    move-exception v0

    .line 355
    sget-object v1, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_ed

    .line 346
    :catch_29a
    move-exception v1

    .line 347
    sget-object v3, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_15c

    .line 354
    :catch_2a2
    move-exception v1

    .line 355
    sget-object v2, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_161

    .line 342
    :catchall_2aa
    move-exception v0

    goto/16 :goto_157

    :catchall_2ad
    move-exception v0

    move-object v2, v1

    goto/16 :goto_157

    :catchall_2b1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_157

    .line 338
    :catch_2b6
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_d7

    :catch_2bb
    move-exception v0

    goto/16 :goto_d7

    :cond_2be
    move-object v1, v2

    goto :goto_268

    :cond_2c0
    move-object v0, v2

    goto :goto_26f
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 596
    iput-object p1, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public d()[B
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcn/domob/android/f/b;->A:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcn/domob/android/f/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 620
    iput-object p1, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcn/domob/android/f/b;->y:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    invoke-virtual {p0}, Lcn/domob/android/f/b;->c()V

    .line 425
    iput-boolean v6, p0, Lcn/domob/android/f/b;->j:Z

    .line 426
    iget-boolean v0, p0, Lcn/domob/android/f/b;->g:Z

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcn/domob/android/f/b;->v:Lcn/domob/android/f/b$b;

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lcn/domob/android/f/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/f/b;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 427
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been masked!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 428
    sget-boolean v0, Lcn/domob/android/f/b;->d:Z

    if-eqz v0, :cond_82

    .line 429
    invoke-direct {p0}, Lcn/domob/android/f/b;->s()Lcn/domob/android/f/a;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, v8, v9}, Lcn/domob/android/f/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 430
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_78

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_78

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/domob/android/f/b;->e:Ljava/util/HashMap;

    .line 432
    sput-boolean v6, Lcn/domob/android/f/b;->d:Z

    .line 433
    invoke-direct {p0}, Lcn/domob/android/f/b;->r()V

    .line 446
    :goto_61
    iget-boolean v0, p0, Lcn/domob/android/f/b;->j:Z

    if-eqz v0, :cond_75

    .line 447
    sget-object v0, Lcn/domob/android/f/b;->w:Lcn/domob/android/f/b$a;

    if-eqz v0, :cond_75

    .line 448
    sget-object v0, Lcn/domob/android/f/b;->c:Lcn/domob/android/i/f;

    const-string v1, "Call test listener"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcn/domob/android/f/b;->w:Lcn/domob/android/f/b$a;

    invoke-interface {v0, p0}, Lcn/domob/android/f/b$a;->a(Lcn/domob/android/f/b;)V

    .line 453
    :cond_75
    iget-object v0, p0, Lcn/domob/android/f/b;->z:Ljava/lang/String;

    return-object v0

    .line 435
    :cond_78
    cmp-long v0, v0, v8

    if-nez v0, :cond_7f

    .line 436
    invoke-direct {p0}, Lcn/domob/android/f/b;->t()V

    .line 438
    :cond_7f
    iput-boolean v7, p0, Lcn/domob/android/f/b;->j:Z

    goto :goto_61

    .line 441
    :cond_82
    invoke-direct {p0}, Lcn/domob/android/f/b;->r()V

    goto :goto_61

    .line 444
    :cond_86
    iput-boolean v7, p0, Lcn/domob/android/f/b;->j:Z

    goto :goto_61
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lcn/domob/android/f/b;->g:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcn/domob/android/f/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/content/Context;
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcn/domob/android/f/b;->o:Landroid/content/Context;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcn/domob/android/f/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcn/domob/android/f/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcn/domob/android/f/b;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcn/domob/android/f/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 624
    iget v0, p0, Lcn/domob/android/f/b;->u:I

    return v0
.end method
