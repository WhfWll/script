.class public final Lhu;
.super Lfy;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lfy;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lhu;->a:I

    return-void
.end method

.method public constructor <init>(Lfh;)V
    .registers 3

    invoke-direct {p0, p1}, Lfy;-><init>(Lfh;)V

    const/4 v0, -0x1

    iput v0, p0, Lhu;->a:I

    return-void
.end method

.method private b()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lhu;->a:I

    if-gez v0, :cond_29

    const/4 v0, 0x0

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-interface {v0}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->d()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    :cond_27
    iput v1, p0, Lhu;->a:I

    :cond_29
    iget v0, p0, Lhu;->a:I

    return v0
.end method


# virtual methods
.method final a()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lhu;->b()I

    move-result v0

    invoke-static {v0}, Lid;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method final a(Lfs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lfs;->b()Lfs;

    move-result-object v1

    invoke-direct {p0}, Lhu;->b()I

    move-result v0

    const/16 v2, 0x31

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    invoke-virtual {p1, v0}, Lfs;->a(I)V

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-virtual {v1, v0}, Lfs;->a(Lfg;)V

    goto :goto_16

    :cond_26
    return-void
.end method
