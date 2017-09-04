.class public final Lhv;
.super Lgb;


# direct methods
.method public constructor <init>(ZILfg;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lgb;-><init>(ZILfg;)V

    return-void
.end method


# virtual methods
.method final a()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lhv;->a:Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->d()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    iget-boolean v1, p0, Lhv;->a:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Lhv;->a:I

    invoke-static {v1}, Lid;->b(I)I

    move-result v1

    invoke-static {v0}, Lid;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_1e
    return v0

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lhv;->a:I

    invoke-static {v1}, Lid;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1e
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa0

    iget-object v1, p0, Lhv;->a:Lfg;

    invoke-interface {v1}, Lfg;->b()Lfv;

    move-result-object v1

    invoke-virtual {v1}, Lfv;->d()Lfv;

    move-result-object v1

    iget-boolean v2, p0, Lhv;->a:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lhv;->a:I

    invoke-virtual {p1, v0, v2}, Lfs;->a(II)V

    invoke-virtual {v1}, Lfv;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lfs;->a(I)V

    invoke-virtual {p1, v1}, Lfs;->a(Lfg;)V

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {v1}, Lfv;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_26
    iget v2, p0, Lhv;->a:I

    invoke-virtual {p1, v0, v2}, Lfs;->a(II)V

    invoke-virtual {p1, v1}, Lfs;->a(Lfv;)V

    goto :goto_1f

    :cond_2f
    const/16 v0, 0x80

    goto :goto_26
.end method

.method final a()Z
    .registers 2

    iget-boolean v0, p0, Lhv;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lhv;->a:Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->d()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()Z

    move-result v0

    goto :goto_5
.end method
