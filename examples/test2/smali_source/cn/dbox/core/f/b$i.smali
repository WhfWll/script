.class Lcn/dbox/core/f/b$i;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 355
    iput-object p1, p0, Lcn/dbox/core/f/b$i;->a:Lcn/dbox/core/f/b;

    .line 356
    sget-object v0, Lcn/dbox/core/b$n;->d:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 357
    iget-object v0, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$i;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 360
    return-void
.end method


# virtual methods
.method a(Lcn/dbox/core/b$e;)V
    .registers 5

    .prologue
    .line 398
    const-string v0, ""

    .line 399
    sget-object v1, Lcn/dbox/core/f/b$1;->d:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 409
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void

    .line 401
    :pswitch_15
    const-string v0, "slide"

    goto :goto_d

    .line 404
    :pswitch_18
    const-string v0, "click"

    goto :goto_d

    .line 399
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method a(Lcn/dbox/core/b$f;)V
    .registers 5

    .prologue
    .line 363
    const-string v0, ""

    .line 364
    sget-object v1, Lcn/dbox/core/f/b$1;->c:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 374
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void

    .line 366
    :pswitch_15
    const-string v0, "container_entry_clk"

    goto :goto_d

    .line 369
    :pswitch_18
    const-string v0, "landing"

    goto :goto_d

    .line 364
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
    .line 382
    iget-object v0, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v1, "chanid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcn/dbox/core/f/b$i;->b:Ljava/util/HashMap;

    const-string v1, "acid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method
