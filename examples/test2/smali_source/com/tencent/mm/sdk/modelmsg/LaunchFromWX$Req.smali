.class public Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final MESSAGE_ACTION_LENGTH_LIMIT:I = 0x800

.field private static final MESSAGE_EXT_LENGTH_LIMIT:I = 0x800

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.LaunchFromWX.Req"


# instance fields
.field public country:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public messageAction:Ljava/lang/String;

.field public messageExt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/mm/sdk/modelbase/BaseReq;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 4

    const/16 v2, 0x800

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageAction:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_17

    const-string v1, "MicroMsg.SDK.LaunchFromWX.Req"

    const-string v2, "checkArgs fail, messageAction is too long"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2b

    const-string v1, "MicroMsg.SDK.LaunchFromWX.Req"

    const-string v2, "checkArgs fail, messageExt is too long"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_2b
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxobject_message_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageAction:Ljava/lang/String;

    const-string v0, "_wxobject_message_ext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    const-string v0, "_wxapi_launch_req_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->lang:Ljava/lang/String;

    const-string v0, "_wxapi_launch_req_country"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->country:Ljava/lang/String;

    return-void
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxobject_message_action"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxobject_message_ext"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_launch_req_lang"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_launch_req_country"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
