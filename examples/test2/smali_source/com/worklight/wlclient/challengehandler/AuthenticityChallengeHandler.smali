.class public Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "AuthenticityChallengeHandler.java"


# static fields
.field private static final AUTH_FAIL_ID:Ljava/lang/String; = "WLClient.authFailure"

.field private static final CLOSE_ID:Ljava/lang/String; = "WLClient.close"

.field private static final INIT_FAILURE_TITLE_ID:Ljava/lang/String; = "WLClient.wlclientInitFailure"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;

    const v1, 0x4e3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public native handleChallenge(Lorg/json/JSONObject;)V
.end method

.method public native handleFailure(Lorg/json/JSONObject;)V
.end method

.method public native handleSuccess(Lorg/json/JSONObject;)V
.end method
