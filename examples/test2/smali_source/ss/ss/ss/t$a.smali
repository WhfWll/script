.class final Lss/ss/ss/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:[Lss/ss/ss/r;

.field b:I

.field c:I

.field d:I

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation
.end field

.field private final f:LgK/g;

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(ILgK/w;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lss/ss/ss/r;

    iput-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lss/ss/ss/t$a;->b:I

    iput v1, p0, Lss/ss/ss/t$a;->c:I

    iput v1, p0, Lss/ss/ss/t$a;->d:I

    iput p1, p0, Lss/ss/ss/t$a;->g:I

    iput p1, p0, Lss/ss/ss/t$a;->h:I

    invoke-static {p2}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/t$a;->f:LgK/g;

    return-void
.end method

.method private a(ILss/ss/ss/r;)V
    .registers 9

    const/4 v3, -0x1

    iget-object v0, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lss/ss/ss/r;->j:I

    if-eq p1, v3, :cond_15

    iget-object v1, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->d(I)I

    move-result v2

    aget-object v1, v1, v2

    iget v1, v1, Lss/ss/ss/r;->j:I

    sub-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lss/ss/ss/t$a;->h:I

    if-le v0, v1, :cond_1d

    invoke-direct {p0}, Lss/ss/ss/t$a;->e()V

    :goto_1c
    return-void

    :cond_1d
    iget v1, p0, Lss/ss/ss/t$a;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lss/ss/ss/t$a;->h:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lss/ss/ss/t$a;->b(I)I

    move-result v1

    if-ne p1, v3, :cond_64

    iget v1, p0, Lss/ss/ss/t$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v2, v2

    if-le v1, v2, :cond_4e

    iget-object v1, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lss/ss/ss/r;

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    const/4 v3, 0x0

    iget-object v4, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v4, v4

    iget-object v5, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lss/ss/ss/t$a;->b:I

    iput-object v1, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    :cond_4e
    iget v1, p0, Lss/ss/ss/t$a;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lss/ss/ss/t$a;->b:I

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    aput-object p2, v2, v1

    iget v1, p0, Lss/ss/ss/t$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lss/ss/ss/t$a;->c:I

    :goto_5e
    iget v1, p0, Lss/ss/ss/t$a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/t$a;->d:I

    goto :goto_1c

    :cond_64
    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->d(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    aput-object p2, v2, v1

    goto :goto_5e
.end method

.method private b(I)I
    .registers 8

    const/4 v1, 0x0

    if-lez p1, :cond_42

    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lss/ss/ss/t$a;->b:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    aget-object v2, v2, v0

    iget v2, v2, Lss/ss/ss/r;->j:I

    sub-int/2addr p1, v2

    iget v2, p0, Lss/ss/ss/t$a;->d:I

    iget-object v3, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    aget-object v3, v3, v0

    iget v3, v3, Lss/ss/ss/r;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lss/ss/ss/t$a;->d:I

    iget v2, p0, Lss/ss/ss/t$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lss/ss/ss/t$a;->c:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    iget v2, p0, Lss/ss/ss/t$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    iget v4, p0, Lss/ss/ss/t$a;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lss/ss/ss/t$a;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lss/ss/ss/t$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/t$a;->b:I

    :cond_42
    return v1
.end method

.method private c(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lss/ss/ss/t;->a()[Lss/ss/ss/r;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    return-void

    :cond_12
    invoke-static {}, Lss/ss/ss/t;->a()[Lss/ss/ss/r;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lss/ss/ss/t$a;->d(I)I

    move-result v0

    if-ltz v0, :cond_26

    iget-object v1, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_41

    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-object v1, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    iget-object v2, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private d(I)I
    .registers 3

    iget v0, p0, Lss/ss/ss/t$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lss/ss/ss/t$a;->h:I

    iget v1, p0, Lss/ss/ss/t$a;->d:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Lss/ss/ss/t$a;->h:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lss/ss/ss/t$a;->e()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lss/ss/ss/t$a;->d:I

    iget v1, p0, Lss/ss/ss/t$a;->h:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lss/ss/ss/t$a;->b(I)I

    goto :goto_d
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lss/ss/ss/t$a;->b:I

    iput v2, p0, Lss/ss/ss/t$a;->c:I

    iput v2, p0, Lss/ss/ss/t$a;->d:I

    return-void
.end method

.method private e(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->g(I)LgK/h;

    move-result-object v0

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    new-instance v3, Lss/ss/ss/r;

    invoke-direct {v3, v0, v1}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v0

    invoke-static {v0}, Lss/ss/ss/t;->a(LgK/h;)LgK/h;

    move-result-object v0

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v1

    iget-object v2, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    new-instance v3, Lss/ss/ss/r;

    invoke-direct {v3, v0, v1}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->g(I)LgK/h;

    move-result-object v0

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lss/ss/ss/r;

    invoke-direct {v3, v0, v1}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    invoke-direct {p0, v2, v3}, Lss/ss/ss/t$a;->a(ILss/ss/ss/r;)V

    return-void
.end method

.method private g(I)LgK/h;
    .registers 4

    invoke-direct {p0, p1}, Lss/ss/ss/t$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lss/ss/ss/t;->a()[Lss/ss/ss/r;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lss/ss/ss/r;->h:LgK/h;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lss/ss/ss/t$a;->a:[Lss/ss/ss/r;

    invoke-static {}, Lss/ss/ss/t;->a()[Lss/ss/ss/r;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lss/ss/ss/t$a;->d(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lss/ss/ss/r;->h:LgK/h;

    goto :goto_e
.end method

.method private g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v0

    invoke-static {v0}, Lss/ss/ss/t;->a(LgK/h;)LgK/h;

    move-result-object v0

    invoke-virtual {p0}, Lss/ss/ss/t$a;->c()LgK/h;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Lss/ss/ss/r;

    invoke-direct {v3, v0, v1}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    invoke-direct {p0, v2, v3}, Lss/ss/ss/t$a;->a(ILss/ss/ss/r;)V

    return-void
.end method

.method private h()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/t$a;->f:LgK/g;

    invoke-interface {v0}, LgK/g;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private h(I)Z
    .registers 3

    if-ltz p1, :cond_d

    invoke-static {}, Lss/ss/ss/t;->a()[Lss/ss/ss/r;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method a(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int v0, p1, p2

    if-ge v0, p2, :cond_5

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, Lss/ss/ss/t$a;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_15

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_6

    :cond_15
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_4
.end method

.method a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x80

    const/16 v3, 0x40

    :goto_4
    iget-object v0, p0, Lss/ss/ss/t$a;->f:LgK/g;

    invoke-interface {v0}, LgK/g;->f()Z

    move-result v0

    if-nez v0, :cond_92

    iget-object v0, p0, Lss/ss/ss/t$a;->f:LgK/g;

    invoke-interface {v0}, LgK/g;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_1e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v4, :cond_2e

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lss/ss/ss/t$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lss/ss/ss/t$a;->c(I)V

    goto :goto_4

    :cond_2e
    if-ne v0, v3, :cond_34

    invoke-direct {p0}, Lss/ss/ss/t$a;->g()V

    goto :goto_4

    :cond_34
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v3, :cond_44

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lss/ss/ss/t$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lss/ss/ss/t$a;->f(I)V

    goto :goto_4

    :cond_44
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7b

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lss/ss/ss/t$a;->a(II)I

    move-result v0

    iput v0, p0, Lss/ss/ss/t$a;->h:I

    iget v0, p0, Lss/ss/ss/t$a;->h:I

    if-ltz v0, :cond_5c

    iget v0, p0, Lss/ss/ss/t$a;->h:I

    iget v1, p0, Lss/ss/ss/t$a;->g:I

    if-le v0, v1, :cond_77

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/ss/t$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    invoke-direct {p0}, Lss/ss/ss/t$a;->d()V

    goto :goto_4

    :cond_7b
    const/16 v1, 0x10

    if-eq v0, v1, :cond_81

    if-nez v0, :cond_85

    :cond_81
    invoke-direct {p0}, Lss/ss/ss/t$a;->f()V

    goto :goto_4

    :cond_85
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lss/ss/ss/t$a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lss/ss/ss/t$a;->e(I)V

    goto/16 :goto_4

    :cond_92
    return-void
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lss/ss/ss/t$a;->g:I

    iput p1, p0, Lss/ss/ss/t$a;->h:I

    invoke-direct {p0}, Lss/ss/ss/t$a;->d()V

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lss/ss/ss/t$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method c()LgK/h;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/ss/t$a;->h()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_27

    const/4 v0, 0x1

    :goto_b
    const/16 v2, 0x7f

    invoke-virtual {p0, v1, v2}, Lss/ss/ss/t$a;->a(II)I

    move-result v1

    if-eqz v0, :cond_29

    invoke-static {}, Lss/ss/ss/v;->a()Lss/ss/ss/v;

    move-result-object v0

    iget-object v2, p0, Lss/ss/ss/t$a;->f:LgK/g;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, LgK/g;->f(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ss/ss/v;->a([B)[B

    move-result-object v0

    invoke-static {v0}, LgK/h;->a([B)LgK/h;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_b

    :cond_29
    iget-object v0, p0, Lss/ss/ss/t$a;->f:LgK/g;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, LgK/g;->c(J)LgK/h;

    move-result-object v0

    goto :goto_26
.end method
