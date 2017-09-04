.class Lcn/domob/wall/core/f/b$e;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V
    .registers 6

    .prologue
    .line 547
    iput-object p1, p0, Lcn/domob/wall/core/f/b$e;->e:Lcn/domob/wall/core/f/b;

    .line 548
    sget-object v0, Lcn/domob/wall/core/f/b$n;->h:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/f/b$n;)V

    .line 549
    iget-object v0, p0, Lcn/domob/wall/core/f/b$e;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/domob/wall/core/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-virtual {p2}, Lcn/domob/wall/core/b;->i()Lcn/domob/wall/core/bean/AdExtend;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 552
    iget-object v0, p0, Lcn/domob/wall/core/f/b$e;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p2}, Lcn/domob/wall/core/b;->i()Lcn/domob/wall/core/bean/AdExtend;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/wall/core/bean/AdExtend;->getmId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lcn/domob/wall/core/f/b$e;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcn/domob/wall/core/b;->i()Lcn/domob/wall/core/bean/AdExtend;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/bean/AdExtend;->getmTr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/f/b$e;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 555
    :cond_34
    return-void
.end method


# virtual methods
.method a(Lcn/domob/wall/core/DService$EWallReportType;)V
    .registers 5

    .prologue
    .line 558
    const-string v0, ""

    .line 559
    sget-object v1, Lcn/domob/wall/core/f/b$1;->f:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/DService$EWallReportType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 578
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$e;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    return-void

    .line 561
    :pswitch_15
    const-string v0, "e_entry_show"

    goto :goto_d

    .line 564
    :pswitch_18
    const-string v0, "e_entry_click"

    goto :goto_d

    .line 567
    :pswitch_1b
    const-string v0, "e_page_req"

    goto :goto_d

    .line 570
    :pswitch_1e
    const-string v0, "e_page_show"

    goto :goto_d

    .line 573
    :pswitch_21
    const-string v0, "e_page_click"

    goto :goto_d

    .line 559
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
    .line 582
    if-eqz p1, :cond_9

    .line 583
    iget-object v0, p0, Lcn/domob/wall/core/f/b$e;->a:Ljava/util/HashMap;

    const-string v1, "e_page_url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_9
    return-void
.end method
