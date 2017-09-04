.class Lcn/dbox/core/f/b$h;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 495
    iput-object p1, p0, Lcn/dbox/core/f/b$h;->a:Lcn/dbox/core/f/b;

    .line 496
    sget-object v0, Lcn/dbox/core/b$n;->d:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 497
    iget-object v0, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$h;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 500
    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$b;)V
    .registers 5

    .prologue
    .line 534
    const-string v0, ""

    .line 535
    sget-object v1, Lcn/dbox/core/f/b$1;->e:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 554
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v2, "phase"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void

    .line 537
    :pswitch_15
    const-string v0, "load_success"

    goto :goto_d

    .line 540
    :pswitch_18
    const-string v0, "load_failed"

    goto :goto_d

    .line 543
    :pswitch_1b
    const-string v0, "load_cancel"

    goto :goto_d

    .line 546
    :pswitch_1e
    const-string v0, "close_lp"

    goto :goto_d

    .line 549
    :pswitch_21
    const-string v0, "lp_url"

    goto :goto_d

    .line 535
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method a(Lcn/dbox/core/b$f;)V
    .registers 5

    .prologue
    .line 503
    const-string v0, ""

    .line 504
    sget-object v1, Lcn/dbox/core/f/b$1;->c:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 514
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-void

    .line 506
    :pswitch_15
    const-string v0, "container_entry_clk"

    goto :goto_d

    .line 509
    :pswitch_18
    const-string v0, "landing"

    goto :goto_d

    .line 504
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 522
    iget-object v0, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v1, "chanid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 530
    iget-object v0, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v1, "acid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, Lcn/dbox/core/f/b$h;->b:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-void
.end method
