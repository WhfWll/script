.class public Lcom/worklight/wlclient/AsynchronousRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"


# static fields
.field private static final pool:Ljava/util/concurrent/ExecutorService;

.field private static sender:Lcom/worklight/wlclient/AsynchronousRequestSender;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/AsynchronousRequestSender;

    const v1, 0x4c3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public static native getHttpClient()Lorg/apache/http/client/HttpClient;
.end method

.method public static native declared-synchronized getInstance()Lcom/worklight/wlclient/AsynchronousRequestSender;
.end method

.method public static native releaseHttpClient()V
.end method


# virtual methods
.method public native sendCustomRequestAsync(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native sendRequestAsync(Lcom/worklight/wlclient/WLRequest;)V
.end method
