.class Lcn/dbox/core/f/b$d;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 671
    iput-object p1, p0, Lcn/dbox/core/f/b$d;->a:Lcn/dbox/core/f/b;

    .line 672
    sget-object v0, Lcn/dbox/core/b$n;->e:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$n;)V

    .line 673
    iget-object v0, p0, Lcn/dbox/core/f/b$d;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v0, p0, Lcn/dbox/core/f/b$d;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "landing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$b;)V
    .registers 5

    .prologue
    .line 679
    const-string v0, ""

    .line 680
    sget-object v1, Lcn/dbox/core/f/b$1;->e:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 699
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$d;->b:Ljava/util/HashMap;

    const-string v2, "phase"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    return-void

    .line 682
    :pswitch_15
    const-string v0, "load_success"

    goto :goto_d

    .line 685
    :pswitch_18
    const-string v0, "load_failed"

    goto :goto_d

    .line 688
    :pswitch_1b
    const-string v0, "load_cancel"

    goto :goto_d

    .line 691
    :pswitch_1e
    const-string v0, "close_lp"

    goto :goto_d

    .line 694
    :pswitch_21
    const-string v0, "lp_url"

    goto :goto_d

    .line 680
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 707
    iget-object v0, p0, Lcn/dbox/core/f/b$d;->b:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method
