.class Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
.super Ljava/lang/Object;
.source "FindActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindAction"
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
.field private exact:Ljava/lang/Boolean;

.field private limit:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private queryObj:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;

    const v1, 0x48b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;)V
    .registers 4
    .param p2, "queryObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->this$0:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->limit:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->offset:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->exact:Ljava/lang/Boolean;

    .line 150
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->queryObj:Lorg/json/JSONObject;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;
    .param p2, "x1"    # Lorg/json/JSONObject;
    .param p3, "x2"    # Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$1;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setLimit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setOffset(Ljava/lang/String;)V

    return-void
.end method

.method private native getLimit()Ljava/lang/String;
.end method

.method private native getOffset()Ljava/lang/String;
.end method

.method private native setLimit(Ljava/lang/String;)V
.end method

.method private native setOffset(Ljava/lang/String;)V
.end method


# virtual methods
.method public native getExact()Ljava/lang/Boolean;
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
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;

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

.method public native setExact(Ljava/lang/Boolean;)V
.end method
