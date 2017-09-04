.class Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;
.super Ljava/lang/Object;
.source "FindByIdActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindByIdAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private ids:Lorg/json/JSONArray;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;

    const v1, 0x48d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;)V
    .registers 3
    .param p2, "ids"    # Lorg/json/JSONArray;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->this$0:Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->ids:Lorg/json/JSONArray;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONArray;
    .param p3, "x2"    # Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;)V

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
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public native performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
