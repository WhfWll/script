.class public interface abstract Lcn/domob/ui/main/DViewManager$GetDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/main/DViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetDataListener"
.end annotation


# virtual methods
.method public abstract onCloseWall()V
.end method

.method public abstract onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end method

.method public abstract onSuccessReceiveData(I)V
.end method
