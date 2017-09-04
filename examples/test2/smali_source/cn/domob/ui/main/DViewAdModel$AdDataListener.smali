.class public interface abstract Lcn/domob/ui/main/DViewAdModel$AdDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/DViewAdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdDataListener"
.end annotation


# virtual methods
.method public abstract onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end method

.method public abstract onSuccessReceiveData(Lcn/domob/ui/main/AdResp;)V
.end method
