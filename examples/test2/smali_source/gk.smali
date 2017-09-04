.class public final Lgk;
.super Lfy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfy;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfh;)V
    .registers 2

    invoke-direct {p0, p1}, Lfy;-><init>(Lfh;)V

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

    const/4 v0, 0x0

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_8

    :cond_1f
    add-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lfs;->b(I)V

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-virtual {p1, v0}, Lfs;->a(Lfg;)V

    goto :goto_11

    :cond_21
    invoke-virtual {p1, v2}, Lfs;->b(I)V

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    return-void
.end method
