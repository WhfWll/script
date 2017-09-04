.class Lcn/domob/ui/view/SearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/ui/view/SearchView$EditextChangeZeroListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/view/SearchView;
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
    .line 284
    iput-object p1, p0, Lcn/domob/ui/view/SearchView$6;->a:Lcn/domob/ui/view/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textChange()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcn/domob/ui/view/SearchView$6;->a:Lcn/domob/ui/view/SearchView;

    const/4 v1, 0x2

    # invokes: Lcn/domob/ui/view/SearchView;->changeSurface(I)V
    invoke-static {v0, v1}, Lcn/domob/ui/view/SearchView;->access$000(Lcn/domob/ui/view/SearchView;I)V

    .line 288
    return-void
.end method
