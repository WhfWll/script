.class public final Lht;
.super Lfw;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lfw;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lht;->a:I

    return-void
.end method

.method public constructor <init>(Lfh;)V
    .registers 3

    invoke-direct {p0, p1}, Lfw;-><init>(Lfh;)V

    const/4 v0, -0x1

    iput v0, p0, Lht;->a:I

    return-void
.end method

.method private c()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lht;->a:I

    if-gez v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0}, Lht;->a()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_25

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

    goto :goto_a

    :cond_25
    iput v1, p0, Lht;->a:I

    :cond_27
    iget v0, p0, Lht;->a:I

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

    invoke-direct {p0}, Lht;->c()I

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

    invoke-direct {p0}, Lht;->c()I

    move-result v0

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Lfs;->b(I)V

    invoke-virtual {p1, v0}, Lfs;->a(I)V

    invoke-virtual {p0}, Lht;->a()Ljava/util/Enumeration;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-virtual {v1, v0}, Lfs;->a(Lfg;)V

    goto :goto_14

    :cond_24
    return-void
.end method
