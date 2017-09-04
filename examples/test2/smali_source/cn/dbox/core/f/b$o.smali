.class Lcn/dbox/core/f/b$o;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 756
    iput-object p1, p0, Lcn/dbox/core/f/b$o;->a:Lcn/dbox/core/f/b;

    .line 757
    sget-object v0, Lcn/dbox/core/b$n;->i:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$n;)V

    .line 758
    iget-object v0, p0, Lcn/dbox/core/f/b$o;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/b$i;)V
    .registers 5

    .prologue
    .line 763
    const-string v0, ""

    .line 764
    sget-object v1, Lcn/dbox/core/f/b$1;->h:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 780
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$o;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    return-void

    .line 766
    :pswitch_15
    const-string v0, "la_success"

    goto :goto_d

    .line 769
    :pswitch_18
    const-string v0, "la_failed"

    goto :goto_d

    .line 772
    :pswitch_1b
    const-string v0, "la_failsafe_success"

    goto :goto_d

    .line 775
    :pswitch_1e
    const-string v0, "la_failsafe_failed"

    goto :goto_d

    .line 764
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
    .line 784
    if-eqz p1, :cond_9

    .line 785
    iget-object v0, p0, Lcn/dbox/core/f/b$o;->b:Ljava/util/HashMap;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_9
    return-void
.end method
