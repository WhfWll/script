.class public Lcom/worklight/wlclient/api/WLRequestOptions;
.super Ljava/lang/Object;
.source "WLRequestOptions.java"


# instance fields
.field private fromChallenge:Z

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private invocationContext:Ljava/lang/Object;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseListener:Lcom/worklight/wlclient/api/WLResponseListener;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLRequestOptions;

    const v1, 0x4e1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->timeout:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->headers:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method native addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native addHeader(Lorg/apache/http/Header;)V
.end method

.method native addParameter(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native addParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native getHeaders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end method

.method public native getInvocationContext()Ljava/lang/Object;
.end method

.method native getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method native getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;
.end method

.method public native getTimeout()I
.end method

.method public native isFromChallenge()Z
.end method

.method public native setFromChallenge(Z)V
.end method

.method native setHeaders(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public native setInvocationContext(Ljava/lang/Object;)V
.end method

.method native setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V
.end method

.method public native setTimeout(I)V
.end method
