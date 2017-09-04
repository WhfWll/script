.class public Lcom/worklight/androidgap/jsonstore/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/util/Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/util/Logger;

    const v1, 0x44f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/Logger;->instances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static native declared-synchronized getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;
.end method


# virtual methods
.method public native isLoggable(I)Z
.end method

.method public native logDebug(Ljava/lang/String;)V
.end method

.method public native logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public native logError(Ljava/lang/String;)V
.end method

.method public native logError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public native logInfo(Ljava/lang/String;)V
.end method

.method public native logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public native logWarning(Ljava/lang/String;)V
.end method

.method public native logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
