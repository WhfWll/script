.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"


# static fields
.field private static final specialChars:[Ljava/lang/String;


# instance fields
.field private internalNodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private safeNodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    const v1, 0x446

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "$"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "&"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->specialChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->name:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->safeNodes:Ljava/util/TreeMap;

    .line 53
    :try_start_1a
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_deleted"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_dirty"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_id"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "json"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_operation"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_47} :catch_48

    .line 68
    :goto_47
    return-void

    .line 65
    :catch_48
    move-exception v0

    goto :goto_47
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "schema"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->addNodesFromSchema(Lorg/json/JSONObject;)V

    .line 74
    return-void
.end method

.method private native addNode(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native addNodesFromSchema(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native encodeJSONArrayAsString(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public static native getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getValueFromObjectCaseInsensitive(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native mergeIntoObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native mergeValues(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native normalizeObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native normalizeOrCopyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method


# virtual methods
.method public native equals(Ljava/lang/Object;)Z
.end method

.method public native equals(Ljava/util/TreeMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getNodeNames()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native getNodeType(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
.end method

.method public native mapObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
