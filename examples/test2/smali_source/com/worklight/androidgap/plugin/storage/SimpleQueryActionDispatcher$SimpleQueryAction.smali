.class Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;
.super Ljava/lang/Object;
.source "SimpleQueryActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleQueryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;

    const v1, 0x499

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .registers 3
    .param p2, "context"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
    .param p2, "x1"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
    .param p3, "x2"    # Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$1;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;-><init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V

    return-void
.end method


# virtual methods
.method public native performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

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
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
