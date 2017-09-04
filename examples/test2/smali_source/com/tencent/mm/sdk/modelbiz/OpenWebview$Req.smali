.class public Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Req;
.super Lcom/tencent/mm/sdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/sdk/modelbiz/OpenWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final MAX_URL_LENGHT:I = 0x2800


# instance fields
.field public url:Ljava/lang/String;


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

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Req;->url:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Req;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Req;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xc

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_jump_to_webview_url"

    iget-object v1, p0, Lcom/tencent/mm/sdk/modelbiz/OpenWebview$Req;->url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
