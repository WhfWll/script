.class public Lcom/arrownock/im/callback/AnIMNoticeCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;


# instance fields
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

.field private notice:Ljava/lang/String;

.field private timestamp:J

.field private topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;

    const v1, 0xcd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 16
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "notice"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p4, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V
    .registers 11
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "notice"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->topic:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->notice:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->customData:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->timestamp:J

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->notice:Ljava/lang/String;

    iput-object p4, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->customData:Ljava/util/Map;

    iput-wide p5, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->timestamp:J

    iput-object p7, p0, Lcom/arrownock/im/callback/AnIMNoticeCallbackData;->topic:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method public native getNotice()Ljava/lang/String;
.end method

.method public native getTimestamp()J
.end method

.method public native getTopic()Ljava/lang/String;
.end method
