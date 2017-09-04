.class public interface abstract Lcn/dbox/ui/DBoxManager$DBoxViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/DBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DBoxViewListener"
.end annotation


# virtual methods
.method public abstract onDBoxViewClosed()V
.end method

.method public abstract onDBoxViewPresent()V
.end method

.method public abstract onFailReceiveData(Ljava/lang/String;)V
.end method

.method public abstract onLeaveApplication()V
.end method

.method public abstract onSuccessReceiveData(Ljava/lang/String;)V
.end method
