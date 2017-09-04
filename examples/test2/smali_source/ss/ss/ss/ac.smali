.class public final Lss/ss/ss/ac;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lss/ss/ss/ac;->d:[I

    return-void
.end method


# virtual methods
.method a(III)Lss/ss/ss/ac;
    .registers 7

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lss/ss/ss/ac;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lss/ss/ss/ac;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    iget v1, p0, Lss/ss/ss/ac;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lss/ss/ss/ac;->b:I

    :goto_16
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2c

    iget v1, p0, Lss/ss/ss/ac;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/ac;->c:I

    :goto_1f
    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    aput p3, v0, p1

    goto :goto_5

    :cond_24
    iget v1, p0, Lss/ss/ss/ac;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lss/ss/ss/ac;->b:I

    goto :goto_16

    :cond_2c
    iget v1, p0, Lss/ss/ss/ac;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lss/ss/ss/ac;->c:I

    goto :goto_1f
.end method

.method a()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lss/ss/ss/ac;->c:I

    iput v1, p0, Lss/ss/ss/ac;->b:I

    iput v1, p0, Lss/ss/ss/ac;->a:I

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method a(Lss/ss/ss/ac;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->c(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lss/ss/ss/ac;->b(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lss/ss/ss/ac;->a(III)Lss/ss/ss/ac;

    goto :goto_b

    :cond_1a
    return-void
.end method

.method a(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lss/ss/ss/ac;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method b()I
    .registers 2

    iget v0, p0, Lss/ss/ss/ac;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method c()I
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Lss/ss/ss/ac;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method c(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lss/ss/ss/ac;->h(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    :cond_8
    invoke-virtual {p0, p1}, Lss/ss/ss/ac;->g(I)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x1

    :cond_10
    return v0
.end method

.method d(I)I
    .registers 4

    const/16 v0, 0x10

    iget v1, p0, Lss/ss/ss/ac;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method e(I)I
    .registers 4

    const/16 v0, 0x20

    iget v1, p0, Lss/ss/ss/ac;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method f(I)I
    .registers 4

    const/16 v0, 0x80

    iget v1, p0, Lss/ss/ss/ac;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lss/ss/ss/ac;->d:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method g(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lss/ss/ss/ac;->b:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method h(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lss/ss/ss/ac;->c:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
