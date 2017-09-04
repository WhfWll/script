.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static final SQL_SCHEMA:Ljava/lang/String; = "PRAGMA table_info({0})"

.field private static initialized:Z

.field private static final instance:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

.field private static final logger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# instance fields
.field private accessors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private databaseKey:Ljava/lang/String;

.field private dbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    const v1, 0x445

    .line 33
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->initialized:Z

    .line 34
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->instance:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->accessors:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static native getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
.end method

.method private native openDatabaseIfNecessary(Landroid/content/Context;)V
.end method


# virtual methods
.method public native declared-synchronized checkDatabaseAgainstSchema(Landroid/content/Context;Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)Z
.end method

.method public native clearDatabaseKey()V
.end method

.method public native clearDbPath()V
.end method

.method public native declared-synchronized closeDatabase()V
.end method

.method public native declared-synchronized destroyDatabase(Landroid/content/Context;)I
.end method

.method public native declared-synchronized destroyKeychain(Landroid/content/Context;)V
.end method

.method public native declared-synchronized destroyPreferences(Landroid/content/Context;)V
.end method

.method public native getDatabase(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native getDbPath()Ljava/lang/String;
.end method

.method public native isDatabaseOpen()Z
.end method

.method public native declared-synchronized provisionDatabase(Landroid/content/Context;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Z)Z
.end method

.method public native setDatabaseKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native setDbPath(Ljava/lang/String;)V
.end method
