.class public Lcom/tencent/mm/sdk/modelpay/PayReq;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/modelpay/PayReq$Options;
    }
.end annotation


# static fields
.field private static final EXTDATA_MAX_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "MicroMsg.PaySdk.PayReq"


# instance fields
.field public appId:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public signType:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


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

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    :cond_d
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid appId"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_29

    :cond_21
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid partnerId"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_29
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3d

    :cond_35
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid prepayId"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_3d
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_51

    :cond_49
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid nonceStr"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_51
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_65

    :cond_5d
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid timeStamp"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_65
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_79

    :cond_71
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid packageValue"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_79
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8d

    :cond_85
    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, invalid sign"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_8d
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_a4

    const-string v1, "MicroMsg.PaySdk.PayReq"

    const-string v2, "checkArgs fail, extData length too long"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_a4
    const/4 v0, 0x1

    goto/16 :goto_14
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_payreq_appid"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_partnerid"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_prepayid"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_noncestr"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_timestamp"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_packagevalue"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_sign"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_extdata"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    const-string v0, "_wxapi_payreq_sign_type"

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/b/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->signType:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_payreq_appid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_partnerid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_prepayid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_noncestr"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_timestamp"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_packagevalue"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_sign"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_extdata"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_payreq_sign_type"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->signType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/tencent/mm/sdk/modelpay/PayReq;->options:Lcom/tencent/mm/sdk/modelpay/PayReq$Options;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/sdk/modelpay/PayReq$Options;->toBundle(Landroid/os/Bundle;)V

    :cond_4b
    return-void
.end method
