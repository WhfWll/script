.class public Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final MAX_SESSION_FROM_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.JumpToBizTempSession.Req"


# instance fields
.field public sessionFrom:Ljava/lang/String;

.field public showType:I

.field public toUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_15

    :cond_d
    const-string v1, "MicroMsg.SDK.JumpToBizTempSession.Req"

    const-string v2, "checkArgs fail, toUserName is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_2b

    :cond_23
    const-string v1, "MicroMsg.SDK.JumpToBizTempSession.Req"

    const-string v2, "checkArgs fail, sessionFrom is invalid"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_2b
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_to_user_name"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->toUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_session_from"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->sessionFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_jump_to_biz_webview_req_show_type"

    iget v1, p0, Lcom/tencent/mm/sdk/modelbiz/JumpToBizTempSession$Req;->showType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
