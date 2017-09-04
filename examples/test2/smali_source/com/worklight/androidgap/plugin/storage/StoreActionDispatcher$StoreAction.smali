.class Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
.super Ljava/lang/Object;
.source "StoreActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreAction"
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
.field private addIndexes:Lorg/json/JSONObject;

.field private isAdd:Z

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

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;

    const v1, 0x49a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;)V
    .registers 9
    .param p2, "objs"    # Lorg/json/JSONArray;
    .param p3, "isAdd"    # Z
    .param p4, "addIndexes"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V

    .line 146
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 148
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_16

    .line 149
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 151
    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONArray;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/json/JSONObject;
    .param p5, "x4"    # Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;)V
    .registers 6
    .param p2, "obj"    # Lorg/json/JSONObject;
    .param p3, "isAdd"    # Z
    .param p4, "addIndexes"    # Lorg/json/JSONObject;

    .prologue
    .line 137
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V

    .line 139
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V
    .registers 6
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONObject;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/json/JSONObject;
    .param p5, "x4"    # Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V
    .registers 5
    .param p2, "isAdd"    # Z
    .param p3, "addIndexes"    # Lorg/json/JSONObject;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->addIndexes:Lorg/json/JSONObject;

    .line 132
    iput-boolean p2, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->isAdd:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    .line 134
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
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
