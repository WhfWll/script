.class public Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "RemoteDisableChallengeHandler.java"


# static fields
.field private static final APPLICATION_DISABLED_ID:Ljava/lang/String; = "WLClient.applicationDenied"

.field private static final CLOSE_ID:Ljava/lang/String; = "WLClient.close"

.field private static final GET_NEW_VERSION_ID:Ljava/lang/String; = "WLClient.getNewVersion"

.field private static final NOTIFICATION_TITLE_ID:Ljava/lang/String; = "WLClient.notificationTitle"

.field private static final NOTIFY_MESAGE:Ljava/lang/String; = "NOTIFY"

.field private static final PROTOCOL_DOWNLOAD_LINK:Ljava/lang/String; = "downloadLink"

.field private static final PROTOCOL_ERROR_MESSAGE:Ljava/lang/String; = "Protocol Error - could not parse JSON object"

.field private static final PROTOCOL_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROTOCOL_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final PROTOCOL_MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;

    const v1, 0x4e6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private native createAndShowDisableDialogue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native createAndShowMessageDialogue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native isDisplayMessageDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public native handleChallenge(Lorg/json/JSONObject;)V
.end method

.method public native handleFailure(Lorg/json/JSONObject;)V
.end method

.method public native handleSuccess(Lorg/json/JSONObject;)V
.end method
