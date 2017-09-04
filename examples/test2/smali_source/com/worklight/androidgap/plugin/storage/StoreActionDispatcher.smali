.class public Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "StoreActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
    }
.end annotation


# static fields
.field private static final OPTION_ADD_INDEXES:Ljava/lang/String; = "additionalSearchFields"

.field private static final OPTION_IS_ADD:Ljava/lang/String; = "isAdd"

.field private static final OPTION_IS_ARRAY:Ljava/lang/String; = "isArray"

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    const v1, 0x49b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-string v0, "store"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "data"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 43
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 45
    return-void
.end method

.method private native getData(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
.end method

.method private native getOptions(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONObject;
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
