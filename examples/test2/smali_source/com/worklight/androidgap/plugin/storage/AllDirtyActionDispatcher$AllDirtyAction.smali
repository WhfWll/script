.class Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;
.super Ljava/lang/Object;
.source "AllDirtyActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllDirtyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;

    const v1, 0x47e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .registers 3
    .param p2, "context"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->this$0:Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;
    .param p2, "x1"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
    .param p3, "x2"    # Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;-><init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .param p2, "x1"    # Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;",
            "Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
