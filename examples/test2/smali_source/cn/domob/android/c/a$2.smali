.class Lcn/domob/android/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/c/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/c/a;


# direct methods
.method constructor <init>(Lcn/domob/android/c/a;)V
    .registers 2

    .prologue
    .line 449
    iput-object p1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 494
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rom can\'t chmod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "sd\u5361\u4e0d\u5b58\u5728"

    .line 496
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 497
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 499
    :cond_34
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1, v0}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 522
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 527
    :goto_6
    return-void

    .line 525
    :cond_7
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1, p2}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;J)J

    goto :goto_6
.end method

.method public a(JJJ)V
    .registers 10

    .prologue
    .line 482
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not enough size sdsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " romsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "\u7a7a\u95f4\u4e0d\u8db3"

    .line 485
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 486
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 488
    :cond_42
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1, v0}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 453
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/i/f;

    move-result-object v0

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->j(Lcn/domob/android/c/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_47

    .line 455
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 456
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->m(Lcn/domob/android/c/a;)J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcn/domob/android/c/b;->b(Ljava/lang/String;J)V

    .line 462
    :cond_46
    :goto_46
    return-void

    .line 459
    :cond_47
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;J)V

    goto :goto_46
.end method

.method public b()V
    .registers 4

    .prologue
    .line 513
    const-string v0, "sd\u5361\u4e0d\u5b58\u5728"

    .line 514
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 515
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1, v2, v0}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 517
    :cond_14
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1, v0}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 466
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/i/f;

    move-result-object v0

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is download but not finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    iget-object v2, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;J)V

    .line 471
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 475
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/i/f;

    move-result-object v0

    const-class v1, Lcn/domob/android/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is  not download,it will download in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    iget-object v1, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;J)V

    .line 478
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 504
    invoke-static {}, Lcn/domob/android/i/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 506
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->k(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/c/b;->a(ILjava/lang/String;)V

    .line 508
    :cond_57
    iget-object v0, p0, Lcn/domob/android/c/a$2;->a:Lcn/domob/android/c/a;

    invoke-static {v0, p1}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;Ljava/lang/String;)V

    .line 509
    return-void
.end method
