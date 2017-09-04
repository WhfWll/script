.class Lcn/domob/android/ads/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/o$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field protected static final b:I = 0x6

.field private static c:Lcn/domob/android/i/f; = null

.field private static d:Z = false

.field private static final g:Ljava/lang/String; = "sdk"

.field private static final h:Ljava/lang/String; = "rt"

.field private static final i:Ljava/lang/String; = "ts"

.field private static final j:Ljava/lang/String; = "ua"

.field private static final k:Ljava/lang/String; = "ipb"

.field private static final l:Ljava/lang/String; = "v"

.field private static final m:Ljava/lang/String; = "sv"


# instance fields
.field private e:Lcn/domob/android/ads/g;

.field private f:Landroid/content/Context;

.field private n:Lcn/domob/android/f/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/o;->c:Lcn/domob/android/i/f;

    .line 17
    sput-boolean v2, Lcn/domob/android/ads/o;->d:Z

    .line 19
    sput-boolean v2, Lcn/domob/android/ads/o;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/g;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcn/domob/android/ads/o;->c:Lcn/domob/android/i/f;

    const-string v1, "New instance of DomobConfigRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcn/domob/android/ads/o;->e:Lcn/domob/android/ads/g;

    .line 45
    invoke-virtual {p1}, Lcn/domob/android/ads/g;->x()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/o;->f:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/o;)Lcn/domob/android/ads/g;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcn/domob/android/ads/o;->e:Lcn/domob/android/ads/g;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcn/domob/android/ads/o;->c:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private c()Lcn/domob/android/f/f;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v1, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "rt"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/o;->f:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/o;->e:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20141125"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20140529"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "sv"

    const-string v2, "040602"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Lcn/domob/android/f/f;

    invoke-direct {v1, v0}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method protected a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/domob/android/d/a;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 58
    sget-boolean v0, Lcn/domob/android/ads/o;->d:Z

    if-eqz v0, :cond_b

    .line 59
    new-instance v0, Lcn/domob/android/d/a;

    invoke-direct {v0}, Lcn/domob/android/d/a;-><init>()V

    throw v0

    .line 62
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/o;->d:Z

    .line 64
    :try_start_e
    sget-object v0, Lcn/domob/android/ads/o;->c:Lcn/domob/android/i/f;

    const-string v1, "Start to request config info"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcn/domob/android/ads/o$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/o$1;-><init>(Lcn/domob/android/ads/o;)V

    iput-object v0, p0, Lcn/domob/android/ads/o;->n:Lcn/domob/android/f/g;

    .line 88
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/o;->f:Landroid/content/Context;

    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/ads/o;->c()Lcn/domob/android/f/f;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/o;->n:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/f/c;->b(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_36
    .catchall {:try_start_e .. :try_end_33} :catchall_3d

    .line 96
    sput-boolean v5, Lcn/domob/android/ads/o;->d:Z

    .line 102
    :goto_35
    return-void

    .line 91
    :catch_36
    move-exception v0

    .line 92
    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d

    .line 96
    sput-boolean v5, Lcn/domob/android/ads/o;->d:Z

    goto :goto_35

    :catchall_3d
    move-exception v0

    sput-boolean v5, Lcn/domob/android/ads/o;->d:Z

    throw v0
.end method
