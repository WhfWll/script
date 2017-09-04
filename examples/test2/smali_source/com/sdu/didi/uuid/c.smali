.class Lcom/sdu/didi/uuid/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/uuid/c;->a:Lcom/sdu/didi/uuid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 8
    .param p1, "event"    # I

    .prologue
    packed-switch p1, :pswitch_data_54

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdu/didi/uuid/c;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->e(Lcom/sdu/didi/uuid/a;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v3

    iget-object v1, p0, Lcom/sdu/didi/uuid/c;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->f(Lcom/sdu/didi/uuid/a;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_23
    iget-object v1, p0, Lcom/sdu/didi/uuid/c;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->g(Lcom/sdu/didi/uuid/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v0

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-ge v1, v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/sdu/didi/uuid/c;->a:Lcom/sdu/didi/uuid/a;

    invoke-static {v5}, Lcom/sdu/didi/uuid/a;->g(Lcom/sdu/didi/uuid/a;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    :cond_4e
    monitor-exit v4

    goto :goto_3

    :catchall_50
    move-exception v0

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_23 .. :try_end_52} :catchall_50

    throw v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
