.class Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
.super Ljava/lang/Object;
.source "RemoveActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private exact:Z

.field private isErase:Z

.field private objs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;

    const v1, 0x495

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONArray;ZZ)V
    .registers 9
    .param p2, "array"    # Lorg/json/JSONArray;
    .param p3, "isErase"    # Z
    .param p4, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;ZZ)V

    .line 126
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 128
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_16

    .line 129
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 131
    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONArray;ZZLcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONArray;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONArray;ZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONObject;ZZ)V
    .registers 6
    .param p2, "obj"    # Lorg/json/JSONObject;
    .param p3, "isErase"    # Z
    .param p4, "exact"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;ZZ)V

    .line 119
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONObject;ZZLcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONObject;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;ZZ)V
    .registers 5
    .param p2, "isErase"    # Z
    .param p3, "exact"    # Z

    .prologue
    .line 110
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->this$0:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean p2, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->isErase:Z

    .line 112
    iput-boolean p3, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->exact:Z

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;->objs:Ljava/util/LinkedList;

    .line 114
    return-void
.end method


# virtual methods
.method public native performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
