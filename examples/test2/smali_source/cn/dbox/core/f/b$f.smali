.class Lcn/dbox/core/f/b$f;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 604
    iput-object p1, p0, Lcn/dbox/core/f/b$f;->a:Lcn/dbox/core/f/b;

    .line 605
    sget-object v0, Lcn/dbox/core/b$n;->e:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$n;)V

    .line 606
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "ad_clk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 635
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-void
.end method

.method public a(Lcn/dbox/core/b$d;)V
    .registers 5

    .prologue
    .line 612
    const-string v0, ""

    .line 613
    sget-object v1, Lcn/dbox/core/f/b$1;->f:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 629
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v2, "element"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    return-void

    .line 615
    :pswitch_15
    const-string v0, "banner_ad"

    goto :goto_d

    .line 618
    :pswitch_18
    const-string v0, "list_ad"

    goto :goto_d

    .line 621
    :pswitch_1b
    const-string v0, "listad_down"

    goto :goto_d

    .line 624
    :pswitch_1e
    const-string v0, "details_down"

    goto :goto_d

    .line 613
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 639
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v1, "chanid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 649
    new-instance v1, Lcn/dbox/core/f/b$p;

    iget-object v0, p0, Lcn/dbox/core/f/b$f;->a:Lcn/dbox/core/f/b;

    invoke-direct {v1, v0}, Lcn/dbox/core/f/b$p;-><init>(Lcn/dbox/core/f/b;)V

    .line 650
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->d:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2, p1}, Lcn/dbox/core/f/b$p;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->c:Lcn/dbox/core/bean/a;

    invoke-virtual {v0}, Lcn/dbox/core/bean/a;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 656
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "details_down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 658
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->d:Lcn/dbox/core/c;

    invoke-virtual {v0}, Lcn/dbox/core/c;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/dbox/core/f/b$f;->c:Lcn/dbox/core/bean/a;

    invoke-virtual {v3}, Lcn/dbox/core/bean/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/dbox/core/f/b$p;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 662
    :cond_3d
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 643
    iget-object v0, p0, Lcn/dbox/core/f/b$f;->b:Ljava/util/HashMap;

    const-string v1, "acid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method
