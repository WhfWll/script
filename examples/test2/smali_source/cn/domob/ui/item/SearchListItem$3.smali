.class Lcn/domob/ui/item/SearchListItem$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/SearchListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/item/SearchListItem;


# direct methods
.method constructor <init>(Lcn/domob/ui/item/SearchListItem;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcn/domob/ui/item/SearchListItem$3;->a:Lcn/domob/ui/item/SearchListItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 341
    iget-object v0, p0, Lcn/domob/ui/item/SearchListItem$3;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/domob/ui/item/SearchListItem;->access$800(Lcn/domob/ui/item/SearchListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/item/SearchListItem$3;->a:Lcn/domob/ui/item/SearchListItem;

    # getter for: Lcn/domob/ui/item/SearchListItem;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/item/SearchListItem;->access$800(Lcn/domob/ui/item/SearchListItem;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "download_failed"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DString;->getStringInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    return-void
.end method
