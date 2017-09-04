.class public Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.super Ljava/lang/Object;
.source "ReadableDatabase.java"


# static fields
.field private static final SQL_AND:Ljava/lang/String; = " AND "

.field private static final SQL_EQ:Ljava/lang/String; = " = ?"

.field private static final SQL_FIND:Ljava/lang/String; = "SELECT {0} FROM {1};"

.field private static final SQL_FIND_BY_ID:Ljava/lang/String; = "SELECT {0}, {1} FROM {2} WHERE {3} AND _deleted = 0"

.field private static final SQL_FIND_OP:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIKE ?"

.field private static final SQL_FIND_WHERE:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2};"

.field private static final SQL_FIND_WHERE_WITH_LIMIT:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIMIT {3};"

.field private static final SQL_FIND_WHERE_WITH_LIMIT_AND_OFFSET:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIMIT {3} OFFSET {4};"

.field private static final SQL_FIND_WHERE_WITH_NEGATIVE_LIMIT:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} ORDER BY {3} DESC LIMIT {4};"

.field private static final SQL_LIKE:Ljava/lang/String; = " LIKE ?"

.field private static final SQL_OR:Ljava/lang/String; = " OR "


# instance fields
.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field protected logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

.field private schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    const v1, 0x447

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .registers 4
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "schema"    # Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 54
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 55
    iput-object p2, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .line 56
    return-void
.end method


# virtual methods
.method public varargs findByIds([I)Landroid/database/Cursor;
    .registers 9
    .param p1, "ids"    # [I

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v1, "idsStr":Ljava/lang/StringBuilder;
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 70
    .local v2, "selections":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v3, p1

    if-ge v0, v3, :cond_3a

    .line 71
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, " = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_20

    .line 75
    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 81
    :cond_3a
    const-string v3, "SELECT {0}, {1} FROM {2} WHERE {3} AND _deleted = 0"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "json"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method protected native findOperationForObjectById(I)Ljava/lang/String;
.end method

.method public native findUsingQueryObject(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected native getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
.end method

.method protected native getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.end method

.method public native rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end method
