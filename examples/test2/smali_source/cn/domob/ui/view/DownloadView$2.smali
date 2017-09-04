.class Lcn/domob/ui/view/DownloadView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/view/DownloadView;->getDownloadView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/view/DownloadView;


# direct methods
.method constructor <init>(Lcn/domob/ui/view/DownloadView;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcn/domob/ui/view/DownloadView$2;->a:Lcn/domob/ui/view/DownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 7
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupchildPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method
