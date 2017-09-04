.class Lcn/dbox/core/f/b$r;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "r"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 793
    iput-object p1, p0, Lcn/dbox/core/f/b$r;->a:Lcn/dbox/core/f/b;

    .line 794
    sget-object v0, Lcn/dbox/core/b$n;->f:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 795
    iget-object v0, p0, Lcn/dbox/core/f/b$r;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$o;)V
    .registers 5

    .prologue
    .line 800
    const-string v0, ""

    .line 801
    sget-object v1, Lcn/dbox/core/f/b$1;->i:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 817
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$r;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    return-void

    .line 803
    :pswitch_15
    const-string v0, "setting_entry_clk"

    goto :goto_d

    .line 806
    :pswitch_18
    const-string v0, "about_clk"

    goto :goto_d

    .line 809
    :pswitch_1b
    const-string v0, "feedback_submit"

    goto :goto_d

    .line 812
    :pswitch_1e
    const-string v0, "contact_clk"

    goto :goto_d

    .line 801
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
    .registers 4

    .prologue
    .line 821
    if-eqz p1, :cond_9

    .line 822
    iget-object v0, p0, Lcn/dbox/core/f/b$r;->b:Ljava/util/HashMap;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_9
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 828
    if-eqz p1, :cond_9

    .line 829
    iget-object v0, p0, Lcn/dbox/core/f/b$r;->b:Ljava/util/HashMap;

    const-string v1, "contact"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_9
    return-void
.end method
