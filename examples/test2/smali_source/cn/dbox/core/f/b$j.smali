.class Lcn/dbox/core/f/b$j;
.super Lcn/dbox/core/f/b$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/b;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;)V
    .registers 7

    .prologue
    .line 717
    iput-object p1, p0, Lcn/dbox/core/f/b$j;->a:Lcn/dbox/core/f/b;

    .line 718
    sget-object v0, Lcn/dbox/core/b$n;->h:Lcn/dbox/core/b$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/dbox/core/f/b$c;-><init>(Lcn/dbox/core/f/b;Lcn/dbox/core/c;Lcn/dbox/core/bean/a;Lcn/dbox/core/b$n;)V

    .line 719
    iget-object v0, p0, Lcn/dbox/core/f/b$j;->b:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p3}, Lcn/dbox/core/bean/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcn/dbox/core/f/b$j;->b:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/dbox/core/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method


# virtual methods
.method a(Lcn/dbox/core/b$g;)V
    .registers 5

    .prologue
    .line 725
    const-string v0, ""

    .line 726
    sget-object v1, Lcn/dbox/core/f/b$1;->g:[I

    invoke-virtual {p1}, Lcn/dbox/core/b$g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 751
    :goto_d
    iget-object v1, p0, Lcn/dbox/core/f/b$j;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    return-void

    .line 728
    :pswitch_15
    const-string v0, "download_start"

    goto :goto_d

    .line 731
    :pswitch_18
    const-string v0, "download_repeat"

    goto :goto_d

    .line 734
    :pswitch_1b
    const-string v0, "download_finish"

    goto :goto_d

    .line 737
    :pswitch_1e
    const-string v0, "download_failed"

    goto :goto_d

    .line 740
    :pswitch_21
    const-string v0, "download_cancel"

    goto :goto_d

    .line 743
    :pswitch_24
    const-string v0, "install_success"

    goto :goto_d

    .line 746
    :pswitch_27
    const-string v0, "run"

    goto :goto_d

    .line 726
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method
