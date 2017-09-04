.class public Lcom/tl/uic/http/TLHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "TLHttpResponseInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field private final initTime:J

.field private final startTime:Ljava/util/Date;

.field private final tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/http/TLHttpResponseInterceptor;

    const v1, 0x407

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/http/TLHttpRequestInterceptor;)V
    .registers 4
    .param p1, "tlHttpRequestInterceptor"    # Lcom/tl/uic/http/TLHttpRequestInterceptor;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->startTime:Ljava/util/Date;

    .line 32
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->initTime:J

    .line 33
    return-void
.end method


# virtual methods
.method public final native process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
