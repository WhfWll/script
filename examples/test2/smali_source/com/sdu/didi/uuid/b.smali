.class Lcom/sdu/didi/uuid/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/util/List;

.field final synthetic b:Lcom/sdu/didi/uuid/a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/a;[Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    iput-object p2, p0, Lcom/sdu/didi/uuid/b;->a:[Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->a(Lcom/sdu/didi/uuid/a;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->a:[Ljava/util/List;

    iget-object v1, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->b(Lcom/sdu/didi/uuid/a;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->a:[Ljava/util/List;

    aget-object v0, v0, v3

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->a:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->a:[Ljava/util/List;

    aget-object v0, v0, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    iget-object v2, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v2}, Lcom/sdu/didi/uuid/a;->b(Lcom/sdu/didi/uuid/a;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v3}, Lcom/sdu/didi/uuid/a;->c(Lcom/sdu/didi/uuid/a;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/sdu/didi/uuid/a;->a(Lcom/sdu/didi/uuid/a;Z)Z

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->e(Lcom/sdu/didi/uuid/a;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->d(Lcom/sdu/didi/uuid/a;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    return-void

    :cond_59
    iget-object v0, p0, Lcom/sdu/didi/uuid/b;->b:Lcom/sdu/didi/uuid/a;

    invoke-static {v0, v3}, Lcom/sdu/didi/uuid/a;->a(Lcom/sdu/didi/uuid/a;Z)Z

    goto :goto_49
.end method
