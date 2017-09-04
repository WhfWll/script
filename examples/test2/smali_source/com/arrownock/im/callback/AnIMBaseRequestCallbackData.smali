.class public abstract Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;
.super Ljava/lang/Object;


# instance fields
.field private error:Z

.field private exception:Lcom/arrownock/exception/ArrownockException;


# direct methods
.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 4
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->error:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    iput-boolean p1, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->error:Z

    iput-object p2, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    return-void
.end method


# virtual methods
.method public getException()Lcom/arrownock/exception/ArrownockException;
    .registers 2

    iget-object v0, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    iget-boolean v0, p0, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;->error:Z

    return v0
.end method
