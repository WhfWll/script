.class public final Lcom/tl/uic/TLFCache;
.super Ljava/lang/Object;
.source "TLFCache.java"


# static fields
.field private static final PERCENT:I = 0x64

.field private static _currentSession:Lcom/tl/uic/model/Session;

.field private static _currentSessionStartedDate:J

.field private static _messageVersion:I

.field private static volatile _myInstance:Lcom/tl/uic/TLFCache;

.field private static _postTask:Lcom/tl/uic/util/PostTask;

.field private static _postTimerTask:Ljava/util/TimerTask;

.field private static currentBufferSize:J

.field private static currentSessionId:Ljava/lang/String;

.field private static environmentalData:Lcom/tl/uic/EnvironmentalData;

.field private static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/TLFCache;

    const v1, 0x402

    .line 38
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 32
    .line 0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    const/4 v0, 0x0

    sput v0, Lcom/tl/uic/TLFCache;->_messageVersion:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$0()Lcom/tl/uic/util/PostTask;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tl/uic/util/PostTask;)V
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    return-void
.end method

.method private static native addJSONMessage(Lcom/tl/uic/model/JSONMessage;)Ljava/lang/Boolean;
.end method

.method public static native addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;
.end method

.method public static native addMessage(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method private static native cleanByCacheLevel()V
.end method

.method public static native closePostTask()Ljava/lang/Boolean;
.end method

.method private static native createMessageFormat()Lcom/tl/uic/model/MessageFormat;
.end method

.method private static native createSessionId()Ljava/lang/String;
.end method

.method private static native flushPostTask()V
.end method

.method public static native getBufferLimit()I
.end method

.method public static native getBufferPercent()I
.end method

.method public static native getCacheLevel()I
.end method

.method public static native getCachedFileMaxBytesSize()J
.end method

.method public static native getCurrentBufferSize()J
.end method

.method public static native getCurrentSessionId()Ljava/lang/String;
.end method

.method public static native getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;
.end method

.method public static native getHasToPersistLocalCache()Ljava/lang/Boolean;
.end method

.method public static native getInstance()Lcom/tl/uic/TLFCache;
.end method

.method public static native getLogLevel()I
.end method

.method public static native getMessages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation
.end method

.method public static native getPostMessageMaxBytesSize()J
.end method

.method public static native getTLFCacheFileMaxBytesSize()J
.end method

.method public static native messageFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/TLFCacheFile;",
            ">;"
        }
    .end annotation
.end method

.method public static native onPause()Ljava/lang/Boolean;
.end method

.method public static native onResume()Ljava/lang/Boolean;
.end method

.method public static native saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public static native setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method private static native setupPostTask()V
.end method

.method public static native sizeOfObject(Ljava/lang/Object;)J
.end method

.method public static native startSession(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native terminate()Ljava/lang/Boolean;
.end method

.method public static native timestampFromSession()J
.end method
