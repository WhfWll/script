.class Lcn/domob/android/j/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->a(Z)V
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
    .line 844
    iput-object p1, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 848
    iget-object v0, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->z(Lcn/domob/android/j/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 849
    iget-object v0, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->z(Lcn/domob/android/j/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 852
    iget-object v0, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 854
    :cond_17
    iget-object v0, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->G(Lcn/domob/android/j/a;)V

    .line 855
    iget-object v0, p0, Lcn/domob/android/j/a$5;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->H(Lcn/domob/android/j/a;)V

    .line 856
    return-void
.end method
