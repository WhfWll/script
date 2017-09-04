.class public final Llj;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private a:[B

.field private b:I

.field private b:[B

.field private c:I


# direct methods
.method public constructor <init>([BI[BI)V
    .registers 6

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Llj;->c:I

    iput-object p1, p0, Llj;->a:[B

    iput-object p3, p0, Llj;->b:[B

    iput p2, p0, Llj;->a:I

    iput p4, p0, Llj;->b:I

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Llj;->c:I

    iget v1, p0, Llj;->a:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Llj;->a:[B

    iget v1, p0, Llj;->c:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    :goto_e
    if-gez v0, :cond_12

    add-int/lit16 v0, v0, 0x100

    :cond_12
    iget v1, p0, Llj;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llj;->c:I

    :goto_18
    return v0

    :cond_19
    iget v0, p0, Llj;->c:I

    iget v1, p0, Llj;->a:I

    iget v2, p0, Llj;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2e

    iget-object v0, p0, Llj;->b:[B

    iget v1, p0, Llj;->c:I

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Llj;->a:I

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    goto :goto_e

    :cond_2e
    const/4 v0, -0x1

    goto :goto_18
.end method
