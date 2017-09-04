.class public Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "IsKeyGenRequiredActionDispatcher.java"


# static fields
.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;

    const v1, 0x490

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 22
    const-string v0, "isKeyGenRequired"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "username"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 28
    return-void
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
