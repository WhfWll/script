.class public Lcom/worklight/androidgap/NoSuchResourceException;
.super Ljava/lang/RuntimeException;
.source "NoSuchResourceException.java"


# static fields
.field private static final serialVersionUID:J = 0x68ef92eed4771ee1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
