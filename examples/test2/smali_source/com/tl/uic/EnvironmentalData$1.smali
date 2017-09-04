.class Lcom/tl/uic/EnvironmentalData$1;
.super Ljava/util/TimerTask;
.source "EnvironmentalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/EnvironmentalData;->setupClientStateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/EnvironmentalData;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/EnvironmentalData$1;

    const v1, 0x3fc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/EnvironmentalData;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/EnvironmentalData$1;->this$0:Lcom/tl/uic/EnvironmentalData;

    iput-object p2, p0, Lcom/tl/uic/EnvironmentalData$1;->val$handler:Landroid/os/Handler;

    .line 625
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
