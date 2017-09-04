.class Lcn/domob/android/j/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->a(Lcn/domob/android/j/b$a$a$a;II)Lcn/domob/android/j/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/d$a;

.field final synthetic b:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Lcn/domob/android/j/d$a;)V
    .registers 3

    .prologue
    .line 450
    iput-object p1, p0, Lcn/domob/android/j/d$2;->b:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$2;->a:Lcn/domob/android/j/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    .line 454
    iget-object v0, p0, Lcn/domob/android/j/d$2;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$2;->a:Lcn/domob/android/j/d$a;

    invoke-static {v0, v1, v2, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Lcn/domob/android/j/d$a;ZZ)V

    .line 461
    :cond_f
    :goto_f
    return v3

    .line 455
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 456
    iget-object v0, p0, Lcn/domob/android/j/d$2;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$2;->a:Lcn/domob/android/j/d$a;

    invoke-static {v0, v1, v3, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Lcn/domob/android/j/d$a;ZZ)V

    .line 457
    iget-object v0, p0, Lcn/domob/android/j/d$2;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 458
    iget-object v0, p0, Lcn/domob/android/j/d$2;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/j/d$2;->a:Lcn/domob/android/j/d$a;

    invoke-static {v1}, Lcn/domob/android/j/d$a;->a(Lcn/domob/android/j/d$a;)Lcn/domob/android/j/b$a$a$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/j/d$b;->a(Lcn/domob/android/j/b$a$a$a;)V

    goto :goto_f
.end method
