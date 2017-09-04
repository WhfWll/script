.class final Lcom/tencent/mm/sdk/openapi/WXApiImplV10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/sdk/openapi/WXApiImplV10$1;,
        Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"

.field private static activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

.field private static wxappPayEntryClassname:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private checkSignature:Z

.field private context:Landroid/content/Context;

.field private detached:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checkSignature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;
    .registers 1

    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    return-object v0
.end method

.method private checkSumConsistent([B[B)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    array-length v0, p1

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    array-length v0, p2

    if-nez v0, :cond_13

    :cond_b
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checkSumConsistent fail, invalid arguments"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return v1

    :cond_13
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1f

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checkSumConsistent fail, length is different"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1f
    move v0, v1

    :goto_20
    array-length v2, p1

    if-ge v0, v2, :cond_2c

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2c
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/createChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_create_chatroom_group_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_create_chatroom_chatroom_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_create_chatroom_chatroom_nickname"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_create_chatroom_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4b
    return v6
.end method

.method private initMta(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AWXOP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/wxop/stat/StatConfig;->setAppKey(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/wxop/stat/StatConfig;->setEnableSmartReporting(Z)V

    sget-object v1, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {v1}, Lcom/tencent/wxop/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/wxop/stat/StatReportStrategy;)V

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/tencent/wxop/stat/StatConfig;->setSendPeriodMinutes(I)V

    const-string v1, "Wechat_Sdk"

    invoke-static {p1, v1}, Lcom/tencent/wxop/stat/StatConfig;->setInstallChannel(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_25
    const-string v1, "2.0.3"

    invoke-static {p1, v0, v1}, Lcom/tencent/wxop/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2a
    .catch Lcom/tencent/wxop/stat/MtaSDkException; {:try_start_25 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/MtaSDkException;->printStackTrace()V

    goto :goto_2a
.end method

.method private joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/joinChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_join_chatroom_group_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_join_chatroom_chatroom_nickname"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_join_chatroom_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_42
    return v6
.end method

.method private sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/addCardToWX"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_30
    return v6
.end method

.method private sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_profile_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_profile_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_profile_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_profile_req_profile_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5c
    return v7
.end method

.method private sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_webview_req_session_from"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_webview_req_show_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_46
    return v7
.end method

.method private sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 11

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string v5, "_wxapi_jump_to_biz_webview_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_wxapi_jump_to_biz_webview_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_46
    return v7
.end method

.method private sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_open_busi_lucky_money_timeStamp"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_open_busi_lucky_money_nonceStr"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_wxapi_open_busi_lucky_money_signType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "_wxapi_open_busi_lucky_money_signature"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string v5, "_wxapi_open_busi_lucky_money_package"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4b
    return v6
.end method

.method private sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openRankList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method private sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.tencent.mm.sdk.comm.provider/openWebview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "_wxapi_jump_to_webview_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_30
    return v6
.end method

.method private sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 6

    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_35

    new-instance v0, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;

    invoke-direct {v0, p1}, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;-><init>(Landroid/content/Context;)V

    const-string v1, "_wxapp_pay_entry_classname_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay, set wxappPayEntryClassname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_35

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "pay fail, wxappPayEntryClassname is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_34
    return v0

    :cond_35
    new-instance v0, Lcom/tencent/mm/sdk/a/a$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V

    iput-object p2, v0, Lcom/tencent/mm/sdk/a/a$a;->Z:Landroid/os/Bundle;

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a$a;->W:Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->wxappPayEntryClassname:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a$a;->X:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z

    move-result v0

    goto :goto_34
.end method


# virtual methods
.method public final detach()V
    .registers 3

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    if-eqz v0, :cond_2c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_27
    :goto_27
    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;->detach()V

    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    return-void

    :cond_30
    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_27
.end method

.method public final getWXAppSupportAPI()I
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return v0

    :cond_1b
    new-instance v1, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;-><init>(Landroid/content/Context;)V

    const-string v2, "_build_info_sdk_int_"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/sdk/openapi/MMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1a
.end method

.method public final handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "com.tencent.mm.openapi.token"

    invoke-static {p1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    const-string v3, "handleIntent fail, intent not from weixin msg"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return v0

    :cond_12
    iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "handleIntent fail, WXMsgImpl has been detached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v2

    const-string v3, "MicroMsg.SDK.WXApiImplV10"

    const-string v4, "handleIntent fail, ex = %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/sdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_2f
    :try_start_2f
    const-string v2, "_mmessage_content"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_mmessage_sdkVersion"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "_mmessage_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_52

    :cond_4a
    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    const-string v3, "invalid argument"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_52
    const-string v5, "_mmessage_checksum"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/a/a/b;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSumConsistent([B[B)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    const-string v3, "checksum fail"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_6a
    const-string v2, "_wxapi_command_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_120

    :pswitch_74
    const-string v3, "MicroMsg.SDK.WXApiImplV10"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown cmd = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_89
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_98
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_a7
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelmsg/GetMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_b6
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_c5
    new-instance v2, Lcom/tencent/mm/sdk/modelpay/PayResp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelpay/PayResp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_d4
    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_e3
    new-instance v2, Lcom/tencent/mm/sdk/modelbiz/AddCardToWXCardPackage$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelbiz/AddCardToWXCardPackage$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_f2
    new-instance v2, Lcom/tencent/mm/sdk/modelbiz/CreateChatroom$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelbiz/CreateChatroom$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_101
    new-instance v2, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelbiz/JoinChatroom$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    move v0, v1

    goto/16 :goto_11

    :pswitch_110
    new-instance v2, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Resp;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Resp;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;->onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_11c} :catch_1e

    move v0, v1

    goto/16 :goto_11

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_89
        :pswitch_98
        :pswitch_a7
        :pswitch_b6
        :pswitch_c5
        :pswitch_d4
        :pswitch_74
        :pswitch_74
        :pswitch_e3
        :pswitch_74
        :pswitch_74
        :pswitch_110
        :pswitch_74
        :pswitch_f2
        :pswitch_101
    .end packed-switch
.end method

.method public final isWXAppInstalled()Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isWXAppInstalled fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1e

    :goto_1d
    return v0

    :cond_1e
    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_27} :catch_29

    move-result v0

    goto :goto_1d

    :catch_29
    move-exception v1

    goto :goto_1d
.end method

.method public final isWXAppSupportAPI()Z
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x23010001

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final openWXApp()Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "openWXApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return v0

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_2e

    const/4 v0, 0x1

    goto :goto_1a

    :catch_2e
    move-exception v1

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startActivity fail, exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public final registerApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "registerApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "register app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    sget-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    if-nez v0, :cond_4d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4d

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->initMta(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/WXApiImplV10$1;)V

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_4d
    :goto_4d
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_65

    iput-object p1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    :cond_65
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/sdk/a/a/a$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a/a$a;-><init>()V

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->aa:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->ab:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://registerapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->Y:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/a/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z

    move-result v0

    goto/16 :goto_21

    :cond_a7
    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Service;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->initMta(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/WXApiImplV10$1;)V

    sput-object v0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->activityCb:Lcom/tencent/mm/sdk/openapi/WXApiImplV10$ActivityLifecycleCb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_4d

    :cond_c9
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "context is not instanceof Activity or Service, disable WXStat"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d
.end method

.method public final sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendReq fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq failed for wechat app signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return v0

    :cond_21
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq checkArgs fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_2f
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendReq, req type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5d

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_20

    :cond_5d
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6b

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_20

    :cond_6b
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7a

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_20

    :cond_7a
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_89

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_20

    :cond_89
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_98

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_20

    :cond_98
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a8

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_20

    :cond_a8
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_b8

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_20

    :cond_b8
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c8

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_20

    :cond_c8
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_d8

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_20

    :cond_d8
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_e8

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_20

    :cond_e8
    new-instance v1, Lcom/tencent/mm/sdk/a/a$a;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->Z:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "weixin://sendreq?appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->Y:Ljava/lang/String;

    const-string v0, "com.tencent.mm"

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->W:Ljava/lang/String;

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z

    move-result v0

    goto/16 :goto_20
.end method

.method public final sendResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v1, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sendResp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    iget-boolean v3, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendResp failed for wechat app signature check failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return v0

    :cond_21
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendResp checkArgs fail"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_2f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->toBundle(Landroid/os/Bundle;)V

    new-instance v1, Lcom/tencent/mm/sdk/a/a$a;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/a/a$a;-><init>()V

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->Z:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "weixin://sendresp?appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->Y:Ljava/lang/String;

    const-string v0, "com.tencent.mm"

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->W:Ljava/lang/String;

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v0, v1, Lcom/tencent/mm/sdk/a/a$a;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a$a;)Z

    move-result v0

    goto :goto_20
.end method

.method public final unregisterApp()V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->detached:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unregisterApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/openapi/WXApiImplComm;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "unregister app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    :cond_42
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "unregisterApp fail, appId is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_4a
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/sdk/a/a/a$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/a/a/a$a;-><init>()V

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->aa:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->ab:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://unregisterapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/a/a/a$a;->Y:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/sdk/openapi/WXApiImplV10;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/a/a/a;->a(Landroid/content/Context;Lcom/tencent/mm/sdk/a/a/a$a;)Z

    goto :goto_1f
.end method
