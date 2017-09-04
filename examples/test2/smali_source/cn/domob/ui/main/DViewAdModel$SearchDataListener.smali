.class public interface abstract Lcn/domob/ui/main/DViewAdModel$SearchDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/DViewAdModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchDataListener"
.end annotation


# virtual methods
.method public abstract onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end method

.method public abstract onSuccessReceiveData(Lcn/domob/ui/main/SearchResp;)V
.end method
