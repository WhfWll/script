.class final Lcom/tencent/mm/sdk/diffdev/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/diffdev/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

.field public aq:Ljava/lang/String;

.field public ar:Ljava/lang/String;

.field public as:Ljava/lang/String;

.field public at:I

.field public au:Ljava/lang/String;

.field public av:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)Z
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1d
    .catchall {:try_start_1 .. :try_end_6} :catchall_35

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_44
    .catchall {:try_start_6 .. :try_end_c} :catchall_42

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_18

    :goto_f
    const-string v0, "MicroMsg.SDK.GetQRCodeResult"

    const-string v1, "writeToFile ok!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_17
    return v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_1d
    move-exception v0

    move-object v1, v2

    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "write to file error"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_42

    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    goto :goto_17

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catchall_35
    move-exception v0

    move-object v1, v2

    :goto_37
    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    throw v0

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catchall_42
    move-exception v0

    goto :goto_37

    :catch_44
    move-exception v0

    goto :goto_1f
.end method

.method public static d([B)Lcom/tencent/mm/sdk/diffdev/a/d$a;
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/diffdev/a/d$a;-><init>()V

    if-eqz p0, :cond_c

    array-length v1, p0

    if-nez v1, :cond_18

    :cond_c
    const-string v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "parse fail, buf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NetworkErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    :goto_17
    return-object v0

    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_69

    :try_start_1f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_82

    const-string v3, "MicroMsg.SDK.GetQRCodeResult"

    const-string v4, "resp errcode = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v3, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->at:I

    const-string v1, "errmsg"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->au:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4f} :catch_50

    goto :goto_17

    :catch_50
    move-exception v1

    const-string v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string v3, "parse json fail, ex = %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :catch_69
    move-exception v1

    const-string v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string v3, "parse fail, build String fail, ex = %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto :goto_17

    :cond_82
    :try_start_82
    const-string v1, "qrcode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "qrcodebase64"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a3

    :cond_96
    const-string v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "parse fail, qrcodeBase64 is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_JsonDecodeErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto/16 :goto_17

    :cond_a3
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_ad

    array-length v3, v1

    if-nez v3, :cond_ba

    :cond_ad
    const-string v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "parse fail, qrcodeBuf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_JsonDecodeErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto/16 :goto_17

    :cond_ba
    invoke-static {}, Lcom/tencent/mm/sdk/diffdev/a/d;->r()Z

    move-result v3

    if-eqz v3, :cond_134

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/sdk/diffdev/a/d;->s()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_d5
    invoke-static {}, Lcom/tencent/mm/sdk/diffdev/a/d;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/mm/sdk/diffdev/a/d$a;->a(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_fb

    const-string v2, "MicroMsg.SDK.GetQRCodeResult"

    const-string v3, "writeToFile fail, qrcodeBuf length = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    goto/16 :goto_17

    :cond_fb
    sget-object v1, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    invoke-static {}, Lcom/tencent/mm/sdk/diffdev/a/d;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->as:Ljava/lang/String;

    const-string v1, "uuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->aq:Ljava/lang/String;

    const-string v1, "appname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ar:Ljava/lang/String;

    const-string v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "parse succ, save in external storage, uuid = %s, appname = %s, imgPath = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->aq:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ar:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->as:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_134
    sget-object v3, Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v3, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ap:Lcom/tencent/mm/sdk/diffdev/OAuthErrCode;

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->av:[B

    const-string v1, "uuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->aq:Ljava/lang/String;

    const-string v1, "appname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ar:Ljava/lang/String;

    const-string v1, "MicroMsg.SDK.GetQRCodeResult"

    const-string v2, "parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->aq:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->ar:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/tencent/mm/sdk/diffdev/a/d$a;->av:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_16c} :catch_50

    goto/16 :goto_17
.end method
