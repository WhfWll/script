.class public interface abstract Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/DService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiveDetailsDataListener"
.end annotation


# virtual methods
.method public abstract onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end method

.method public abstract onSuccessReceiveData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;)V"
        }
    .end annotation
.end method
