.class Lcn/domob/wall/core/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
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

.field b:Lcn/domob/wall/core/bean/AdInfo;

.field c:Lcn/domob/wall/core/b;

.field final synthetic d:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$n;)V
    .registers 8

    .prologue
    .line 128
    iput-object p1, p0, Lcn/domob/wall/core/f/b$a;->d:Lcn/domob/wall/core/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    .line 129
    iput-object p2, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    .line 130
    iput-object p3, p0, Lcn/domob/wall/core/f/b$a;->b:Lcn/domob/wall/core/bean/AdInfo;

    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getSearchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcn/domob/wall/core/bean/AdInfo;->getAdTracker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/f/b$a;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcn/domob/wall/core/f/b$a;->a(Landroid/content/Context;Lcn/domob/wall/core/f/b$n;)V

    .line 136
    return-void
.end method

.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/f/b$n;)V
    .registers 5

    .prologue
    .line 114
    iput-object p1, p0, Lcn/domob/wall/core/f/b$a;->d:Lcn/domob/wall/core/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    .line 115
    iput-object p2, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    .line 116
    invoke-virtual {p2}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcn/domob/wall/core/f/b$a;->a(Landroid/content/Context;Lcn/domob/wall/core/f/b$n;)V

    .line 117
    return-void
.end method

.method private a(Landroid/content/Context;Lcn/domob/wall/core/f/b$n;)V
    .registers 9

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "rt"

    invoke-virtual {p2}, Lcn/domob/wall/core/f/b$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20140217"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "20131101"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "020100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "idv"

    invoke-static {p1}, Lcn/domob/wall/core/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "ua"

    invoke-static {p1}, Lcn/domob/wall/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p1}, Lcn/domob/wall/core/h/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_8b

    .line 161
    iget-object v1, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/wall/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    .line 170
    :cond_8b
    :goto_8b
    return-void

    .line 166
    :catch_8c
    move-exception v0

    .line 167
    invoke-static {}, Lcn/domob/wall/core/f/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_8b
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 198
    new-instance v0, Lcn/domob/wall/core/f/b$l;

    iget-object v1, p0, Lcn/domob/wall/core/f/b$a;->d:Lcn/domob/wall/core/f/b;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/f/b$l;-><init>(Lcn/domob/wall/core/f/b;)V

    .line 199
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 200
    iget-object v1, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v1}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/b/a;->j:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/f/b$l;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 213
    :goto_24
    return-void

    .line 206
    :cond_25
    iget-object v1, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v1}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/f/b$a;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/b/a;->n:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/f/b$l;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected a(Ljava/util/Map;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcn/domob/wall/core/f/b$a;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v1}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/wall/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1, p2}, Lcn/domob/wall/core/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/wall/core/h/c$a;

    move-result-object v2

    .line 184
    const-string v3, "tr"

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v3, "ts"

    invoke-virtual {v2}, Lcn/domob/wall/core/h/c$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v3, "rnd"

    invoke-virtual {v2}, Lcn/domob/wall/core/h/c$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v3, "vcode"

    invoke-virtual {v2}, Lcn/domob/wall/core/h/c$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v2, "ipb"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v0, "ua"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method
