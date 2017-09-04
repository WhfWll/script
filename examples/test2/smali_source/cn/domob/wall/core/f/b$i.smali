.class Lcn/domob/wall/core/f/b$i;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;)V
    .registers 5

    .prologue
    .line 372
    iput-object p1, p0, Lcn/domob/wall/core/f/b$i;->e:Lcn/domob/wall/core/f/b;

    .line 373
    sget-object v0, Lcn/domob/wall/core/f/b$n;->g:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/bean/AdInfo;Lcn/domob/wall/core/f/b$n;)V

    .line 374
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/f/b$m;)V
    .registers 5

    .prologue
    .line 377
    const-string v0, ""

    .line 378
    sget-object v1, Lcn/domob/wall/core/f/b$1;->d:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/f/b$m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 394
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$i;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void

    .line 380
    :pswitch_15
    const-string v0, "la_success"

    goto :goto_d

    .line 383
    :pswitch_18
    const-string v0, "la_failed"

    goto :goto_d

    .line 386
    :pswitch_1b
    const-string v0, "la_failsafe_success"

    goto :goto_d

    .line 389
    :pswitch_1e
    const-string v0, "la_failsafe_failed"

    goto :goto_d

    .line 378
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
    .line 398
    if-eqz p1, :cond_9

    .line 399
    iget-object v0, p0, Lcn/domob/wall/core/f/b$i;->a:Ljava/util/HashMap;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_9
    return-void
.end method
