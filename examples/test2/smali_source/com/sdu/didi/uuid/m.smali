.class Lcom/sdu/didi/uuid/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/l;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/l;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/uuid/m;->a:Lcom/sdu/didi/uuid/l;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/sdu/didi/uuid/l$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sdu/didi/uuid/m;->a:Lcom/sdu/didi/uuid/l;

    check-cast v0, Lcom/sdu/didi/uuid/l$a;

    invoke-static {v1, v0}, Lcom/sdu/didi/uuid/l;->a(Lcom/sdu/didi/uuid/l;Lcom/sdu/didi/uuid/l$a;)V

    goto :goto_5

    :pswitch_data_16
    .packed-switch 0x1001
        :pswitch_6
    .end packed-switch
.end method
