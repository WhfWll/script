.class public Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "RemoveActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    }
.end annotation


# static fields
.field private static final OPTION_EXACT:Ljava/lang/String; = "exact"

.field private static final OPTION_IS_ERASE:Ljava/lang/String; = "isErase"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_QUERY_OBJ:Ljava/lang/String; = "queryObj"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;

    const v1, 0x496

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const-string v0, "remove"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v0, "queryObj"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 41
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 43
    return-void
.end method

.method private native getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;
.end method

.method private native getQueryObj(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
