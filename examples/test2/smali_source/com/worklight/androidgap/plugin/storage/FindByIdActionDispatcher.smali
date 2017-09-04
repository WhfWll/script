.class public Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "FindByIdActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;
    }
.end annotation


# static fields
.field private static final PARAM_IDS:Ljava/lang/String; = "ids"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;

    const v1, 0x48e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 36
    const-string v0, "findById"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v0, "ids"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 42
    return-void
.end method

.method private native getIds(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
