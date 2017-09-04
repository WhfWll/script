.class Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
.super Ljava/lang/Object;
.source "BaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parameter"
.end annotation


# instance fields
.field private loggable:Z

.field private name:Ljava/lang/String;

.field private required:Z

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;

.field private types:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;

    const v1, 0x481

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V
    .registers 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "loggable"    # Z
    .param p5, "types"    # [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->this$0:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->name:Ljava/lang/String;

    .line 236
    iput-boolean p3, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->required:Z

    .line 237
    iput-boolean p4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->loggable:Z

    .line 238
    iput-object p5, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->types:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .param p6, "x5"    # Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;

    .prologue
    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    return-void
.end method


# virtual methods
.method public native getName()Ljava/lang/String;
.end method

.method public native getTypes()[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
.end method

.method public native isLoggable()Z
.end method

.method public native isRequired()Z
.end method
