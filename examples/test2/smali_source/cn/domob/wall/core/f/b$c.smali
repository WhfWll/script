.class Lcn/domob/wall/core/f/b$c;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 410
    iput-object p1, p0, Lcn/domob/wall/core/f/b$c;->e:Lcn/domob/wall/core/f/b;

    .line 411
    sget-object v0, Lcn/domob/wall/core/f/b$n;->d:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$n;)V

    .line 412
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 450
    new-instance v1, Lcn/domob/wall/core/f/b$l;

    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->e:Lcn/domob/wall/core/f/b;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/f/b$l;-><init>(Lcn/domob/wall/core/f/b;)V

    .line 451
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v2, "online"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 452
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/b/a;->k:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/f/b$l;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 464
    :goto_24
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->b:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/bean/AdInfo;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 465
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "details_down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 467
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/domob/wall/core/f/b$c;->b:Lcn/domob/wall/core/bean/AdInfo;

    invoke-virtual {v3}, Lcn/domob/wall/core/bean/AdInfo;->getClickTrackerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/f/b$l;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 471
    :cond_4f
    return-void

    .line 458
    :cond_50
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/b;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/b/a;->o:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/h/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/f/b$l;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 441
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    const-string v1, "order"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method public a(Lcn/domob/wall/core/f/b$k;)V
    .registers 5

    .prologue
    .line 415
    const-string v0, ""

    .line 416
    sget-object v1, Lcn/domob/wall/core/f/b$1;->e:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/f/b$k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 432
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void

    .line 418
    :pswitch_15
    const-string v0, "banner_ad"

    goto :goto_d

    .line 421
    :pswitch_18
    const-string v0, "list_ad"

    goto :goto_d

    .line 424
    :pswitch_1b
    const-string v0, "listad_down"

    goto :goto_d

    .line 427
    :pswitch_1e
    const-string v0, "details_down"

    goto :goto_d

    .line 416
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method public b(I)V
    .registers 5

    .prologue
    .line 445
    iget-object v0, p0, Lcn/domob/wall/core/f/b$c;->a:Ljava/util/HashMap;

    const-string v1, "posit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method
