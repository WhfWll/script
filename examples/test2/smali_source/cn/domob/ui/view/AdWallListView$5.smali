.class Lcn/domob/ui/view/AdWallListView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/AdWallListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/AdWallListView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/AdWallListView;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcn/domob/ui/view/AdWallListView$5;->a:Lcn/domob/ui/view/AdWallListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcn/domob/ui/view/AdWallListView$5;->a:Lcn/domob/ui/view/AdWallListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/ui/view/AdWallListView;->setSelection(I)V

    .line 227
    return-void
.end method
