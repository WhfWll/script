.class Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;
.super Ljava/util/TimerTask;
.source "WLClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartBeatTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;

    const v1, 0x4ca

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLClient;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->context:Landroid/content/Context;

    .line 451
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->context:Landroid/content/Context;

    .line 452
    return-void
.end method


# virtual methods
.method public native run()V
.end method
