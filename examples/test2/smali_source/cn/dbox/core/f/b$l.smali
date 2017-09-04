.class Lcn/dbox/core/f/b$l;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 228
    iput-object p1, p0, Lcn/dbox/core/f/b$l;->a:Lcn/dbox/core/f/b;

    .line 229
    sget-object v0, Lcn/dbox/core/b$n;->f:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 230
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$l;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "network"

    invoke-virtual {p2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/dbox/core/h/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "pb[name]"

    invoke-virtual {p2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/dbox/core/h/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcn/dbox/core/f/b$l;->b:Ljava/util/HashMap;

    const-string v1, "pb[version]"

    invoke-virtual {p2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/dbox/core/h/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method
