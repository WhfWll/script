.class public Ley;
.super Lev;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lev;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_15
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    :cond_1e
    if-nez v1, :cond_21

    :goto_20
    return-object v0

    :cond_21
    move-object v0, v1

    goto :goto_20
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .registers 8

    const/16 v4, 0x64

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_29

    :try_start_9
    invoke-static {p2}, Ley;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Ley;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ley;->b(Landroid/os/Message;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {p0, v0, p2}, Ley;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_23

    :cond_29
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Ley;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Ley;->b(Landroid/os/Message;)V

    goto :goto_23
.end method

.method protected final a(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    invoke-super {p0, p1}, Lev;->a(Landroid/os/Message;)V

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_22

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Ley;->b(Lorg/json/JSONObject;)V

    goto :goto_8

    :cond_22
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ley;->a(Lorg/json/JSONObject;)V

    goto :goto_8

    nop

    :pswitch_data_48
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1d

    :try_start_2
    invoke-static {p1}, Ley;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Ley;->a(Lorg/json/JSONObject;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    instance-of v0, v0, Lorg/json/JSONArray;

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Ley;->a(Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_f

    :catch_18
    move-exception v0

    invoke-virtual {p0, p1}, Ley;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_1d
    :try_start_1d
    const-string v0, ""

    invoke-virtual {p0, v0}, Ley;->a(Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_22} :catch_18

    goto :goto_f
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method
