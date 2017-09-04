.class public Lcom/arrownock/im/AnIMMessage;
.super Ljava/lang/Object;


# instance fields
.field private content:[B

.field private customData:Ljava/util/Map;
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

.field private fileType:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private timestamp:J

.field private topicId:Ljava/lang/String;

.field private type:Lcom/arrownock/im/AnIMMessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/AnIMMessage;

    const v1, 0xc2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/arrownock/im/AnIMMessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .registers 11
    .param p1, "type"    # Lcom/arrownock/im/AnIMMessageType;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "topicId"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "content"    # [B
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arrownock/im/AnIMMessageType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p10, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arrownock/im/AnIMMessage;->type:Lcom/arrownock/im/AnIMMessageType;

    iput-object p2, p0, Lcom/arrownock/im/AnIMMessage;->msgId:Ljava/lang/String;

    iput-object p3, p0, Lcom/arrownock/im/AnIMMessage;->topicId:Ljava/lang/String;

    iput-object p4, p0, Lcom/arrownock/im/AnIMMessage;->message:Ljava/lang/String;

    iput-object p5, p0, Lcom/arrownock/im/AnIMMessage;->content:[B

    iput-object p6, p0, Lcom/arrownock/im/AnIMMessage;->fileType:Ljava/lang/String;

    iput-object p7, p0, Lcom/arrownock/im/AnIMMessage;->from:Ljava/lang/String;

    iput-wide p8, p0, Lcom/arrownock/im/AnIMMessage;->timestamp:J

    iput-object p10, p0, Lcom/arrownock/im/AnIMMessage;->customData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public native getContent()[B
.end method

.method public native getCustomData()Ljava/util/Map;
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

.method public native getFileType()Ljava/lang/String;
.end method

.method public native getFrom()Ljava/lang/String;
.end method

.method public native getMessage()Ljava/lang/String;
.end method

.method public native getMsgId()Ljava/lang/String;
.end method

.method public native getTimestamp()J
.end method

.method public native getTopicId()Ljava/lang/String;
.end method

.method public native getType()Lcom/arrownock/im/AnIMMessageType;
.end method
