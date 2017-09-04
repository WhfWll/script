.class Lcom/worklight/wlclient/api/WLPush$2;
.super Ljava/lang/Object;
.source "WLPush.java"

# interfaces
.implements Lcom/worklight/wlclient/api/WLResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/api/WLPush;->unsubscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLPush$2;

    const v1, 0x4d7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$2;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
.end method

.method public native onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
.end method
