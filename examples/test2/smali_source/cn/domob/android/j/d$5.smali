.class Lcn/domob/android/j/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 148
    iput-object p1, p0, Lcn/domob/android/j/d$5;->b:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$5;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcn/domob/android/j/d$5;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 152
    return-void
.end method
