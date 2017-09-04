.class Lcn/dbox/core/f/b$q;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 5

    .prologue
    .line 248
    iput-object p1, p0, Lcn/dbox/core/f/b$q;->a:Lcn/dbox/core/f/b;

    .line 249
    sget-object v0, Lcn/dbox/core/b$n;->j:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 250
    iget-object v0, p0, Lcn/dbox/core/f/b$q;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$q;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 251
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 270
    iget-object v0, p0, Lcn/dbox/core/f/b$q;->b:Ljava/util/HashMap;

    const-string v1, "d_info"

    const-string v2, "d!j@d#g$r%s^j&h*"

    invoke-static {v2, p1}, Lcn/dbox/core/h/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_13
    return-void
.end method
