.class public Lcom/sdu/didi/openapi/location/LocationHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;,
        Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/sdu/didi/openapi/location/LocationHelper;

.field private static thread:Landroid/os/HandlerThread;


# instance fields
.field private activity:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private lastLocation:Lcom/sdu/didi/openapi/location/Location;

.field private volatile locationCount:I

.field private locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

.field private final lock:[B

.field private manage:Lcom/sdu/didi/openapi/location/LocationManage;

.field private shouldFire:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    iput-boolean v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    new-instance v0, Lcom/sdu/didi/openapi/location/Location;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/location/Location;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->activity:Landroid/content/Context;

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationManage;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/location/LocationManage;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    return-void
.end method

.method static synthetic access$000(Lcom/sdu/didi/openapi/location/LocationHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->activity:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/LocationManage;
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/LocationHelper;->location()V

    return-void
.end method

.method static synthetic access$300(Lcom/sdu/didi/openapi/location/LocationHelper;)I
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/sdu/didi/openapi/location/LocationHelper;)I
    .registers 3
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sdu/didi/openapi/location/LocationHelper;Lcom/sdu/didi/openapi/location/Location;)Lcom/sdu/didi/openapi/location/Location;
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;
    .param p1, "x1"    # Lcom/sdu/didi/openapi/location/Location;

    .prologue
    iput-object p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sdu/didi/openapi/location/LocationHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget-boolean v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sdu/didi/openapi/location/LocationHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sdu/didi/openapi/location/LocationHelper;)[B
    .registers 2
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/sdu/didi/openapi/location/LocationHelper;

    .prologue
    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/LocationHelper;->onDestroy()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sdu/didi/openapi/location/LocationHelper;
    .registers 3
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sdu/didi/openapi/location/LocationHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/location/LocationHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;

    :cond_e
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->instance:Lcom/sdu/didi/openapi/location/LocationHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private location()V
    .registers 4

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    sget-object v1, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    invoke-direct {v2, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/sdu/didi/openapi/location/LocationManage;->registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V

    :cond_1b
    return-void
.end method

.method private onDestroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->manage:Lcom/sdu/didi/openapi/location/LocationManage;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/LocationManage;->unRegistListener()V

    :cond_a
    iput-object v2, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$TLocationListener;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->reset()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_26

    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    :goto_20
    sput-object v2, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    return-void

    :cond_26
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_20
.end method


# virtual methods
.method public getLocation()Lcom/sdu/didi/openapi/location/Location;
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    if-nez v0, :cond_35

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/sdu/didi/openapi/location/LocationHelper;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sdu/didi/openapi/location/LocationHelper$1;

    invoke-direct {v2, p0}, Lcom/sdu/didi/openapi/location/LocationHelper$1;-><init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/location/Location;->isAvail()Z

    move-result v0

    if-nez v0, :cond_53

    iget v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->locationCount:I
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_50

    const/4 v2, 0x3

    if-gt v0, v2, :cond_53

    const/4 v0, 0x1

    :try_start_43
    iput-boolean v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->shouldFire:Z

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lock:[B

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4a} :catch_4b
    .catchall {:try_start_43 .. :try_end_4a} :catchall_50

    goto :goto_35

    :catch_4b
    move-exception v0

    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    :catchall_50
    move-exception v0

    monitor-exit v1
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper;->lastLocation:Lcom/sdu/didi/openapi/location/Location;

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_50

    return-object v0
.end method
