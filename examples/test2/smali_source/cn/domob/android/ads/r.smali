.class Lcn/domob/android/ads/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/r$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "http://r.domob.cn/a/"

.field private static b:Lcn/domob/android/i/f; = null

.field private static final e:Ljava/lang/String; = "sdk"

.field private static final f:Ljava/lang/String; = "rt"

.field private static final g:Ljava/lang/String; = "ts"

.field private static final h:Ljava/lang/String; = "ua"

.field private static final i:Ljava/lang/String; = "ipb"

.field private static final j:Ljava/lang/String; = "idv"

.field private static final k:Ljava/lang/String; = "v"

.field private static final l:Ljava/lang/String; = "sv"

.field private static final m:Ljava/lang/String; = "l"

.field private static final n:Ljava/lang/String; = "f"

.field private static final o:Ljava/lang/String; = "e"

.field private static final p:Ljava/lang/String; = "pb[identifier]"

.field private static final q:Ljava/lang/String; = "pb[version_name]"

.field private static final r:Ljava/lang/String; = "pb[version_code]"

.field private static final s:Ljava/lang/String; = "network"

.field private static final t:I = 0x4


# instance fields
.field private c:Lcn/domob/android/ads/g;

.field private d:Landroid/content/Context;

.field private u:Lcn/domob/android/f/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/r;->b:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/g;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcn/domob/android/ads/r;->b:Lcn/domob/android/i/f;

    const-string v1, "New instance of DomobExtraRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcn/domob/android/ads/r;->c:Lcn/domob/android/ads/g;

    .line 53
    iput-object p2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/r;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcn/domob/android/ads/r;->b:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private c()Lcn/domob/android/f/f;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string v1, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "rt"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/r;->c:Lcn/domob/android/ads/g;

    invoke-virtual {v2}, Lcn/domob/android/ads/g;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
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

    .line 96
    const-string v1, "sv"

    const-string v2, "040602"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "l"

    invoke-static {}, Lcn/domob/android/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "f"

    const-string v2, "jsonp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "pb[version_name]"

    iget-object v2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "pb[version_code]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/b/a;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "network"

    iget-object v2, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/b/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Lcn/domob/android/f/f;

    invoke-direct {v1, v0}, Lcn/domob/android/f/f;-><init>(Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method protected a()V
    .registers 6

    .prologue
    .line 63
    sget-object v0, Lcn/domob/android/ads/r;->b:Lcn/domob/android/i/f;

    const-string v1, "Start to request ExtraInfo."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcn/domob/android/ads/r$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/r$1;-><init>(Lcn/domob/android/ads/r;)V

    iput-object v0, p0, Lcn/domob/android/ads/r;->u:Lcn/domob/android/f/g;

    .line 79
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/r;->d:Landroid/content/Context;

    const-string v2, "http://r.domob.cn/a/"

    invoke-direct {p0}, Lcn/domob/android/ads/r;->c()Lcn/domob/android/f/f;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/r;->u:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/domob/android/f/c;->b(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V

    .line 81
    return-void
.end method
