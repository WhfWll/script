.class Lcn/domob/android/j/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/SpannableStringBuilder;

.field final synthetic b:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Landroid/text/SpannableStringBuilder;)V
    .registers 3

    .prologue
    .line 178
    iput-object p1, p0, Lcn/domob/android/j/d$7;->b:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$7;->a:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcn/domob/android/j/d$7;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->b(Lcn/domob/android/j/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/j/d$7;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcn/domob/android/j/d$7;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->b(Lcn/domob/android/j/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 183
    iget-object v0, p0, Lcn/domob/android/j/d$7;->b:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->b(Lcn/domob/android/j/d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :cond_21
    return-void
.end method
