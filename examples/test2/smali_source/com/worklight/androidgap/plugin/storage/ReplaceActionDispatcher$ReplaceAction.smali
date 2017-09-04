.class Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
.super Ljava/lang/Object;
.source "ReplaceActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplaceAction"
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
.field private isRefresh:Z

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

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;

    const v1, 0x497

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;Z)V
    .registers 8
    .param p2, "array"    # Lorg/json/JSONArray;
    .param p3, "isRefresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V

    .line 123
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 125
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_16

    .line 126
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 128
    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONArray;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;Z)V
    .registers 5
    .param p2, "obj"    # Lorg/json/JSONObject;
    .param p3, "isRefresh"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V

    .line 116
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONObject;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V
    .registers 4
    .param p2, "isRefresh"    # Z

    .prologue
    .line 108
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean p2, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->isRefresh:Z

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    .line 111
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
