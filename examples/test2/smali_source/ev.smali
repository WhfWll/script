.class public Lev;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v0, Lew;

    invoke-direct {v0, p0}, Lew;-><init>(Lev;)V

    iput-object v0, p0, Lev;->a:Landroid/os/Handler;

    :cond_10
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    iget-object v0, p0, Lev;->a:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lev;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_a
.end method

.method protected final a()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lev;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lev;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v2, v0}, Lev;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lev;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto :goto_5

    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lev;->b(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lev;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lev;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lev;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lev;->b(Landroid/os/Message;)V

    return-void
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    const-string v1, "UTF-8"

    invoke-static {v3, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_2f

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_34

    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2e
    return-void

    :catch_2f
    move-exception v1

    invoke-virtual {p0, v1, v0}, Lev;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_16

    :cond_34
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lev;->a(ILjava/lang/String;)V

    goto :goto_2e
.end method

.method protected final b()V
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lev;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lev;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected final b(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lev;->a:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lev;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lev;->a(Landroid/os/Message;)V

    goto :goto_9
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lev;->a(Ljava/lang/String;)V

    return-void
.end method
