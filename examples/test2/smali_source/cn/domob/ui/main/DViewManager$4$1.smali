.class Lcn/domob/ui/main/DViewManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager$4;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager$4;)V
    .registers 2

    .prologue
    .line 391
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$4$1;->a:Lcn/domob/ui/main/DViewManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 395
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$4$1;->a:Lcn/domob/ui/main/DViewManager$4;

    iget-object v0, v0, Lcn/domob/ui/main/DViewManager$4;->a:Lcn/domob/ui/main/DViewManager;

    # getter for: Lcn/domob/ui/main/DViewManager;->home:Lcn/domob/ui/main/Home;
    invoke-static {v0}, Lcn/domob/ui/main/DViewManager;->access$1000(Lcn/domob/ui/main/DViewManager;)Lcn/domob/ui/main/Home;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/main/Home;->refreshDownloadingCount()V

    .line 396
    return-void
.end method
