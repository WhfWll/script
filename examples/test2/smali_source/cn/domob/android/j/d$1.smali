.class Lcn/domob/android/j/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->a(Z)Landroid/widget/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;)V
    .registers 3

    .prologue
    .line 137
    iput-object p1, p0, Lcn/domob/android/j/d$1;->b:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$1;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/domob/android/j/d$1;->b:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$1;->a:Landroid/widget/ImageButton;

    const-string v2, "domob_video_close_not_selected.png"

    invoke-static {v0, v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcn/domob/android/j/d$1;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 143
    iget-object v0, p0, Lcn/domob/android/j/d$1;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/j/d$b;->h()V

    .line 145
    :cond_1a
    return-void
.end method
