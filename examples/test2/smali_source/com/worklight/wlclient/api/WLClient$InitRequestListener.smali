.class Lcom/worklight/wlclient/api/WLClient$InitRequestListener;
.super Ljava/lang/Object;
.source "WLClient.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;

    const v1, 0x4cc

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLClient;)V
    .registers 2

    .prologue
    .line 698
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    return-void
.end method


# virtual methods
.method public native onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
.end method

.method public native onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
.end method
