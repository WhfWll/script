.class Lcn/domob/android/j/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->E()V
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
    .line 623
    iput-object p1, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 627
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->z(Lcn/domob/android/j/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 628
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->s(Lcn/domob/android/j/a;)I

    .line 629
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->A(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->z(Lcn/domob/android/j/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 631
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 632
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->B(Lcn/domob/android/j/a;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v2}, Lcn/domob/android/j/a;->C(Lcn/domob/android/j/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;II)V

    .line 633
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->D(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 634
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->D(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 635
    iget-object v0, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    iget-object v1, p0, Lcn/domob/android/j/a$2;->a:Lcn/domob/android/j/a;

    invoke-static {v1}, Lcn/domob/android/j/a;->A(Lcn/domob/android/j/a;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/j/a;->addView(Landroid/view/View;)V

    .line 637
    :cond_54
    return-void
.end method
