.class public Lcn/domob/android/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/g/a/a$b;,
        Lcn/domob/android/g/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/i/f;

.field private static final b:Ljava/lang/String; = "sdk"

.field private static final c:Ljava/lang/String; = "ipb"

.field private static final d:Ljava/lang/String; = "idv"

.field private static final e:Ljava/lang/String; = "v"

.field private static final f:Ljava/lang/String; = "sv"

.field private static final g:Ljava/lang/String; = "dma"

.field private static final h:Ljava/lang/String; = "ama"

.field private static final i:Ljava/lang/String; = "an"

.field private static final j:Ljava/lang/String; = "ppid"


# instance fields
.field private k:Lcn/domob/android/g/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/g/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/g/a/a;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/g/a/e;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/domob/android/g/a/c;

    invoke-direct {v0}, Lcn/domob/android/g/a/c;-><init>()V

    iput-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    .line 31
    invoke-direct {p0, p1}, Lcn/domob/android/g/a/a;->a(Lcn/domob/android/g/a/e;)V

    .line 32
    sget-object v0, Lcn/domob/android/g/a/a;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcn/domob/android/g/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a(Lcn/domob/android/g/a/e;)V
    .registers 5

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    const-string v1, "sdk"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "v"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "sv"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "dma"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "ama"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "an"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "idv"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "ipb"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "ppid"

    invoke-virtual {p1}, Lcn/domob/android/g/a/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v1, v0}, Lcn/domob/android/g/a/c;->a(Ljava/util/Map;)V

    .line 115
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p1}, Lcn/domob/android/g/a/c;->a(I)V

    .line 75
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p1, p2}, Lcn/domob/android/g/a/c;->a(J)V

    .line 82
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p1}, Lcn/domob/android/g/a/c;->a(Z)V

    .line 89
    return-void
.end method

.method public a([Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/g/a/a$b;)V
    .registers 7

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p1}, Lcn/domob/android/g/a/c;->a([Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p2}, Lcn/domob/android/g/a/c;->a(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p3}, Lcn/domob/android/g/a/c;->a(Lcn/domob/android/g/a/a$b;)V

    .line 65
    invoke-static {}, Lcn/domob/android/g/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_24

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/android/g/a/b;

    iget-object v2, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-direct {v1, v2}, Lcn/domob/android/g/a/b;-><init>(Lcn/domob/android/g/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    :cond_24
    return-void
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcn/domob/android/g/a/a;->k:Lcn/domob/android/g/a/c;

    invoke-virtual {v0, p1}, Lcn/domob/android/g/a/c;->b(Z)V

    .line 96
    return-void
.end method
