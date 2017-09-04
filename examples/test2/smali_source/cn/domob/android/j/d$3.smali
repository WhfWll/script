.class Lcn/domob/android/j/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->a(Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 582
    iput-object p1, p0, Lcn/domob/android/j/d$3;->c:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$3;->a:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcn/domob/android/j/d$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 584
    iget-object v0, p0, Lcn/domob/android/j/d$3;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/domob/android/j/d$3;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 585
    iget-object v0, p0, Lcn/domob/android/j/d$3;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/j/d$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_f
    return-void
.end method
