.class public Lcom/arrownock/im/callback/AnIMBinaryCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;


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

.field private parties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;

    const v1, 0xc3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[BLjava/lang/String;Ljava/util/Map;J)V
    .registers 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p4, "content"    # [B
    .param p5, "fileType"    # Ljava/lang/String;
    .param p7, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p3, "parties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseMessageCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->parties:Ljava/util/Set;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->content:[B

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->fileType:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->customData:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->timestamp:J

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->parties:Ljava/util/Set;

    iput-object p4, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->content:[B

    iput-object p5, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->fileType:Ljava/lang/String;

    iput-object p6, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->customData:Ljava/util/Map;

    iput-wide p7, p0, Lcom/arrownock/im/callback/AnIMBinaryCallbackData;->timestamp:J

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

.method public native getParties()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getTimestamp()J
.end method
