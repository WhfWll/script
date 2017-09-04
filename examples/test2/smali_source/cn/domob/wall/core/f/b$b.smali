.class Lcn/domob/wall/core/f/b$b;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 338
    iput-object p1, p0, Lcn/domob/wall/core/f/b$b;->e:Lcn/domob/wall/core/f/b;

    .line 339
    sget-object v0, Lcn/domob/wall/core/f/b$n;->c:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$n;)V

    .line 340
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/f/b$j;)V
    .registers 5

    .prologue
    .line 343
    const-string v0, ""

    .line 344
    sget-object v1, Lcn/domob/wall/core/f/b$1;->c:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/f/b$j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 363
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$b;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void

    .line 346
    :pswitch_15
    const-string v0, "load_success"

    goto :goto_d

    .line 349
    :pswitch_18
    const-string v0, "load_failed"

    goto :goto_d

    .line 352
    :pswitch_1b
    const-string v0, "load_cancel"

    goto :goto_d

    .line 355
    :pswitch_1e
    const-string v0, "close_lp"

    goto :goto_d

    .line 358
    :pswitch_21
    const-string v0, "lp_url"

    goto :goto_d

    .line 344
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method
