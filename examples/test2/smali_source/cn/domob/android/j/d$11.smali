.class Lcn/domob/android/j/d$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;)V
    .registers 2

    .prologue
    .line 394
    iput-object p1, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 398
    iget-object v0, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->i(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    invoke-static {v1}, Lcn/domob/android/j/d;->h(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    invoke-static {v1}, Lcn/domob/android/j/d;->i(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/d$11;->a:Lcn/domob/android/j/d;

    invoke-static {v2, v3, v3}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;ZZ)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 400
    return-void
.end method
