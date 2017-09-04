.class Lcn/dbox/core/f/b$k;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;)V
    .registers 6

    .prologue
    .line 286
    iput-object p1, p0, Lcn/dbox/core/f/b$k;->a:Lcn/dbox/core/f/b;

    .line 287
    sget-object v0, Lcn/dbox/core/b$n;->b:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/b$n;)V

    .line 288
    iget-object v0, p0, Lcn/dbox/core/f/b$k;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcn/dbox/core/c;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Lcn/dbox/core/c;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 291
    :cond_24
    iget-object v0, p0, Lcn/dbox/core/f/b$k;->b:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$k;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 296
    :goto_2b
    return-void

    .line 293
    :cond_2c
    iget-object v0, p0, Lcn/dbox/core/f/b$k;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcn/dbox/core/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/dbox/core/f/b$k;->a(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2b
.end method


# virtual methods
.method a(Lcn/dbox/core/bean/Entrance$EntryReportType;)V
    .registers 5

    .prologue
    .line 299
    const-string v0, ""

    .line 300
    sget-object v1, Lcn/dbox/core/f/b$1;->a:[I

    invoke-virtual {p1}, Lcn/dbox/core/bean/Entrance$EntryReportType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 313
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$k;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void

    .line 302
    :pswitch_15
    const-string v0, "entry_imp"

    goto :goto_d

    .line 305
    :pswitch_18
    const-string v0, "entry_clk"

    goto :goto_d

    .line 308
    :pswitch_1b
    const-string v0, "presented"

    goto :goto_d

    .line 300
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
