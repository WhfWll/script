.class Lcn/domob/android/j/d$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->a(ZZ)Landroid/widget/RelativeLayout;
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
    .line 428
    iput-object p1, p0, Lcn/domob/android/j/d$12;->a:Lcn/domob/android/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcn/domob/android/j/d$12;->a:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->h(Lcn/domob/android/j/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    return-void
.end method
