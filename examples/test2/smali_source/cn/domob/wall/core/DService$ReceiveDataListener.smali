.class public interface abstract Lcn/domob/wall/core/DService$ReceiveDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/DService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiveDataListener"
.end annotation


# virtual methods
.method public abstract onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end method

.method public abstract onSuccessReceiveData(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/bean/ControlInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdInfo;",
            ">;",
            "Lcn/domob/wall/core/bean/ControlInfo;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/bean/AdExtend;",
            ">;)V"
        }
    .end annotation
.end method
