.class Lcom/sdu/didi/uuid/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/uuid/h;->a:Lcom/sdu/didi/uuid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/uuid/h;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->k(Lcom/sdu/didi/uuid/a;F)F

    iget-object v0, p0, Lcom/sdu/didi/uuid/h;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->l(Lcom/sdu/didi/uuid/a;F)F

    iget-object v0, p0, Lcom/sdu/didi/uuid/h;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->m(Lcom/sdu/didi/uuid/a;F)F

    return-void
.end method
