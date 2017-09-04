.class public Lorg/webrtc/Logging;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Arrownock"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableTracing(Ljava/lang/String;Ljava/util/EnumSet;Lorg/webrtc/Logging$Severity;)V
    .registers 6
    .param p0, "path"    # Ljava/lang/String;
    .param p2, "severity"    # Lorg/webrtc/Logging$Severity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/webrtc/Logging$TraceLevel;",
            ">;",
            "Lorg/webrtc/Logging$Severity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "levels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/webrtc/Logging$TraceLevel;>;"
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/Logging$TraceLevel;

    iget v0, v0, Lorg/webrtc/Logging$TraceLevel;->level:I

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_17
    invoke-virtual {p2}, Lorg/webrtc/Logging$Severity;->ordinal()I

    move-result v0

    invoke-static {p0, v1, v0}, Lorg/webrtc/Logging;->nativeEnableTracing(Ljava/lang/String;II)V

    return-void
.end method

.method private static native nativeEnableTracing(Ljava/lang/String;II)V
.end method
