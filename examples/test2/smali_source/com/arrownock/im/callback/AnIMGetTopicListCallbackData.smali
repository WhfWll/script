.class public Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;


# instance fields
.field clientId:Ljava/lang/String;

.field topicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;

    const v1, 0xca

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .param p4, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/arrownock/exception/ArrownockException;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "topicList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->topicList:Ljava/util/List;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->topicList:Ljava/util/List;

    iput-object p4, p0, Lcom/arrownock/im/callback/AnIMGetTopicListCallbackData;->clientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getClientId()Ljava/lang/String;
.end method

.method public native getTopicList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end method
