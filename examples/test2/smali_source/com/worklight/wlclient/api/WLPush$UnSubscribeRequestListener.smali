.class Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;
.super Ljava/lang/Object;
.source "WLPush.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnSubscribeRequestListener"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;

    const v1, 0x4dd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V
    .registers 3
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->alias:Ljava/lang/String;

    .line 658
    return-void
.end method


# virtual methods
.method public native onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
.end method

.method public native onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
.end method
