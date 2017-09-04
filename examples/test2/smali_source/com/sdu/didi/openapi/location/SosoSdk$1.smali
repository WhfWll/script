.class Lcom/sdu/didi/openapi/location/SosoSdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/SosoSdk;

.field final synthetic val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/SosoSdk;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sdu/didi/openapi/location/SosoSdk;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/SosoSdk$1;->this$0:Lcom/sdu/didi/openapi/location/SosoSdk;

    iput-object p2, p0, Lcom/sdu/didi/openapi/location/SosoSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

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
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SosoSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SosoSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/SosoSdk$1;->this$0:Lcom/sdu/didi/openapi/location/SosoSdk;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/sdu/didi/openapi/location/SosoSdk;->parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;->location(Lcom/sdu/didi/openapi/location/Location;)V

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method
