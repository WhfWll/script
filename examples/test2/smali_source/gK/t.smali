.class final LgK/t;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:LgK/t;

.field g:LgK/t;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, LgK/t;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, LgK/t;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LgK/t;->d:Z

    return-void
.end method

.method constructor <init>(LgK/t;)V
    .registers 5

    iget-object v0, p1, LgK/t;->a:[B

    iget v1, p1, LgK/t;->b:I

    iget v2, p1, LgK/t;->c:I

    invoke-direct {p0, v0, v1, v2}, LgK/t;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, LgK/t;->d:Z

    return-void
.end method

.method constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgK/t;->a:[B

    iput p2, p0, LgK/t;->b:I

    iput p3, p0, LgK/t;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, LgK/t;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, LgK/t;->d:Z

    return-void
.end method


# virtual methods
.method public a()LgK/t;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, LgK/t;->f:LgK/t;

    if-eq v0, p0, :cond_18

    iget-object v0, p0, LgK/t;->f:LgK/t;

    :goto_7
    iget-object v2, p0, LgK/t;->g:LgK/t;

    iget-object v3, p0, LgK/t;->f:LgK/t;

    iput-object v3, v2, LgK/t;->f:LgK/t;

    iget-object v2, p0, LgK/t;->f:LgK/t;

    iget-object v3, p0, LgK/t;->g:LgK/t;

    iput-object v3, v2, LgK/t;->g:LgK/t;

    iput-object v1, p0, LgK/t;->f:LgK/t;

    iput-object v1, p0, LgK/t;->g:LgK/t;

    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_7
.end method

.method public a(I)LgK/t;
    .registers 4

    if-lez p1, :cond_9

    iget v0, p0, LgK/t;->c:I

    iget v1, p0, LgK/t;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    new-instance v0, LgK/t;

    invoke-direct {v0, p0}, LgK/t;-><init>(LgK/t;)V

    iget v1, v0, LgK/t;->b:I

    add-int/2addr v1, p1

    iput v1, v0, LgK/t;->c:I

    iget v1, p0, LgK/t;->b:I

    add-int/2addr v1, p1

    iput v1, p0, LgK/t;->b:I

    iget-object v1, p0, LgK/t;->g:LgK/t;

    invoke-virtual {v1, v0}, LgK/t;->a(LgK/t;)LgK/t;

    return-object v0
.end method

.method public a(LgK/t;)LgK/t;
    .registers 3

    iput-object p0, p1, LgK/t;->g:LgK/t;

    iget-object v0, p0, LgK/t;->f:LgK/t;

    iput-object v0, p1, LgK/t;->f:LgK/t;

    iget-object v0, p0, LgK/t;->f:LgK/t;

    iput-object p1, v0, LgK/t;->g:LgK/t;

    iput-object p1, p0, LgK/t;->f:LgK/t;

    return-object p1
.end method

.method public a(LgK/t;I)V
    .registers 9

    const/16 v2, 0x2000

    const/4 v5, 0x0

    iget-boolean v0, p1, LgK/t;->e:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget v0, p1, LgK/t;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    iget-boolean v0, p1, LgK/t;->d:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    iget v0, p1, LgK/t;->c:I

    add-int/2addr v0, p2

    iget v1, p1, LgK/t;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2a
    iget-object v0, p1, LgK/t;->a:[B

    iget v1, p1, LgK/t;->b:I

    iget-object v2, p1, LgK/t;->a:[B

    iget v3, p1, LgK/t;->c:I

    iget v4, p1, LgK/t;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LgK/t;->c:I

    iget v1, p1, LgK/t;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, LgK/t;->c:I

    iput v5, p1, LgK/t;->b:I

    :cond_41
    iget-object v0, p0, LgK/t;->a:[B

    iget v1, p0, LgK/t;->b:I

    iget-object v2, p1, LgK/t;->a:[B

    iget v3, p1, LgK/t;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LgK/t;->c:I

    add-int/2addr v0, p2

    iput v0, p1, LgK/t;->c:I

    iget v0, p0, LgK/t;->b:I

    add-int/2addr v0, p2

    iput v0, p0, LgK/t;->b:I

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, LgK/t;->g:LgK/t;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, LgK/t;->g:LgK/t;

    iget-boolean v0, v0, LgK/t;->e:Z

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget v0, p0, LgK/t;->c:I

    iget v1, p0, LgK/t;->b:I

    sub-int v1, v0, v1

    iget-object v0, p0, LgK/t;->g:LgK/t;

    iget v0, v0, LgK/t;->c:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, LgK/t;->g:LgK/t;

    iget-boolean v0, v0, LgK/t;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    add-int/2addr v0, v2

    if-gt v1, v0, :cond_10

    iget-object v0, p0, LgK/t;->g:LgK/t;

    invoke-virtual {p0, v0, v1}, LgK/t;->a(LgK/t;I)V

    invoke-virtual {p0}, LgK/t;->a()LgK/t;

    invoke-static {p0}, LgK/u;->a(LgK/t;)V

    goto :goto_10

    :cond_33
    iget-object v0, p0, LgK/t;->g:LgK/t;

    iget v0, v0, LgK/t;->b:I

    goto :goto_24
.end method
