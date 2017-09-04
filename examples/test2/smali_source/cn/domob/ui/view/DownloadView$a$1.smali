.class Lcn/domob/ui/view/DownloadView$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/DownloadView$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView$a;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DownloadView$a;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0x8

    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    # getter for: Lcn/domob/ui/view/DownloadView;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/view/DownloadView;->access$100()Lcn/domob/ui/main/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmdialog clicked, groupPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v2}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v0}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ef

    .line 237
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->b(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/DownLoadListItem;

    .line 238
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$800(Lcn/domob/ui/view/DownloadView;)Lcn/dm/download/DownLoadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/domob/ui/item/DownLoadListItem;->getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dm/download/DownLoadManager;->excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 239
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$900(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$900(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_98

    .line 241
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1000(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    :cond_98
    :goto_98
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    if-eqz v0, :cond_bd

    .line 264
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->vsOperations:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView;->viewStub:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->viewStubMap:Ljava/util/Map;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$300(Lcn/domob/ui/view/DownloadView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 268
    :cond_bd
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1000(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->setGroupList(Ljava/util/ArrayList;)V

    .line 269
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->setChildList(Ljava/util/ArrayList;)V

    .line 270
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->notifyDataSetChanged()V

    .line 271
    return-void

    .line 245
    :cond_ef
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v0}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v0

    if-nez v0, :cond_98

    .line 246
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->b(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/DownLoadListItem;

    .line 247
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v2}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 248
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$800(Lcn/domob/ui/view/DownloadView;)Lcn/dm/download/DownLoadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/domob/ui/item/DownLoadListItem;->getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dm/download/DownLoadManager;->excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 249
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1200(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadingItemList:Ljava/util/List;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1200(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_98

    .line 251
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1000(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_98

    .line 254
    :cond_187
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v2}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 255
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDownLoadManager:Lcn/dm/download/DownLoadManager;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$800(Lcn/domob/ui/view/DownloadView;)Lcn/dm/download/DownLoadManager;

    move-result-object v1

    invoke-virtual {v0}, Lcn/domob/ui/item/DownLoadListItem;->getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/dm/download/DownLoadManager;->excuteDelete(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 256
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v1, v1, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$900(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->downloadedItemList:Ljava/util/List;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$900(Lcn/domob/ui/view/DownloadView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_98

    .line 258
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->groupList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1000(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    iget-object v0, v0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->childList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$700(Lcn/domob/ui/view/DownloadView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a$1;->a:Lcn/domob/ui/view/DownloadView$a;

    invoke-static {v1}, Lcn/domob/ui/view/DownloadView$a;->a(Lcn/domob/ui/view/DownloadView$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_98
.end method
