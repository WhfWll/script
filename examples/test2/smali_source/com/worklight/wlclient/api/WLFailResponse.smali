.class public Lcom/worklight/wlclient/api/WLFailResponse;
.super Lcom/worklight/wlclient/api/WLResponse;
.source "WLFailResponse.java"


# static fields
.field private static final JSON_KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final JSON_KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"


# instance fields
.field errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

.field errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLFailResponse;

    const v1, 0x4d1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .registers 6
    .param p1, "errorCode"    # Lcom/worklight/wlclient/api/WLErrorCode;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "requestOptions"    # Lcom/worklight/wlclient/api/WLRequestOptions;

    .prologue
    .line 50
    const/16 v0, 0x1f4

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3}, Lcom/worklight/wlclient/api/WLResponse;-><init>(ILjava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;->setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/worklight/wlclient/api/WLFailResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .registers 2
    .param p1, "wlResponse"    # Lcom/worklight/wlclient/api/WLResponse;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 44
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->parseErrorFromResponse()V

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 37
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->parseErrorFromResponse()V

    .line 38
    return-void
.end method

.method private native parseErrorFromResponse()V
.end method


# virtual methods
.method public native getErrorCode()Lcom/worklight/wlclient/api/WLErrorCode;
.end method

.method public native getErrorMsg()Ljava/lang/String;
.end method

.method native setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V
.end method

.method native setErrorMsg(Ljava/lang/String;)V
.end method

.method public native toString()Ljava/lang/String;
.end method
