.class Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/location/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/LocationHelper;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public location(Lcom/sdu/didi/openapi/location/Location;)V
    .registers 5
    .param p1, "location"    # Lcom/sdu/didi/openapi/location/Location;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # operator++ for: Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$308(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    invoke-virtual {p1}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # setter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;
    invoke-static {v0, p1}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$402(Lcom/sdu/didi/openapi/location/LocationHelper;Lcom/sdu/didi/openapi/location/Location;)Lcom/sdu/didi/openapi/location/Location;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_1f
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    const/4 v2, 0x0

    # setter for: Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z
    invoke-static {v0, v2}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_73

    :cond_2f
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$400(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_63

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_53
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    const/4 v2, 0x0

    # setter for: Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z
    invoke-static {v0, v2}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_76

    :cond_63
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # getter for: Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_72

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    # invokes: Lcom/sdu/didi/openapi/location/LocationHelper;->onDestroy()V
    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$700(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    :cond_72
    return-void

    :catchall_73
    move-exception v0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0

    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method
