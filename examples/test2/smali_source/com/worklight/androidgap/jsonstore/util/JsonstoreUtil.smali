.class public Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;
.super Ljava/lang/Object;
.source "JsonstoreUtil.java"


# static fields
.field private static final coreLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

.field private static final dbLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;

    const v1, 0x44e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    .line 22
    const-string v0, "jsonstore-core"

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->coreLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v0, "jsonstore-db"

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->dbLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getCoreLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;
.end method

.method public static native getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;
.end method

.method public static native splitArray([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end method
