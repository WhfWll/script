.class public Lcom/tl/uic/http/TLHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "TLHttpRequestInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final sessionId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/http/TLHttpRequestInterceptor;

    const v1, 0x406

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->sessionId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->sessionId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final native getUrl()Ljava/lang/String;
.end method

.method public final native process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setUrl(Ljava/lang/String;)V
.end method
