.class Lcom/worklight/wlclient/api/WLClient$1;
.super Ljava/lang/Object;
.source "WLClient.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/api/WLClient;->checkForNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLClient$1;

    const v1, 0x4c9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLClient;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$1;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
.end method

.method public native onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
.end method
