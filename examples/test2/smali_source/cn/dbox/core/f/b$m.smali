.class Lcn/dbox/core/f/b$m;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 574
    iput-object p1, p0, Lcn/dbox/core/f/b$m;->a:Lcn/dbox/core/f/b;

    .line 575
    sget-object v0, Lcn/dbox/core/b$n;->e:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 576
    iget-object v0, p0, Lcn/dbox/core/f/b$m;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "ad_imp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v0, p0, Lcn/dbox/core/f/b$m;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcn/dbox/core/f/b$m;->b:Ljava/util/HashMap;

    const-string v1, "tr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcn/dbox/core/f/b$m;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcn/dbox/core/f/b$m;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 583
    new-instance v0, Lcn/dbox/core/f/b$n;

    iget-object v1, p0, Lcn/dbox/core/f/b$m;->a:Lcn/dbox/core/f/b;

    iget-object v2, p0, Lcn/dbox/core/f/b$m;->d:Lcn/dbox/core/c;

    invoke-virtual {v2}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/dbox/core/f/b$n;-><init>(Lcn/dbox/core/f/b;Landroid/content/Context;)V

    .line 585
    iget-object v1, p0, Lcn/dbox/core/f/b$m;->b:Ljava/util/HashMap;

    sget-object v2, Lcn/dbox/core/b$n;->e:Lcn/dbox/core/b$n;

    invoke-virtual {v2}, Lcn/dbox/core/b$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcn/dbox/core/f/b$n;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method
