.class public Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private topic:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;

    const v1, 0xd2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .param p3, "topic"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;->topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMUpdateTopicCallbackData;->topic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getTopic()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
