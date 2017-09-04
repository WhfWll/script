.class Lcn/domob/ui/main/DViewManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/main/DViewManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/main/DViewManager$1;


# direct methods
.method constructor <init>(Lcn/domob/ui/main/DViewManager$1;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcn/domob/ui/main/DViewManager$1$1;->a:Lcn/domob/ui/main/DViewManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    # getter for: Lcn/domob/ui/main/DViewManager;->mLogger:Lcn/domob/ui/main/Logger;
    invoke-static {}, Lcn/domob/ui/main/DViewManager;->access$200()Lcn/domob/ui/main/Logger;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u628a\u624b"

    invoke-virtual {v0, v1}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcn/domob/ui/main/DViewManager$1$1;->a:Lcn/domob/ui/main/DViewManager$1;

    iget-object v0, v0, Lcn/domob/ui/main/DViewManager$1;->a:Lcn/domob/ui/main/DViewManager;

    invoke-virtual {v0}, Lcn/domob/ui/main/DViewManager;->showWall()V

    .line 265
    return-void
.end method
