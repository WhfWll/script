.class Lcn/domob/android/j/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->f()V
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
    .line 585
    iput-object p1, p0, Lcn/domob/android/j/a$14;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 588
    iget-object v0, p0, Lcn/domob/android/j/a$14;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->l(Lcn/domob/android/j/a;)V

    .line 589
    iget-object v0, p0, Lcn/domob/android/j/a$14;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/d;->b(Z)V

    .line 590
    iget-object v0, p0, Lcn/domob/android/j/a$14;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->y(Lcn/domob/android/j/a;)Lcn/domob/android/j/a$b;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 591
    iget-object v0, p0, Lcn/domob/android/j/a$14;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->y(Lcn/domob/android/j/a;)Lcn/domob/android/j/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/j/a$b;->b()V

    .line 593
    :cond_20
    return-void
.end method
