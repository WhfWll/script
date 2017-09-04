.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;

    const v1, 0x488

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 143
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
