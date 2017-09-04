.class public Lcom/MobileTicket/PushMsgUtil;
.super Ljava/lang/Object;
.source "PushMsgUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "encrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encrypt(Ljava/lang/String;)Ljava/lang/String;
.end method
