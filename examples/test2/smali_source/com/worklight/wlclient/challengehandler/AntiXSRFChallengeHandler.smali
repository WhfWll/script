.class public Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "AntiXSRFChallengeHandler.java"


# static fields
.field private static final PROTOCOL_ERROR_MESSAGE:Ljava/lang/String; = "Application will exit because wrong JSON arrived when processing it from AntiXSRFChallengeHandler with "


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;

    const v1, 0x4e2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public native handleChallenge(Lorg/json/JSONObject;)V
.end method

.method public native handleFailure(Lorg/json/JSONObject;)V
.end method

.method public native handleSuccess(Lorg/json/JSONObject;)V
.end method
