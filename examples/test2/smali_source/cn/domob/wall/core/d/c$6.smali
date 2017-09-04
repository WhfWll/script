.class Lcn/domob/wall/core/d/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/c;->d()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/c;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/c;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcn/domob/wall/core/d/c$6;->a:Lcn/domob/wall/core/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcn/domob/wall/core/d/c$6;->a:Lcn/domob/wall/core/d/c;

    invoke-static {v0}, Lcn/domob/wall/core/d/c;->b(Lcn/domob/wall/core/d/c;)V

    .line 229
    iget-object v0, p0, Lcn/domob/wall/core/d/c$6;->a:Lcn/domob/wall/core/d/c;

    invoke-static {v0}, Lcn/domob/wall/core/d/c;->a(Lcn/domob/wall/core/d/c;)Lcn/domob/wall/core/d/c$a;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 230
    iget-object v0, p0, Lcn/domob/wall/core/d/c$6;->a:Lcn/domob/wall/core/d/c;

    invoke-static {v0}, Lcn/domob/wall/core/d/c;->a(Lcn/domob/wall/core/d/c;)Lcn/domob/wall/core/d/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/wall/core/d/c$a;->d()V

    .line 232
    :cond_16
    return-void
.end method
