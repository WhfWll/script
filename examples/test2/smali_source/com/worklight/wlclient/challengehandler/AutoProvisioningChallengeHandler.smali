.class public Lcom/worklight/wlclient/challengehandler/AutoProvisioningChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseProvisioningChallengeHandler;
.source "AutoProvisioningChallengeHandler.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/challengehandler/AutoProvisioningChallengeHandler;

    const v1, 0x4e4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseProvisioningChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected native createJsonCsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AutoProvisioningChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public native handleChallenge(Lorg/json/JSONObject;)V
.end method

.method public native handleFailure(Lorg/json/JSONObject;)V
.end method

.method public native handleSuccess(Lorg/json/JSONObject;)V
.end method
