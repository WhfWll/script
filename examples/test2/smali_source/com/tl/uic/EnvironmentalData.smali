.class public Lcom/tl/uic/EnvironmentalData;
.super Ljava/lang/Object;
.source "EnvironmentalData.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$tl$uic$model$StorageType:[I = null

.field private static final IP_BIT_16:I = 0x10

.field private static final IP_BIT_24:I = 0x18

.field private static final IP_BIT_8:I = 0x8

.field private static final SET_BITS_TO_CHAR:I = 0xff

.field private static _clientStateTask:Lcom/tl/uic/util/ClientStateTask;


# instance fields
.field private _application:Landroid/app/Application;

.field private applicationName:Ljava/lang/String;

.field private applicationPackageName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

.field private clientStateTimerTask:Ljava/util/TimerTask;

.field private connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

.field private prevClientState:Lcom/tl/uic/model/ClientState;

.field private screenReceiver:Lcom/tl/uic/util/ScreenReceiver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tl$uic$model$StorageType()[I
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/tl/uic/EnvironmentalData;->$SWITCH_TABLE$com$tl$uic$model$StorageType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/tl/uic/model/StorageType;->values()[Lcom/tl/uic/model/StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_USED:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_FREE:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_TOTAL:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_USED:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/tl/uic/EnvironmentalData;->$SWITCH_TABLE$com$tl$uic$model$StorageType:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/EnvironmentalData;

    const v1, 0x3fd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    .line 71
    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$1()Lcom/tl/uic/util/ClientStateTask;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tl/uic/util/ClientStateTask;)V
    .registers 1

    .prologue
    .line 58
    sput-object p0, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    return-void
.end method

.method public static final native closeClientStateTask()Ljava/lang/Boolean;
.end method

.method private native init()V
.end method

.method private native isNotApplicationContextNull()Ljava/lang/Boolean;
.end method

.method private native isNotApplicationResourcesNull()Ljava/lang/Boolean;
.end method


# virtual methods
.method public final native createClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;
.end method

.method public final native createClientState()Lcom/tl/uic/model/ClientState;
.end method

.method public final native disableBatteryManager()V
.end method

.method public final native disableClientStateTask()V
.end method

.method public final native disableConnectionListener()V
.end method

.method public final native disableScreenReceiver()V
.end method

.method public final native enableBatteryManager()V
.end method

.method public final native enableClientStateTask()V
.end method

.method public final native enableConnectionListener()V
.end method

.method public final native enableScreenReceiver()V
.end method

.method public final native getApplicationData()V
.end method

.method public final native getApplicationName()Ljava/lang/String;
.end method

.method public final native getApplicationPackageName()Ljava/lang/String;
.end method

.method public final native getApplicationVersion()Ljava/lang/String;
.end method

.method public final native getAvailableMemory()J
.end method

.method public final native getBatteryReceiver()Lcom/tl/uic/util/BatteryReceiver;
.end method

.method public final native getCarrier()Ljava/lang/String;
.end method

.method public final native getClientStateTimerTask()Ljava/util/TimerTask;
.end method

.method public final native getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;
.end method

.method public final native getHttpXTealeafProperty()Ljava/lang/String;
.end method

.method public final native getIpAddress()Ljava/lang/String;
.end method

.method public final native getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;
.end method

.method public final native getKeyboardType()Lcom/tl/uic/model/KeyboardType;
.end method

.method public final native getManufacturer()Ljava/lang/String;
.end method

.method public final native getOrientationType()Lcom/tl/uic/model/OrientationType;
.end method

.method public final native getScreenReceiver()Lcom/tl/uic/util/ScreenReceiver;
.end method

.method public final native getStorage(Lcom/tl/uic/model/StorageType;)J
.end method

.method public final native hasClientStateChanged()Ljava/lang/Boolean;
.end method

.method public final native onPause()Ljava/lang/Boolean;
.end method

.method public final native onResume()Ljava/lang/Boolean;
.end method

.method public final native setupClientStateTask()V
.end method

.method public final native terminate()Ljava/lang/Boolean;
.end method
