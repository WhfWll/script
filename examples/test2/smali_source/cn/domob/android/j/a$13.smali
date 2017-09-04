.class Lcn/domob/android/j/a$13;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 550
    iput-object p1, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    iput-object p2, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 554
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->u(Lcn/domob/android/j/a;)Lcn/domob/android/j/a$c;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 555
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->s(Lcn/domob/android/j/a;)I

    move-result v1

    .line 556
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->v(Lcn/domob/android/j/a;)I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->w(Lcn/domob/android/j/a;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->v(Lcn/domob/android/j/a;)I

    move-result v0

    if-lt v1, v0, :cond_3b

    .line 557
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcn/domob/android/j/a;->a(Lcn/domob/android/j/a;J)V

    .line 558
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/domob/android/j/a;->c(Lcn/domob/android/j/a;Z)Z

    .line 560
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b

    iget-object v0, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6b

    .line 561
    iget-object v2, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    iget-object v0, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcn/domob/android/j/a;->b(Lcn/domob/android/j/a;J)V

    .line 562
    iget-object v0, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3b

    .line 564
    :cond_6b
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->w(Lcn/domob/android/j/a;)Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->v(Lcn/domob/android/j/a;)I

    move-result v0

    if-gtz v0, :cond_8c

    :cond_7b
    iget-object v0, p0, Lcn/domob/android/j/a$13;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8c

    .line 565
    iget-object v0, p0, Lcn/domob/android/j/a$13;->b:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->x(Lcn/domob/android/j/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 569
    :cond_8c
    return-void
.end method
