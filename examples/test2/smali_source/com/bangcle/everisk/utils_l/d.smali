.class public final Lcom/bangcle/everisk/utils_l/d;
.super Ljava/lang/Object;


# instance fields
.field private final Y:[B

.field private final Z:I


# direct methods
.method protected constructor <init>(Lcom/bangcle/everisk/utils_l/b;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/bangcle/everisk/utils_l/b;->seek(J)V

    iget-object v2, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    invoke-virtual {p1, v2}, Lcom/bangcle/everisk/utils_l/b;->readFully([B)V

    iget-object v2, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    array-length v3, v2

    if-lt v3, v5, :cond_35

    aget-byte v3, v2, v0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_35

    aget-byte v3, v2, v1

    const/16 v4, 0x45

    if-ne v3, v4, :cond_35

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_35

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    const/16 v3, 0x46

    if-eq v2, v3, :cond_40

    :cond_35
    move v2, v0

    :goto_36
    if-nez v2, :cond_42

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an ELF file!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    move v2, v1

    goto :goto_36

    :cond_42
    iget-object v2, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    if-ne v2, v1, :cond_4a

    move v0, v1

    :cond_4a
    invoke-virtual {p1, v0}, Lcom/bangcle/everisk/utils_l/b;->d(Z)V

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    move-result v0

    iput v0, p0, Lcom/bangcle/everisk/utils_l/d;->Z:I

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->A()I

    iget-object v0, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    aget-byte v0, v0, v5

    packed-switch v0, :pswitch_data_b8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ELF class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bangcle/everisk/utils_l/d;->Y:[B

    aget-byte v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_79
    new-array v0, v5, [B

    invoke-virtual {p1, v0}, Lcom/bangcle/everisk/utils_l/b;->a([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->A()I

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->A()I

    :goto_8c
    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->A()I

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    invoke-virtual {p1}, Lcom/bangcle/everisk/utils_l/b;->C()S

    return-void

    :pswitch_a2
    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/bangcle/everisk/utils_l/b;->a([B)V

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    invoke-static {p1}, Lcom/bangcle/everisk/utils_l/c;->a(Lcom/bangcle/everisk/utils_l/b;)J

    invoke-static {p1}, Lcom/bangcle/everisk/utils_l/c;->a(Lcom/bangcle/everisk/utils_l/b;)J

    goto :goto_8c

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_79
        :pswitch_a2
    .end packed-switch
.end method


# virtual methods
.method public final F()I
    .registers 3

    iget v0, p0, Lcom/bangcle/everisk/utils_l/d;->Z:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
