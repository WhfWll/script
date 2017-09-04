.class Lcn/dbox/core/f/b$e;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 321
    iput-object p1, p0, Lcn/dbox/core/f/b$e;->a:Lcn/dbox/core/f/b;

    .line 322
    sget-object v0, Lcn/dbox/core/b$n;->b:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 323
    iget-object v0, p0, Lcn/dbox/core/f/b$e;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcn/dbox/core/f/b$e;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$e;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method a(Lcn/dbox/core/b$c;)V
    .registers 5

    .prologue
    .line 329
    const-string v0, ""

    .line 330
    sget-object v1, Lcn/dbox/core/f/b$1;->b:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 338
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$e;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void

    .line 332
    :pswitch_15
    const-string v0, "channel_entry_clk"

    goto :goto_d

    .line 330
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcn/dbox/core/f/b$e;->b:Ljava/util/HashMap;

    const-string v1, "chanid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method
