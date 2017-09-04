.class Lcn/dbox/core/f/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field b:Ljava/util/HashMap;
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

.field c:Lcn/dbox/core/bean/a;

.field d:Lcn/dbox/core/c;

.field final synthetic e:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V
    .registers 5

    .prologue
    .line 127
    iput-object p1, p0, Lcn/dbox/core/f/b$c;->e:Lcn/dbox/core/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    .line 128
    iput-object p2, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    .line 129
    invoke-virtual {p2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcn/dbox/core/f/b$c;->a(Landroid/content/Context;Lcn/dbox/core/b$n;)V

    .line 130
    return-void
.end method

.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$n;)V
    .registers 7

    .prologue
    .line 141
    iput-object p1, p0, Lcn/dbox/core/f/b$c;->e:Lcn/dbox/core/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    .line 142
    iput-object p2, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    .line 143
    iput-object p3, p0, Lcn/dbox/core/f/b$c;->c:Lcn/dbox/core/bean/a;

    .line 146
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcn/dbox/core/bean/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$c;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcn/dbox/core/f/b$c;->a(Landroid/content/Context;Lcn/dbox/core/b$n;)V

    .line 148
    return-void
.end method

.method private a(Landroid/content/Context;Lcn/dbox/core/b$n;)V
    .registers 9

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "sdk"

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    if-eqz p2, :cond_1e

    .line 158
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "rt"

    invoke-virtual {p2}, Lcn/dbox/core/b$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1e
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20140918"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "20140711"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "000900"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "idv"

    invoke-static {p1}, Lcn/dbox/core/h/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "ua"

    invoke-static {p1}, Lcn/dbox/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "ipb"

    iget-object v2, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v1, "ppid"

    iget-object v2, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcn/dbox/core/h/e;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_8d

    .line 175
    iget-object v1, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    .line 184
    :cond_8d
    :goto_8d
    return-void

    .line 180
    :catch_8e
    move-exception v0

    .line 181
    invoke-static {}, Lcn/dbox/core/f/b;->b()Lcn/dbox/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/dbox/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_8d
.end method


# virtual methods
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
    .line 193
    iget-object v0, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    invoke-virtual {v1}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/dbox/core/h/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1, p2}, Lcn/dbox/core/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/dbox/core/h/c$a;

    move-result-object v2

    .line 198
    const-string v3, "tr"

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v3, "ts"

    invoke-virtual {v2}, Lcn/dbox/core/h/c$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v3, "rnd"

    invoke-virtual {v2}, Lcn/dbox/core/h/c$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "vcode"

    invoke-virtual {v2}, Lcn/dbox/core/h/c$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v2, "ipb"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "ua"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 212
    new-instance v0, Lcn/dbox/core/f/b$p;

    iget-object v1, p0, Lcn/dbox/core/f/b$c;->e:Lcn/dbox/core/f/b;

    invoke-direct {v0, v1}, Lcn/dbox/core/f/b$p;-><init>(Lcn/dbox/core/f/b;)V

    .line 213
    iget-object v1, p0, Lcn/dbox/core/f/b$c;->d:Lcn/dbox/core/c;

    invoke-virtual {v1}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/f/b$c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, p1}, Lcn/dbox/core/f/b$p;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 218
    return-void
.end method
