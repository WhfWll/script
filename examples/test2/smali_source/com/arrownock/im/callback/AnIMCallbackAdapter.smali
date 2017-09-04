.class public Lcom/arrownock/im/callback/AnIMCallbackAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arrownock/im/callback/IAnIMCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMCallbackAdapter;

    const v1, 0xc4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native addClientsToTopic(Lcom/arrownock/im/callback/AnIMAddClientsCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native bindAnPushService(Lcom/arrownock/im/callback/AnIMBindAnPushServiceCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native createTopic(Lcom/arrownock/im/callback/AnIMCreateTopicCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getClientId(Lcom/arrownock/im/callback/AnIMGetClientIdCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getClientsStatus(Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getSessionInfo(Lcom/arrownock/im/callback/AnIMGetSessionInfoCallbackData;)V
.end method

.method public native getTopicInfo(Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native getTopicList(Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native messageSent(Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;)V
.end method

.method public native receivedBinary(Lcom/arrownock/im/callback/AnIMBinaryCallbackData;)V
.end method

.method public native receivedMessage(Lcom/arrownock/im/callback/AnIMMessageCallbackData;)V
.end method

.method public native receivedNotice(Lcom/arrownock/im/callback/AnIMNoticeCallbackData;)V
.end method

.method public native receivedReadACK(Lcom/arrownock/im/callback/AnIMReadACKCallbackData;)V
.end method

.method public native receivedReceiveACK(Lcom/arrownock/im/callback/AnIMReceiveACKCallbackData;)V
.end method

.method public native receivedTopicBinary(Lcom/arrownock/im/callback/AnIMTopicBinaryCallbackData;)V
.end method

.method public native receivedTopicMessage(Lcom/arrownock/im/callback/AnIMTopicMessageCallbackData;)V
.end method

.method public native removeClientsFromTopic(Lcom/arrownock/im/callback/AnIMRemoveClientsCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native removeTopic(Lcom/arrownock/im/callback/AnIMRemoveTopicCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
.end method

.method public native unbindAnPushService(Lcom/arrownock/im/callback/AnIMUnbindAnPushServiceCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native updateTopic(Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
