.class Lcn/domob/android/j/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->I()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 703
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->k(Lcn/domob/android/j/a;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 704
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->l(Lcn/domob/android/j/a;)V

    .line 706
    :cond_d
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->A(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 707
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->F(Lcn/domob/android/j/a;)Lcn/domob/android/j/e;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->E(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->F(Lcn/domob/android/j/a;)Lcn/domob/android/j/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->m(Lcn/domob/android/j/a;)Lcn/domob/android/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/b;->e()Lcn/domob/android/j/b$a;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->f()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 711
    iget-object v1, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    iget-object v2, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/j/d;->b()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;Landroid/view/View;)V

    .line 713
    :cond_4f
    invoke-virtual {v0}, Lcn/domob/android/j/b$a;->h()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 714
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/domob/android/j/d;->a(Z)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;Landroid/view/View;)V

    .line 716
    :cond_65
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->t(Lcn/domob/android/j/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 717
    iget-object v0, p0, Lcn/domob/android/j/a$3;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->t(Lcn/domob/android/j/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 719
    :cond_76
    return-void
.end method
