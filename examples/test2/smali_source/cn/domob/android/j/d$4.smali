.class Lcn/domob/android/j/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcn/domob/android/j/d;


# direct methods
.method constructor <init>(Lcn/domob/android/j/d;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 640
    iput-object p1, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    iput-object p2, p0, Lcn/domob/android/j/d$4;->a:Ljava/lang/String;

    iput p3, p0, Lcn/domob/android/j/d$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 644
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    iget-object v1, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    iget-object v2, p0, Lcn/domob/android/j/d$4;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;[B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_61

    .line 646
    iget-object v1, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v1}, Lcn/domob/android/j/d;->j(Lcn/domob/android/j/d;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {}, Lcn/domob/android/j/d;->h()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button img download successfully, download url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 656
    :goto_38
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->k(Lcn/domob/android/j/d;)I

    move-result v0

    if-eq v0, v3, :cond_60

    .line 657
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->l(Lcn/domob/android/j/d;)I

    .line 658
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->k(Lcn/domob/android/j/d;)I

    move-result v0

    iget v1, p0, Lcn/domob/android/j/d$4;->b:I

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 659
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/j/d$b;->j()V

    .line 665
    :cond_60
    :goto_60
    return-void

    .line 649
    :cond_61
    invoke-static {}, Lcn/domob/android/j/d;->h()Lcn/domob/android/i/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button img download failed, download url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/j/d$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->k(Lcn/domob/android/j/d;)I

    move-result v0

    if-eq v0, v3, :cond_96

    .line 652
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    invoke-static {v0}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;)Lcn/domob/android/j/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/j/d$b;->j()V

    .line 654
    :cond_96
    iget-object v0, p0, Lcn/domob/android/j/d$4;->c:Lcn/domob/android/j/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/domob/android/j/d;->a(Lcn/domob/android/j/d;I)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9c} :catch_9d

    goto :goto_38

    .line 662
    :catch_9d
    move-exception v0

    .line 663
    invoke-static {}, Lcn/domob/android/j/d;->h()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_60
.end method
