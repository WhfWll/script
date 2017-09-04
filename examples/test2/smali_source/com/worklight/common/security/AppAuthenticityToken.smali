.class public Lcom/worklight/common/security/AppAuthenticityToken;
.super Ljava/lang/Object;
.source "AppAuthenticityToken.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "authjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public native a1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
