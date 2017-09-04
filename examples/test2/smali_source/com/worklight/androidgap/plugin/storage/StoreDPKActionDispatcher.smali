.class public Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "StoreDPKActionDispatcher.java"


# static fields
.field private static final PARAM_CBK_CLEAR:Ljava/lang/String; = "cbkClear"

.field private static final PARAM_DPK_CLEAR:Ljava/lang/String; = "dpkClear"

.field private static final PARAM_LOCALKEYGEN:Ljava/lang/String; = "localKeyGen"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_SALT:Ljava/lang/String; = "salt"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;

    const v1, 0x49c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    const-string v0, "storeDPK"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "dpkClear"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 32
    const-string v0, "cbkClear"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 33
    const-string v0, "salt"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 34
    const-string v0, "username"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 35
    const-string v0, "localKeyGen"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->BOOLEAN:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 38
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 39
    return-void
.end method

.method private native getCBKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method

.method private native getDPKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method

.method private native getLocalKeyGen(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/Boolean;
.end method

.method private native getSalt(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method

.method private native getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
