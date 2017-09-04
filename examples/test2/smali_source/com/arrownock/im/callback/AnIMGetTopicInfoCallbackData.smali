.class public Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;


# instance fields
.field private createdAt:Ljava/util/Date;

.field private owner:Ljava/lang/String;

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

.field private topicId:Ljava/lang/String;

.field private topicName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;

    const v1, 0xc9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Date;)V
    .registers 9
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .param p3, "topicId"    # Ljava/lang/String;
    .param p4, "topicName"    # Ljava/lang/String;
    .param p5, "owner"    # Ljava/lang/String;
    .param p7, "createdAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/arrownock/exception/ArrownockException;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "parties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->topicId:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->topicName:Ljava/lang/String;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->parties:Ljava/util/Set;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->owner:Ljava/lang/String;

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->topicId:Ljava/lang/String;

    iput-object p4, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->topicName:Ljava/lang/String;

    iput-object p6, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->parties:Ljava/util/Set;

    iput-object p7, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->createdAt:Ljava/util/Date;

    iput-object p5, p0, Lcom/arrownock/im/callback/AnIMGetTopicInfoCallbackData;->owner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getCreatedAt()Ljava/util/Date;
.end method

.method public native getOwner()Ljava/lang/String;
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

.method public native getTopicId()Ljava/lang/String;
.end method

.method public native getTopicName()Ljava/lang/String;
.end method
