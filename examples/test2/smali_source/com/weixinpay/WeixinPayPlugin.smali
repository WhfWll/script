.class public Lcom/weixinpay/WeixinPayPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WeixinPayPlugin.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mCallbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "wxpay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v0, "prepayId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "payId":Ljava/lang/String;
    const-string v0, "sign"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "sign":Ljava/lang/String;
    const-string v0, "nonceStr"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "nonceStr":Ljava/lang/String;
    const-string v0, "appId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "appId":Ljava/lang/String;
    const-string v0, "partnerId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "partnerId":Ljava/lang/String;
    const-string v0, "timestamp"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "timestamp":Ljava/lang/String;
    invoke-static {}, Lcom/MobileTicket/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/weixinpay/WeixinPayPlugin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 42
    iget-object v0, p0, Lcom/weixinpay/WeixinPayPlugin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 43
    iput-object p3, p0, Lcom/weixinpay/WeixinPayPlugin;->mCallbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 44
    const-string v0, "MobileTicket"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "payWXstart,args="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/weixinpay/WeixinPayPlugin;->gotoPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v1    # "payId":Ljava/lang/String;
    .end local v2    # "sign":Ljava/lang/String;
    .end local v3    # "nonceStr":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "partnerId":Ljava/lang/String;
    .end local v6    # "timestamp":Ljava/lang/String;
    .end local v7    # "obj":Lorg/json/JSONObject;
    :cond_5f
    const/4 v0, 0x1

    return v0
.end method

.method public gotoPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "prepayId"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "nonceStr"    # Ljava/lang/String;
    .param p4, "app_id"    # Ljava/lang/String;
    .param p5, "partnerId"    # Ljava/lang/String;
    .param p6, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    .line 54
    .local v0, "request":Lcom/tencent/mm/sdk/modelpay/PayReq;
    iput-object p4, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    .line 55
    iput-object p5, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    .line 56
    iput-object p1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    .line 57
    const-string v1, "Sign=WXPay"

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    .line 58
    iput-object p3, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    .line 59
    iput-object p6, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    .line 60
    iput-object p2, v0, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/weixinpay/WeixinPayPlugin;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    .line 62
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .registers 2
    .param p1, "arg0"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 83
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .registers 5
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 67
    const-string v0, "MobileTicket"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "payWXfinish,errorcode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_26

    .line 69
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_27

    .line 70
    const-string v0, "payOk"

    invoke-virtual {p0, v0}, Lcom/weixinpay/WeixinPayPlugin;->sendCmd(Ljava/lang/String;)V

    .line 77
    :cond_26
    :goto_26
    return-void

    .line 71
    :cond_27
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_32

    .line 72
    const-string v0, "payCancel"

    invoke-virtual {p0, v0}, Lcom/weixinpay/WeixinPayPlugin;->sendCmd(Ljava/lang/String;)V

    goto :goto_26

    .line 74
    :cond_32
    const-string v0, "payFail"

    invoke-virtual {p0, v0}, Lcom/weixinpay/WeixinPayPlugin;->sendCmd(Ljava/lang/String;)V

    goto :goto_26
.end method

.method public sendCmd(Ljava/lang/String;)V
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/weixinpay/WeixinPayPlugin;->mCallbackContext:Lorg/apache/cordova/api/CallbackContext;

    if-eqz v1, :cond_14

    .line 88
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 89
    .local v0, "dataResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 90
    iget-object v1, p0, Lcom/weixinpay/WeixinPayPlugin;->mCallbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 92
    .end local v0    # "dataResult":Lorg/apache/cordova/api/PluginResult;
    :cond_14
    return-void
.end method
