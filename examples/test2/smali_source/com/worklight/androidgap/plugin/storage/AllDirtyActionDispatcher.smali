.class public Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "AllDirtyActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;
    }
.end annotation


# static fields
.field private static final PARAM_SELECTED_DOCS:Ljava/lang/String; = "selectedDocs"

.field private static final SQL_ALL_DIRTY:Ljava/lang/String; = "SELECT {0}, {1}, {2}, {3} FROM {4} WHERE {3} > 0 ORDER BY {3}"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;

    const v1, 0x47f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string v0, "allDirty"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "selectedDocs"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 48
    return-void
.end method

.method private native getSelectedDocs(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
.end method


# virtual methods
.method public native dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
