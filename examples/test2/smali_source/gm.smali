.class public final Lgm;
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

    iget-object v0, p0, Lgm;->a:Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    iget-boolean v1, p0, Lgm;->a:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lgm;->a:I

    invoke-static {v1}, Lid;->b(I)I

    move-result v1

    invoke-static {v0}, Lid;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lgm;->a:I

    invoke-static {v1}, Lid;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1a
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0xa0

    iget v1, p0, Lgm;->a:I

    invoke-virtual {p1, v0, v1}, Lfs;->a(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    iget-boolean v0, p0, Lgm;->a:Z

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgm;->a:Lfg;

    instance-of v0, v0, Lfq;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lgm;->a:Lfg;

    instance-of v0, v0, Lgf;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lgm;->a:Lfg;

    check-cast v0, Lgf;

    invoke-virtual {v0}, Lgf;->a()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    :goto_26
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-virtual {p1, v0}, Lfs;->a(Lfg;)V

    goto :goto_26

    :cond_36
    iget-object v0, p0, Lgm;->a:Lfg;

    check-cast v0, Lfq;

    new-instance v1, Lgf;

    invoke-virtual {v0}, Lfq;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lgf;-><init>([B)V

    invoke-virtual {v1}, Lgf;->a()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_49
    iget-object v0, p0, Lgm;->a:Lfg;

    instance-of v0, v0, Lfw;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lgm;->a:Lfg;

    check-cast v0, Lfw;

    invoke-virtual {v0}, Lfw;->a()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_59
    iget-object v0, p0, Lgm;->a:Lfg;

    instance-of v0, v0, Lfy;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lgm;->a:Lfg;

    check-cast v0, Lfy;

    iget-object v0, v0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_26

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not implemented: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgm;->a:Lfg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    iget-object v0, p0, Lgm;->a:Lfg;

    invoke-virtual {p1, v0}, Lfs;->a(Lfg;)V

    :cond_8f
    invoke-virtual {p1, v2}, Lfs;->b(I)V

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    return-void
.end method

.method final a()Z
    .registers 2

    iget-boolean v0, p0, Lgm;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lgm;->a:Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->c()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()Z

    move-result v0

    goto :goto_5
.end method
