.class public Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "ProvisionActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;
    }
.end annotation


# static fields
.field private static final OPTION_ADD_INDEXES:Ljava/lang/String; = "additionalSearchFields"

.field private static final OPTION_DROP_COLLECTION:Ljava/lang/String; = "dropCollection"

.field private static final OPTION_FIPS_ENABLED:Ljava/lang/String; = "fipsEnabled"

.field private static final OPTION_PASSWORD:Ljava/lang/String; = "collectionPassword"

.field private static final OPTION_USERNAME:Ljava/lang/String; = "username"

.field private static final PARAM_DBNAME:Ljava/lang/String; = "dbName"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_SCHEMA:Ljava/lang/String; = "schema"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;

    const v1, 0x494

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    const-string v0, "provision"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "dbName"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 47
    const-string v0, "schema"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 50
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 52
    return-void
.end method

.method private native checkVersionMigration(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native getDatabaseName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method

.method private native getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;
.end method

.method private native getSchema(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native isSchemaMismatched(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Z
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
