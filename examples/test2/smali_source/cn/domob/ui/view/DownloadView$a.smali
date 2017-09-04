.class Lcn/domob/ui/view/DownloadView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/DownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView;

.field private b:I

.field private c:I

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcn/domob/ui/view/DownloadView;II)V
    .registers 4

    .prologue
    .line 214
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p2, p0, Lcn/domob/ui/view/DownloadView$a;->b:I

    .line 216
    iput p3, p0, Lcn/domob/ui/view/DownloadView$a;->c:I

    .line 217
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/view/DownloadView$a;)I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcn/domob/ui/view/DownloadView$a;->b:I

    return v0
.end method

.method static synthetic b(Lcn/domob/ui/view/DownloadView$a;)I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcn/domob/ui/view/DownloadView$a;->c:I

    return v0
.end method

.method static synthetic c(Lcn/domob/ui/view/DownloadView$a;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "rl_menu_delete"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_42

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const-string v1, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6761\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcn/domob/ui/view/DownloadView$a$1;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/DownloadView$a$1;-><init>(Lcn/domob/ui/view/DownloadView$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    :cond_41
    :goto_41
    return-void

    .line 277
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "rl_menu_detail"

    invoke-static {v1, v2}, Lcn/domob/ui/utility/DId;->getIdInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_41

    .line 278
    iget-object v0, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->adapter:Lcn/domob/ui/adapter/DownloadManagerListAdapter;
    invoke-static {v0}, Lcn/domob/ui/view/DownloadView;->access$1100(Lcn/domob/ui/view/DownloadView;)Lcn/domob/ui/adapter/DownloadManagerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/adapter/DownloadManagerListAdapter;->getChildList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcn/domob/ui/view/DownloadView$a;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lcn/domob/ui/view/DownloadView$a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/item/DownLoadListItem;

    invoke-virtual {v0}, Lcn/domob/ui/item/DownLoadListItem;->getDownloadAppInfo()Lcn/dm/download/bean/DownloadAppInfo;

    move-result-object v0

    .line 280
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcn/domob/ui/view/DownloadView;->access$200(Lcn/domob/ui/view/DownloadView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->d:Landroid/app/ProgressDialog;

    .line 281
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->d:Landroid/app/ProgressDialog;

    const-string v2, "\u6570\u636e\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 283
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1400(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/DService;

    move-result-object v1

    new-instance v2, Lcn/domob/ui/view/DownloadView$a$2;

    invoke-direct {v2, p0}, Lcn/domob/ui/view/DownloadView$a$2;-><init>(Lcn/domob/ui/view/DownloadView$a;)V

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/DService;->setReceiveDetailsDataListener(Lcn/domob/wall/core/DService$ReceiveDetailsDataListener;)V

    .line 310
    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcn/domob/ui/view/DownloadView$a;->a:Lcn/domob/ui/view/DownloadView;

    # getter for: Lcn/domob/ui/view/DownloadView;->mDService:Lcn/domob/wall/core/DService;
    invoke-static {v1}, Lcn/domob/ui/view/DownloadView;->access$1400(Lcn/domob/ui/view/DownloadView;)Lcn/domob/wall/core/DService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/DService;->requestDetailsDataAsyn(Ljava/lang/String;)V

    goto :goto_41
.end method
