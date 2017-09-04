.class Lcn/domob/ui/view/SearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/SearchView;->getSearchView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/SearchView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/SearchView;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$3;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$3;->a:Lcn/domob/ui/view/SearchView;

    # getter for: Lcn/domob/ui/view/SearchView;->mSearchDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcn/domob/ui/view/SearchView;->access$600(Lcn/domob/ui/view/SearchView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 178
    return-void
.end method
