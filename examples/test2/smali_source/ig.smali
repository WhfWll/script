.class public abstract Lig;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:J

.field private a:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lig;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lig;->a:I

    return-void
.end method


# virtual methods
.method public abstract a([B)I
.end method

.method public a()V
    .registers 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lig;->a:J

    iput v1, p0, Lig;->a:I

    move v0, v1

    :goto_8
    iget-object v2, p0, Lig;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Lig;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public final a(B)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lig;->a:[B

    iget v1, p0, Lig;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lig;->a:I

    aput-byte p1, v0, v1

    iget v0, p0, Lig;->a:I

    iget-object v1, p0, Lig;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lig;->a:[B

    invoke-virtual {p0, v0, v3}, Lig;->a([BI)V

    iput v3, p0, Lig;->a:I

    :cond_19
    iget-wide v0, p0, Lig;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lig;->a:J

    return-void
.end method

.method public abstract a(J)V
.end method

.method public abstract a([BI)V
.end method

.method public final a([BII)V
    .registers 8

    :goto_0
    iget v0, p0, Lig;->a:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lig;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_10
    :goto_10
    iget-object v0, p0, Lig;->a:[B

    array-length v0, v0

    if-le p3, v0, :cond_2a

    invoke-virtual {p0, p1, p2}, Lig;->a([BI)V

    iget-object v0, p0, Lig;->a:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lig;->a:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lig;->a:J

    iget-object v2, p0, Lig;->a:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lig;->a:J

    goto :goto_10

    :cond_2a
    :goto_2a
    if-lez p3, :cond_36

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lig;->a(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2a

    :cond_36
    return-void
.end method

.method public abstract b()V
.end method
