.class public Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;
.source "NoProvisioningChallengeHandler.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;

    const v1, 0x4e5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public native handleChallenge(Lorg/json/JSONObject;)V
.end method

.method public native handleFailure(Lorg/json/JSONObject;)V
.end method

.method public native handleSuccess(Lorg/json/JSONObject;)V
.end method

.method protected native onDeviceAuthDataReady(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
