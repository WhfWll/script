.class public Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "ChangePasswordActionDispatcher.java"


# static fields
.field private static final PARAM_NEW_PW:Ljava/lang/String; = "newPW"

.field private static final PARAM_OLD_PW:Ljava/lang/String; = "oldPW"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;

    const v1, 0x482

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    const-string v0, "changePassword"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "oldPW"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 34
    const-string v0, "newPW"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 36
    const-string v0, "username"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 40
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 42
    return-void
.end method

.method private native getNewPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
.end method

.method private native getOldPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
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
