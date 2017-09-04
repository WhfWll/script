.class public Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
.source "DatabaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

.field private dbName:Ljava/lang/String;

.field private parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    const v1, 0x485

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)V
    .registers 3
    .param p1, "parentContext"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 70
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
    .param p2, "x1"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->initialize()V

    return-void
.end method

.method private native getDatabaseAccessor()Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method private native initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method


# virtual methods
.method public native clearDatabase()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public native getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;
.end method

.method public native getDatabaseName()Ljava/lang/String;
.end method

.method public native getDatabaseSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.end method

.method public native getFloatParameter(Ljava/lang/String;)F
.end method

.method public native getIntParameter(Ljava/lang/String;)I
.end method

.method public native getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method public native getStringParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public native performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public native performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
