.class public final Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;
.super Lcom/worklight/wlclient/api/WLFailResponse;
.source "WLProcedureInvocationFailResponse.java"


# static fields
.field private static final JSON_KEY_ERROR_MESSAGES:Ljava/lang/String; = "errors"


# instance fields
.field private jsonResult:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;

    const v1, 0x4d3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/worklight/wlclient/api/WLFailResponse;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 47
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getErrorCode()Lcom/worklight/wlclient/api/WLErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V

    .line 48
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/worklight/wlclient/api/WLResponse;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 39
    return-void
.end method


# virtual methods
.method public native getJSONResult()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getProcedureInvocationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getResult()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
