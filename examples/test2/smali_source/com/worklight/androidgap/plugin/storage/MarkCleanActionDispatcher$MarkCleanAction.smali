.class Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
.super Ljava/lang/Object;
.source "MarkCleanActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkCleanAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private operation:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;

    const v1, 0x492

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->this$0:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p2, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->id:I

    .line 80
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->operation:Ljava/lang/String;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$1;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;-><init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .param p2, "x1"    # Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
