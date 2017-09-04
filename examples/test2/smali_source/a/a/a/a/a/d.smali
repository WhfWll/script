.class La/a/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/d$1;,
        La/a/a/a/a/d$b;,
        La/a/a/a/a/d$a;
    }
.end annotation


# static fields
.field private static b:La/a/a/a/a/d; = null

.field private static c:La/a/a/a/a/a$a; = null

.field private static d:La/a/a/a/a/a$b; = null

.field private static final g:Ljava/lang/String; = "/DCacheDownload/"

.field private static h:Ljava/lang/String;

.field private static i:Z


# instance fields
.field private a:Lcn/domob/android/i/f;

.field private e:La/a/a/a/a/d$b;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, La/a/a/a/a/d;->b:La/a/a/a/a/d;

    .line 31
    sput-object v0, La/a/a/a/a/d;->h:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, La/a/a/a/a/d;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, La/a/a/a/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;

    .line 35
    new-instance v0, La/a/a/a/a/d$b;

    invoke-direct {v0, p0}, La/a/a/a/a/d$b;-><init>(La/a/a/a/a/d;)V

    iput-object v0, p0, La/a/a/a/a/d;->e:La/a/a/a/a/d$b;

    .line 36
    return-void
.end method

.method static synthetic a(La/a/a/a/a/d;)Lcn/domob/android/i/f;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 322
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    .line 324
    :try_start_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_2b

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 327
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_25

    move-result-object v0

    .line 333
    :goto_24
    return-object v0

    .line 329
    :catch_25
    move-exception v0

    .line 330
    iget-object v1, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 333
    :cond_2b
    const/4 v0, 0x0

    goto :goto_24
.end method

.method protected static a(Landroid/content/Context;La/a/a/a/a/a$a;)V
    .registers 3

    .prologue
    .line 65
    sget-object v0, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    if-nez v0, :cond_6

    .line 66
    sput-object p1, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    .line 68
    :cond_6
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 69
    invoke-static {}, La/a/a/a/a/d;->d()V

    .line 71
    :cond_13
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/f;->f(Landroid/content/Context;)V

    .line 72
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/d;->f(Landroid/content/Context;)Z

    .line 73
    invoke-static {}, La/a/a/a/a/d;->b()La/a/a/a/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/a/a/d;->d(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected static declared-synchronized b()La/a/a/a/a/d;
    .registers 2

    .prologue
    .line 58
    const-class v1, La/a/a/a/a/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, La/a/a/a/a/d;->b:La/a/a/a/a/d;

    if-nez v0, :cond_e

    .line 59
    new-instance v0, La/a/a/a/a/d;

    invoke-direct {v0}, La/a/a/a/a/d;-><init>()V

    sput-object v0, La/a/a/a/a/d;->b:La/a/a/a/a/d;

    .line 61
    :cond_e
    sget-object v0, La/a/a/a/a/d;->b:La/a/a/a/a/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static c()La/a/a/a/a/a$b;
    .registers 1

    .prologue
    .line 77
    sget-object v0, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    return-object v0
.end method

.method protected static d()V
    .registers 1

    .prologue
    .line 398
    sget-object v0, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    if-eqz v0, :cond_9

    .line 399
    sget-object v0, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    invoke-interface {v0}, La/a/a/a/a/a$a;->a()V

    .line 401
    :cond_9
    return-void
.end method

.method private g(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 436
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d

    move v0, v1

    .line 448
    :goto_c
    return v0

    .line 440
    :cond_d
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 441
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_23

    .line 443
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 444
    if-ne v0, v2, :cond_23

    move v0, v2

    .line 445
    goto :goto_c

    :cond_23
    move v0, v1

    .line 448
    goto :goto_c
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 43
    invoke-virtual {p0}, La/a/a/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, La/a/a/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected a(La/a/a/a/a/a$b;)V
    .registers 3

    .prologue
    .line 81
    sget-object v0, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    if-nez v0, :cond_6

    .line 82
    sput-object p1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    .line 84
    :cond_6
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;I)V
    .registers 14

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 183
    sget-object v0, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_4e

    .line 184
    const/4 v0, 0x0

    .line 186
    :try_start_b
    check-cast p2, La/a/a/a/a/d$a;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_4f

    .line 190
    :goto_d
    if-eqz p2, :cond_4e

    .line 191
    invoke-virtual {p2}, La/a/a/a/a/d$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, La/a/a/a/a/d$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v3, "download failed errorCode: %d, groupID: %s, resourceID: %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, La/a/a/a/a/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, La/a/a/a/a/d;->b(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 195
    aget-object v3, v0, v8

    .line 196
    aget-object v4, v0, v6

    .line 197
    aget-object v5, v0, v7

    .line 198
    new-instance v0, La/a/a/a/a/e;

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, La/a/a/a/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 200
    if-ne p3, v9, :cond_57

    .line 201
    sget-object v1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v1, v0}, La/a/a/a/a/a$b;->f(La/a/a/a/a/e;)V

    .line 212
    :cond_4e
    :goto_4e
    return-void

    .line 187
    :catch_4f
    move-exception v1

    .line 188
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    move-object p2, v0

    goto :goto_d

    .line 202
    :cond_57
    if-ne p3, v7, :cond_5f

    .line 203
    sget-object v1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v1, v0}, La/a/a/a/a/a$b;->e(La/a/a/a/a/e;)V

    goto :goto_4e

    .line 204
    :cond_5f
    if-ne p3, v6, :cond_67

    .line 205
    sget-object v1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v1, v0}, La/a/a/a/a/a$b;->d(La/a/a/a/a/e;)V

    goto :goto_4e

    .line 206
    :cond_67
    const/4 v1, 0x4

    if-ne p3, v1, :cond_4e

    .line 207
    sget-object v1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v1, v0}, La/a/a/a/a/a$b;->c(La/a/a/a/a/e;)V

    goto :goto_4e
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;JZ)V
    .registers 15

    .prologue
    .line 137
    check-cast p2, La/a/a/a/a/d$a;

    .line 138
    invoke-virtual {p2}, La/a/a/a/a/d$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p2}, La/a/a/a/a/d$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v3, "download successfully groupid:%s  resourceID:%s  localPath:%s  fileSize: %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    const-string v3, "Path"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "ContentLength"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v3, "Rgid = ? and Ridd = ?"

    .line 145
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 146
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v5

    const-string v6, "resource"

    invoke-virtual {v5, v6, v0, v3, v4}, La/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 147
    const/4 v3, 0x1

    if-ne v0, v3, :cond_d3

    .line 148
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v3, "update BD successfully"

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 152
    :goto_5a
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, La/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 153
    if-eqz v6, :cond_6b

    .line 155
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/a/a/f;->c(Landroid/content/Context;)V

    .line 158
    :cond_6b
    if-eqz p6, :cond_ed

    sget-object v0, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    if-eqz v0, :cond_ed

    if-nez v6, :cond_7d

    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, La/a/a/a/a/f;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 160
    :cond_7d
    invoke-virtual {p0, p1, v1}, La/a/a/a/a/d;->b(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 161
    const/4 v0, 0x0

    aget-object v3, v7, v0

    .line 162
    const/4 v0, 0x1

    aget-object v4, v7, v0

    .line 163
    const/4 v0, 0x2

    aget-object v5, v7, v0

    .line 164
    new-instance v0, La/a/a/a/a/e;

    invoke-direct/range {v0 .. v5}, La/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v7}, La/a/a/a/a/d;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 166
    iget-object v3, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v4, "send resource download success report the groupID is %s and resourceID is %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 167
    sget-object v2, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v2, v0}, La/a/a/a/a/a$b;->a(La/a/a/a/a/e;)V

    .line 168
    if-eqz v6, :cond_c9

    .line 169
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v3, "send group download success report the groupID is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    iput-object v1, v0, La/a/a/a/a/e;->b:Ljava/lang/String;

    .line 171
    sget-object v1, La/a/a/a/a/d;->d:La/a/a/a/a/a$b;

    invoke-interface {v1, v0}, La/a/a/a/a/a$b;->b(La/a/a/a/a/e;)V

    .line 177
    :cond_c9
    :goto_c9
    invoke-virtual {p0, p1}, La/a/a/a/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 178
    invoke-static {}, La/a/a/a/a/d;->d()V

    .line 180
    :cond_d2
    return-void

    .line 150
    :cond_d3
    iget-object v3, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update DB failed and the affected row number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 175
    :cond_ed
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v1, "does not meet the conditions of sending download successfully report"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    goto :goto_c9
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 273
    invoke-virtual {p0, p1}, La/a/a/a/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 274
    invoke-static {}, La/a/a/a/a/d;->d()V

    .line 319
    :cond_d
    :goto_d
    return-void

    .line 277
    :cond_e
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "Ridd"

    aput-object v0, v2, v8

    const-string v0, "ResourceUrl"

    aput-object v0, v2, v5

    .line 278
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    const-string v1, "Rgid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v1, " = ? and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v1, "Path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v8

    const-string v0, "empty"

    aput-object v0, v4, v5

    .line 285
    const-string v5, "_id ASC"

    .line 288
    :try_start_3f
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resource"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_139
    .catchall {:try_start_3f .. :try_end_49} :catchall_129

    move-result-object v1

    .line 289
    if-eqz v1, :cond_11c

    .line 290
    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v2, "there are %d resource need to download"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    move v2, v8

    .line 292
    :goto_69
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_11c

    .line 293
    invoke-virtual {p0, p1}, La/a/a/a/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7f

    .line 292
    :cond_7b
    :goto_7b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_69

    .line 297
    :cond_7f
    const-string v0, "Ridd"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    const-string v0, "ResourceUrl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-direct {p0, v4}, La/a/a/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    if-nez v0, :cond_9b

    const-string v0, ""

    .line 301
    :cond_9b
    iget-object v5, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileExtensions:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    sget-object v5, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    if-eqz v5, :cond_104

    .line 304
    iget-object v5, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v6, "Call the download module to Download resource. groupID:%s  resourceID:%s  downloadURL:%s  filePath:%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 306
    sget-object v5, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    new-instance v6, La/a/a/a/a/d$a;

    invoke-direct {v6, p0, p2, v3}, La/a/a/a/a/d$a;-><init>(La/a/a/a/a/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, p1, v6, v4, v0}, La/a/a/a/a/a$a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_104
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_107} :catch_109
    .catchall {:try_start_4c .. :try_end_107} :catchall_137

    goto/16 :goto_7b

    .line 311
    :catch_109
    move-exception v0

    .line 312
    :goto_10a
    :try_start_10a
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_137

    .line 315
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 315
    :cond_11c
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 315
    :catchall_129
    move-exception v0

    move-object v1, v7

    :goto_12b
    if-eqz v1, :cond_136

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_136

    .line 316
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_136
    throw v0

    .line 315
    :catchall_137
    move-exception v0

    goto :goto_12b

    .line 311
    :catch_139
    move-exception v0

    move-object v1, v7

    goto :goto_10a
.end method

.method protected a()Z
    .registers 3

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a([Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 215
    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2d

    .line 216
    aget-object v2, p1, v0

    if-eqz v2, :cond_14

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 218
    :cond_14
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the download report info can not meet the sending condition, so quit send report "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 222
    :goto_2c
    return v1

    :cond_2d
    const/4 v1, 0x1

    goto :goto_2c
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    sget-object v0, La/a/a/a/a/d;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, La/a/a/a/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 52
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/DCacheDownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, La/a/a/a/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/d;->h:Ljava/lang/String;

    .line 54
    :cond_25
    sget-object v0, La/a/a/a/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 355
    new-array v8, v0, [Ljava/lang/String;

    .line 356
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Tracker"

    aput-object v0, v2, v1

    const-string v0, "Ppid"

    aput-object v0, v2, v4

    const-string v0, "EventTrackerURL"

    aput-object v0, v2, v3

    .line 357
    const-string v3, "Rgid != ? "

    .line 358
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v1

    .line 361
    :try_start_1b
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_62
    .catchall {:try_start_1b .. :try_end_26} :catchall_75

    move-result-object v1

    .line 362
    if-eqz v1, :cond_56

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 363
    const-string v0, "Tracker"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v2, "Ppid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    const-string v3, "EventTrackerURL"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 366
    const/4 v4, 0x0

    aput-object v0, v8, v4

    .line 367
    const/4 v0, 0x1

    aput-object v2, v8, v0

    .line 368
    const/4 v0, 0x2

    aput-object v3, v8, v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_56} :catch_85
    .catchall {:try_start_29 .. :try_end_56} :catchall_83

    .line 373
    :cond_56
    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_61

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_61
    :goto_61
    return-object v8

    .line 370
    :catch_62
    move-exception v0

    move-object v1, v7

    .line 371
    :goto_64
    :try_start_64
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_83

    .line 373
    if-eqz v1, :cond_61

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_61

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_61

    .line 373
    :catchall_75
    move-exception v0

    move-object v1, v7

    :goto_77
    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_82

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0

    .line 373
    :catchall_83
    move-exception v0

    goto :goto_77

    .line 370
    :catch_85
    move-exception v0

    goto :goto_64
.end method

.method protected c(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x1

    .line 112
    sget-boolean v2, La/a/a/a/a/d;->i:Z

    if-nez v2, :cond_d

    .line 113
    invoke-virtual {p0, p1}, La/a/a/a/a/d;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 117
    :cond_d
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v2

    invoke-virtual {v2, p1}, La/a/a/a/a/f;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, La/a/a/a/a/d;->c:La/a/a/a/a/a$a;

    if-eqz v2, :cond_21

    invoke-direct {p0, p1}, La/a/a/a/a/d;->g(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    move v0, v1

    .line 120
    :cond_22
    if-eqz v0, :cond_2c

    .line 121
    iget-object v1, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v2, "can meet condition to download resource"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 125
    :goto_2b
    return v0

    .line 123
    :cond_2c
    iget-object v1, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v2, "can not meet condition to download resource"

    invoke-virtual {v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method protected d(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 231
    iget-object v0, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    const-string v1, "try to download resource"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p1}, La/a/a/a/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 233
    invoke-static {}, La/a/a/a/a/d;->d()V

    .line 269
    :cond_13
    :goto_13
    return-void

    .line 236
    :cond_14
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "Rgid"

    aput-object v0, v2, v8

    const-string v0, "State"

    aput-object v0, v2, v4

    .line 237
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    const-string v0, "Expires"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v0, " > ? or "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v0, "Expires"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v0, " = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 243
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 244
    const-string v5, "_id ASC"

    .line 245
    const/4 v6, 0x0

    .line 248
    :try_start_4c
    invoke-static {p1}, La/a/a/a/a/b;->a(Landroid/content/Context;)La/a/a/a/a/b;

    move-result-object v0

    const-string v1, "resourceGroup"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v6}, La/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_9f
    .catchall {:try_start_4c .. :try_end_59} :catchall_b3

    move-result-object v1

    .line 250
    if-eqz v1, :cond_92

    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    move v0, v8

    .line 251
    :goto_63
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 252
    invoke-static {}, La/a/a/a/a/f;->a()La/a/a/a/a/f;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/a/a/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_8f

    .line 253
    const-string v2, "State"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 254
    if-nez v2, :cond_8c

    .line 255
    const-string v2, "Rgid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p0, p1, v2}, La/a/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    :cond_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_8f} :catch_c3
    .catchall {:try_start_5c .. :try_end_8f} :catchall_c1

    .line 251
    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 265
    :cond_92
    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 262
    :catch_9f
    move-exception v0

    move-object v1, v7

    .line 263
    :goto_a1
    :try_start_a1
    iget-object v2, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_c1

    .line 265
    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 265
    :catchall_b3
    move-exception v0

    move-object v1, v7

    :goto_b5
    if-eqz v1, :cond_c0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw v0

    .line 265
    :catchall_c1
    move-exception v0

    goto :goto_b5

    .line 262
    :catch_c3
    move-exception v0

    goto :goto_a1
.end method

.method e(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 337
    iget-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 338
    iget-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;

    .line 351
    :goto_e
    return-object v0

    .line 341
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 345
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;

    .line 346
    iget-object v0, p0, La/a/a/a/a/d;->f:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_27

    goto :goto_e

    .line 348
    :catch_27
    move-exception v0

    .line 349
    iget-object v1, p0, La/a/a/a/a/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 351
    :cond_2d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected f(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 381
    sget-boolean v1, La/a/a/a/a/d;->i:Z

    if-nez v1, :cond_28

    .line 382
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, La/a/a/a/a/d;->e:La/a/a/a/a/d$b;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 387
    sput-boolean v0, La/a/a/a/a/d;->i:Z

    .line 391
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
