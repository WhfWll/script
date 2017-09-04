.class final Lcom/tencent/mm/sdk/diffdev/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/diffdev/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

.field public ax:Ljava/lang/String;

.field public ay:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e([B)Lcom/tencent/mm/sdk/diffdev/a/f$a;
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/diffdev/a/f$a;-><init>()V

    if-eqz p0, :cond_c

    array-length v1, p0

    if-nez v1, :cond_18

    :cond_c
    const-string v1, "MicroMsg.SDK.NoopingResult"

    const-string v2, "parse fail, buf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    :goto_17
    return-object v0

    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_66

    :try_start_1f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "wx_errcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ay:I

    const-string v1, "MicroMsg.SDK.NoopingResult"

    const-string v3, "nooping uuidStatusCode = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ay:I

    sparse-switch v1, :sswitch_data_a8

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_4d

    goto :goto_17

    :catch_4d
    move-exception v1

    const-string v2, "MicroMsg.SDK.NoopingResult"

    const-string v3, "parse json fail, ex = %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :catch_66
    move-exception v1

    const-string v2, "MicroMsg.SDK.NoopingResult"

    const-string v3, "parse fail, build String fail, ex = %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :sswitch_7f
    :try_start_7f
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    const-string v1, "wx_code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ax:Ljava/lang/String;

    goto :goto_17

    :sswitch_8c
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :sswitch_91
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :sswitch_96
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_Timeout:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto/16 :goto_17

    :sswitch_9c
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_Cancel:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto/16 :goto_17

    :sswitch_a2
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/f$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_a6} :catch_4d

    goto/16 :goto_17

    :sswitch_data_a8
    .sparse-switch
        0x192 -> :sswitch_96
        0x193 -> :sswitch_9c
        0x194 -> :sswitch_8c
        0x195 -> :sswitch_7f
        0x198 -> :sswitch_91
        0x1f4 -> :sswitch_a2
    .end sparse-switch
.end method
