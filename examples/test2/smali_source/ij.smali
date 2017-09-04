.class public final Lij;
.super Lih;


# instance fields
.field private a:Lig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lih;-><init>()V

    new-instance v0, Lii;

    invoke-direct {v0}, Lii;-><init>()V

    iput-object v0, p0, Lij;->a:Lig;

    return-void
.end method


# virtual methods
.method public final a(I)Lif;
    .registers 11

    const/4 v1, 0x0

    div-int/lit8 v3, p1, 0x8

    iget-object v0, p0, Lij;->a:Lig;

    const/16 v0, 0x10

    new-array v5, v0, [B

    new-array v6, v3, [B

    move v0, v1

    move v2, v3

    :goto_d
    iget-object v4, p0, Lij;->a:Lig;

    iget-object v7, p0, Lij;->a:[B

    iget-object v8, p0, Lij;->a:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v1, v8}, Lig;->a([BII)V

    iget-object v4, p0, Lij;->a:Lig;

    iget-object v7, p0, Lij;->b:[B

    iget-object v8, p0, Lij;->b:[B

    array-length v8, v8

    invoke-virtual {v4, v7, v1, v8}, Lig;->a([BII)V

    iget-object v4, p0, Lij;->a:Lig;

    invoke-virtual {v4, v5}, Lig;->a([B)I

    array-length v4, v5

    if-le v2, v4, :cond_3d

    array-length v4, v5

    :goto_2a
    invoke-static {v5, v1, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v4

    sub-int/2addr v2, v4

    if-eqz v2, :cond_3f

    iget-object v4, p0, Lij;->a:Lig;

    invoke-virtual {v4}, Lig;->a()V

    iget-object v4, p0, Lij;->a:Lig;

    array-length v7, v5

    invoke-virtual {v4, v5, v1, v7}, Lig;->a([BII)V

    goto :goto_d

    :cond_3d
    move v4, v2

    goto :goto_2a

    :cond_3f
    new-instance v0, Lif;

    invoke-direct {v0, v6, v3}, Lif;-><init>([BI)V

    return-object v0
.end method

.method public final b([B[B)V
    .registers 3

    invoke-super {p0, p1, p2}, Lih;->a([B[B)V

    return-void
.end method
