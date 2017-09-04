.class Lcom/sdu/didi/openapi/location/GaodeSdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

.field final synthetic val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/GaodeSdk;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sdu/didi/openapi/location/GaodeSdk;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

    iput-object p2, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    aget-object v0, p3, v2

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/sdu/didi/openapi/location/GaodeSdk;->parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;->location(Lcom/sdu/didi/openapi/location/Location;)V

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method
