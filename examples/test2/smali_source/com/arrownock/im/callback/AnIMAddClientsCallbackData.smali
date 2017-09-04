.class public Lcom/arrownock/im/callback/AnIMAddClientsCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;)V
    .registers 3
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    return-void
.end method
