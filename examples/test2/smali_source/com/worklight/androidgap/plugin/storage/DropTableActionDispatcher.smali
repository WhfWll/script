.class public Lcom/worklight/androidgap/plugin/storage/DropTableActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "DropTableActionDispatcher.java"


# static fields
.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/DropTableActionDispatcher;

    const v1, 0x48a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 22
    const-string v0, "dropTable"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v0, "options"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/DropTableActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 28
    return-void
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
