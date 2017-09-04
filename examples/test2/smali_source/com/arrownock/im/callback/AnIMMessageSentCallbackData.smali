.class public Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;
.super Ljava/lang/Object;


# instance fields
.field private error:Z

.field private exception:Lcom/arrownock/exception/ArrownockException;

.field private msgId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;

    const v1, 0xcc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;J)V
    .registers 10
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->error:Z

    iput-object v2, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->msgId:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->timestamp:J

    iput-object v2, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    iput-boolean p1, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->error:Z

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->msgId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->timestamp:J

    iput-object p2, p0, Lcom/arrownock/im/callback/AnIMMessageSentCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    return-void
.end method


# virtual methods
.method public native getException()Lcom/arrownock/exception/ArrownockException;
.end method

.method public native getMsgId()Ljava/lang/String;
.end method

.method public native getTimestamp()J
.end method

.method public native isError()Z
.end method
