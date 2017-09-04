.class Lcn/domob/wall/core/f/b$o;
.super Lcn/domob/wall/core/f/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/f/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;)V
    .registers 6

    .prologue
    .line 259
    iput-object p1, p0, Lcn/domob/wall/core/f/b$o;->e:Lcn/domob/wall/core/f/b;

    .line 260
    sget-object v0, Lcn/domob/wall/core/f/b$n;->f:Lcn/domob/wall/core/f/b$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/wall/core/f/b$a;-><init>(Lcn/domob/wall/core/f/b;Lcn/domob/wall/core/b;Lcn/domob/wall/core/f/b$n;)V

    .line 261
    iget-object v0, p0, Lcn/domob/wall/core/f/b$o;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/domob/wall/core/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcn/domob/wall/core/f/b$o;->a:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/f/b$o;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method a(Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .registers 5

    .prologue
    .line 267
    const-string v0, ""

    .line 268
    sget-object v1, Lcn/domob/wall/core/f/b$1;->a:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/DService$ReportUserActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    .line 281
    :goto_d
    iget-object v1, p0, Lcn/domob/wall/core/f/b$o;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void

    .line 270
    :pswitch_15
    const-string v0, "entry"

    goto :goto_d

    .line 273
    :pswitch_18
    const-string v0, "exit"

    goto :goto_d

    .line 276
    :pswitch_1b
    const-string v0, "pgdn"

    goto :goto_d

    .line 268
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
