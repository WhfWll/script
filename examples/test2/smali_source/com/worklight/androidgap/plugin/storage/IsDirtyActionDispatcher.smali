.class public Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.source "IsDirtyActionDispatcher.java"


# static fields
.field private static final PARAM_OBJ:Ljava/lang/String; = "obj"

.field private static final SQL_IS_DIRTY:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {0} > 0 AND _id = {2}"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;

    const v1, 0x48f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 26
    const-string v0, "isDirty"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, "obj"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 32
    return-void
.end method

.method private native getId(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method


# virtual methods
.method protected native getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected native getModifiedResultValue(I)I
.end method

.method protected native getNotFoundResultValue()I
.end method

.method protected native logResult(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
