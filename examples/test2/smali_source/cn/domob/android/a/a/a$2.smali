.class Lcn/domob/android/a/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/a/a/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/a/a/a;


# direct methods
.method constructor <init>(Lcn/domob/android/a/a/a;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcn/domob/android/a/a/a$2;->a:Lcn/domob/android/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcn/domob/android/a/a/a$2;->a:Lcn/domob/android/a/a/a;

    invoke-static {v0}, Lcn/domob/android/a/a/a;->c(Lcn/domob/android/a/a/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/a/a$2;->a:Lcn/domob/android/a/a/a;

    invoke-static {v1}, Lcn/domob/android/a/a/a;->b(Lcn/domob/android/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method
