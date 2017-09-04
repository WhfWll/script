.class Lcn/domob/wall/core/f/b$g;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V
    .registers 4

    .prologue
    .line 222
    iput-object p1, p0, Lcn/domob/wall/core/f/b$g;->e:Lcn/domob/wall/core/f/b;

    .line 223
    sget-object v0, Lcn/domob/wall/core/f/b$n;->e:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/f/b$n;)V

    .line 224
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 228
    new-instance v0, Lcn/domob/wall/core/f/b$h;

    iget-object v1, p0, Lcn/domob/wall/core/f/b$g;->e:Lcn/domob/wall/core/f/b;

    iget-object v2, p0, Lcn/domob/wall/core/f/b$g;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v2}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/f/b$h;-><init>(Lcn/domob/wall/core/f/b;Landroid/content/Context;)V

    .line 230
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 231
    iget-object v1, p0, Lcn/domob/wall/core/f/b$g;->a:Ljava/util/HashMap;

    sget-object v2, Lcn/domob/wall/core/f/b$n;->e:Lcn/domob/wall/core/f/b$n;

    invoke-virtual {v2}, Lcn/domob/wall/core/f/b$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/b/a;->l:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/f/b$h;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_2e
    return-void

    .line 236
    :cond_2f
    iget-object v1, p0, Lcn/domob/wall/core/f/b$g;->a:Ljava/util/HashMap;

    sget-object v2, Lcn/domob/wall/core/f/b$n;->e:Lcn/domob/wall/core/f/b$n;

    invoke-virtual {v2}, Lcn/domob/wall/core/f/b$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/b/a;->p:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/f/b$h;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcn/domob/wall/core/f/b$g;->a:Ljava/util/HashMap;

    const-string v1, "tr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcn/domob/wall/core/f/b$g;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcn/domob/wall/core/f/b$g;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcn/domob/wall/core/f/b$g;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method
