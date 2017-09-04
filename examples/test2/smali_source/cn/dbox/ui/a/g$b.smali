.class Lcn/dbox/ui/a/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a/g;

.field private b:I


# direct methods
.method public constructor <init>(Lcn/dbox/ui/a/g;I)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcn/dbox/ui/a/g$b;->a:Lcn/dbox/ui/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p2, p0, Lcn/dbox/ui/a/g$b;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/dbox/ui/a/g$b;->a:Lcn/dbox/ui/a/g;

    invoke-static {v0}, Lcn/dbox/ui/a/g;->a(Lcn/dbox/ui/a/g;)Lcn/dbox/ui/a/g$a;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 31
    iget-object v0, p0, Lcn/dbox/ui/a/g$b;->a:Lcn/dbox/ui/a/g;

    invoke-static {v0}, Lcn/dbox/ui/a/g;->a(Lcn/dbox/ui/a/g;)Lcn/dbox/ui/a/g$a;

    move-result-object v0

    iget v1, p0, Lcn/dbox/ui/a/g$b;->b:I

    iget-object v2, p0, Lcn/dbox/ui/a/g$b;->a:Lcn/dbox/ui/a/g;

    iget v3, p0, Lcn/dbox/ui/a/g$b;->b:I

    invoke-virtual {v2, v3}, Lcn/dbox/ui/a/g;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v0, p1, v1, v2, v3}, Lcn/dbox/ui/a/g$a;->a(Landroid/view/View;IJ)V

    .line 34
    :cond_1b
    return-void
.end method
