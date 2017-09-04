.class public final Lcom/worklight/common/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/common/Logger$7;,
        Lcom/worklight/common/Logger$LogUploadTask;,
        Lcom/worklight/common/Logger$DoLogRunnable;,
        Lcom/worklight/common/Logger$UncaughtExceptionHandler;,
        Lcom/worklight/common/Logger$FileLogger;,
        Lcom/worklight/common/Logger$LEVEL;
    }
.end annotation


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "WLClientLogReceiver"

.field private static final ADAPTER_PROCEDURE_LOG:Ljava/lang/String; = "log"

.field private static final ADAPTER_URI_PATH:Ljava/lang/String; = "/invoke"

.field private static final CONTEXT_NULL_MSG:Ljava/lang/String;

.field protected static final DEFAULT_capture:Z = true

.field protected static final DEFAULT_level:Lcom/worklight/common/Logger$LEVEL;

.field protected static final DEFAULT_logFileMaxSize:I = 0x186a0

.field private static final FILENAME:Ljava/lang/String; = "wl.log"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_NUM_LOG_FILES:I = 0x2

.field protected static final SHARED_PREF_KEY:Ljava/lang/String;

.field protected static final SHARED_PREF_KEY_CRASH_DETECTED:Ljava/lang/String; = "crashDetected"

.field protected static final SHARED_PREF_KEY_level:Ljava/lang/String; = "level"

.field protected static final SHARED_PREF_KEY_logFileMaxSize:Ljava/lang/String; = "logFileMaxSize"

.field protected static final SHARED_PREF_KEY_logPersistence:Ljava/lang/String; = "logPersistence"

.field private static final ThreadPoolWorkQueue:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final WAIT_LOCK:Ljava/lang/Object;

.field private static capture:Ljava/lang/Boolean;

.field private static context:Landroid/content/Context;

.field private static deviceAppMetadata:Lorg/json/JSONObject;

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/common/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private static level:Lcom/worklight/common/Logger$LEVEL;

.field private static logFileMaxSize:Ljava/lang/Integer;

.field private static uncaughtExceptionHandler:Lcom/worklight/common/Logger$UncaughtExceptionHandler;


# instance fields
.field private ignoreLevel:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-class v0, Lcom/worklight/common/Logger;

    const v1, 0x4ab

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 110
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 111
    sput-object v0, Lcom/worklight/common/Logger;->WAIT_LOCK:Ljava/lang/Object;

    const-class v0, Lcom/worklight/common/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/common/Logger;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/worklight/common/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".setContext(Context) must be called before this method is called."

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    sput-object v0, Lcom/worklight/common/Logger;->CONTEXT_NULL_MSG:Ljava/lang/String;

    const-class v0, Lcom/worklight/common/Logger;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lcom/worklight/common/Logger;->SHARED_PREF_KEY:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/worklight/common/Logger$LEVEL;->DEBUG:Lcom/worklight/common/Logger$LEVEL;

    .line 142
    sput-object v0, Lcom/worklight/common/Logger;->DEFAULT_level:Lcom/worklight/common/Logger$LEVEL;

    sput-object v3, Lcom/worklight/common/Logger;->capture:Ljava/lang/Boolean;

    sput-object v3, Lcom/worklight/common/Logger;->logFileMaxSize:Ljava/lang/Integer;

    sput-object v3, Lcom/worklight/common/Logger;->level:Lcom/worklight/common/Logger$LEVEL;

    .line 151
    sput-object v3, Lcom/worklight/common/Logger;->uncaughtExceptionHandler:Lcom/worklight/common/Logger$UncaughtExceptionHandler;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/worklight/common/Logger;->instances:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x3e8

    .line 156
    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/worklight/common/Logger;->ThreadPoolWorkQueue:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 179
    sget-object v0, Lcom/worklight/common/Logger;->ThreadPoolWorkQueue:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/worklight/common/Logger$1;

    invoke-direct {v1}, Lcom/worklight/common/Logger$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/worklight/common/Logger;->deviceAppMetadata:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/common/Logger;->ignoreLevel:Z

    .line 295
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    const-string v0, "NONE"

    :goto_16
    iput-object v0, p0, Lcom/worklight/common/Logger;->tag:Ljava/lang/String;

    .line 296
    return-void

    .line 295
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method static synthetic access$100()Lcom/worklight/common/Logger$LEVEL;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/worklight/common/Logger;->level:Lcom/worklight/common/Logger$LEVEL;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/worklight/common/Logger$LEVEL;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "x0"    # Lcom/worklight/common/Logger$LEVEL;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lorg/json/JSONObject;
    .param p6, "x5"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    invoke-static/range {p0 .. p6}, Lcom/worklight/common/Logger;->createJSONObject(Lcom/worklight/common/Logger$LEVEL;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/worklight/common/Logger$LEVEL;)Lcom/worklight/common/Logger$LEVEL;
    .registers 1
    .param p0, "x0"    # Lcom/worklight/common/Logger$LEVEL;

    .prologue
    .line 93
    sput-object p0, Lcom/worklight/common/Logger;->level:Lcom/worklight/common/Logger$LEVEL;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/json/JSONObject;)V
    .registers 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/worklight/common/Logger;->captureToFile(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/worklight/common/Logger;->prependMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/worklight/common/Logger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Lorg/json/JSONObject;
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Lcom/worklight/common/Logger;->getDeviceAppMetadata()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500([B)Lorg/apache/http/entity/ByteArrayEntity;
    .registers 2
    .param p0, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/worklight/common/Logger;->createGZIPEntity([B)Lorg/apache/http/entity/ByteArrayEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/worklight/common/Logger;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/worklight/common/Logger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Z)V
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 93
    invoke-static {p0}, Lcom/worklight/common/Logger;->setCaptureSync(Z)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/worklight/common/Logger;->capture:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/worklight/common/Logger;)Z
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/Logger;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/worklight/common/Logger;->ignoreLevel:Z

    return v0
.end method

.method static synthetic access$900(Lcom/worklight/common/Logger;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/common/Logger;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/worklight/common/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private static native appendFullStackTrace(Lorg/json/JSONObject;Ljava/lang/Throwable;)Lorg/json/JSONObject;
.end method

.method private native appendStackMetadata(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method private static native captureToFile(Lorg/json/JSONObject;)V
.end method

.method private static native convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native createGZIPEntity([B)Lorg/apache/http/entity/ByteArrayEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method private static native createJSONObject(Lcom/worklight/common/Logger$LEVEL;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Throwable;)Lorg/json/JSONObject;
.end method

.method protected static native getByteArrayFromFile(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public static native getCapture()Z
.end method

.method private static native getDeviceAppMetadata()Lorg/json/JSONObject;
.end method

.method public static native getInstance(Ljava/lang/String;)Lcom/worklight/common/Logger;
.end method

.method public static native getLevel()Lcom/worklight/common/Logger$LEVEL;
.end method

.method public static native getMaxFileSize()I
.end method

.method private static native prependMetadata(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public static native send()V
.end method

.method public static native declared-synchronized sendIfUnCaughtExceptionDetected(Landroid/content/Context;)V
.end method

.method public static native setCapture(Z)V
.end method

.method private static native setCaptureSync(Z)V
.end method

.method public static native setContext(Landroid/content/Context;)V
.end method

.method public static native setLevel(Lcom/worklight/common/Logger$LEVEL;)V
.end method

.method public static native setMaxFileSize(I)V
.end method

.method protected static native unsetContext()V
.end method


# virtual methods
.method public native debug(Ljava/lang/String;)V
.end method

.method public native debug(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public native doLog(Lcom/worklight/common/Logger$LEVEL;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Throwable;)V
.end method

.method public native error(Ljava/lang/String;)V
.end method

.method public native error(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public native error(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public native error(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
.end method

.method public native info(Ljava/lang/String;)V
.end method

.method public native info(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public native log(Ljava/lang/String;)V
.end method

.method public native log(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public native setIgnoreLevel(Z)V
.end method

.method public native warn(Ljava/lang/String;)V
.end method

.method public native warn(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
