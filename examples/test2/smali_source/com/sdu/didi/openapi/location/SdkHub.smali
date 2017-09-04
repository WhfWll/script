.class public abstract Lcom/sdu/didi/openapi/location/SdkHub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;
.end method

.method public abstract registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
.end method

.method public abstract unRegistListener()V
.end method
