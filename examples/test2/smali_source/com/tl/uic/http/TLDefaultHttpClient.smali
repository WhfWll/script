.class public Lcom/tl/uic/http/TLDefaultHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "TLDefaultHttpClient.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/http/TLDefaultHttpClient;

    const v1, 0x405

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .param p1, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private native init(Ljava/lang/String;)V
.end method
