.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
.super Ljava/lang/Object;
.source "DatabaseAccessorImpl.java"

# interfaces
.implements Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;


# static fields
.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE {0} ({1} INTEGER PRIMARY KEY AUTOINCREMENT, {2} {3} TEXT, {4} REAL DEFAULT 0, {5} INTEGER DEFAULT 0, {6} TEXT);"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS {0};"

.field private static final SQL_TABLE_EXISTS:Ljava/lang/String; = "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \"{0}\";"

.field private static final ignoredSchemaNodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# instance fields
.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

.field private schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

.field private writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    const v1, 0x444

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 34
    .line 0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 43
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_deleted"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_dirty"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .registers 4
    .param p1, "database"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "schema"    # Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 61
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    invoke-direct {v0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    .line 62
    iput-object p2, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .line 63
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    invoke-direct {v0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    .line 64
    return-void
.end method

.method private varargs execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 130
    invoke-static {p1, p2}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "formattedSQL":Ljava/lang/String;
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 133
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executing SQL on database \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 138
    :cond_49
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private native formatSchemaColumns()Ljava/lang/String;
.end method


# virtual methods
.method public native createTable()V
.end method

.method public native dropTable()V
.end method

.method public native getRawDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
.end method

.method public native getReadableDatabase()Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.end method

.method public native getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.end method

.method public native getTableExists()Z
.end method

.method public native getWritableDatabase()Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
.end method
