.class Lcom/tencent/wxop/stat/common/j;
.super Lcom/tencent/wxop/stat/common/h;


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    const-class v0, Lcom/tencent/wxop/stat/common/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/tencent/wxop/stat/common/j;->g:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/tencent/wxop/stat/common/j;->h:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_42

    sput-object v0, Lcom/tencent/wxop/stat/common/j;->i:[B

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :array_1e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_42
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/wxop/stat/common/h;-><init>()V

    iput-object p2, p0, Lcom/tencent/wxop/stat/common/j;->a:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->d:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->e:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lcom/tencent/wxop/stat/common/j;->h:[B

    :goto_21
    iput-object v0, p0, Lcom/tencent/wxop/stat/common/j;->l:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    iput v2, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->e:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lcom/tencent/wxop/stat/common/j;->k:I

    return-void

    :cond_33
    move v0, v2

    goto :goto_c

    :cond_35
    move v0, v2

    goto :goto_13

    :cond_37
    move v1, v2

    goto :goto_19

    :cond_39
    sget-object v0, Lcom/tencent/wxop/stat/common/j;->i:[B

    goto :goto_21

    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public a([BIIZ)Z
    .registers 15

    iget-object v6, p0, Lcom/tencent/wxop/stat/common/j;->l:[B

    iget-object v7, p0, Lcom/tencent/wxop/stat/common/j;->a:[B

    const/4 v4, 0x0

    iget v2, p0, Lcom/tencent/wxop/stat/common/j;->k:I

    add-int v8, p3, p2

    const/4 v0, -0x1

    iget v1, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    packed-switch v1, :pswitch_data_24c

    :cond_f
    move v3, v0

    move v1, p2

    :goto_11
    const/4 v0, -0x1

    if-eq v3, v0, :cond_248

    const/4 v0, 0x0

    shr-int/lit8 v4, v3, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v0

    const/4 v0, 0x1

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v0

    const/4 v0, 0x2

    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v0

    const/4 v4, 0x3

    const/4 v0, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_244

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x4

    const/4 v0, 0x5

    const/16 v3, 0xd

    aput-byte v3, v7, v2

    :cond_45
    add-int/lit8 v4, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    const/16 v0, 0x13

    move v5, v0

    :goto_4e
    add-int/lit8 v0, v1, 0x3

    if-gt v0, v8, :cond_f5

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    add-int/lit8 v2, v4, 0x2

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    add-int/lit8 v2, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v4, 0x4

    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_23f

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    if-eqz v0, :cond_23c

    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v1

    :goto_9e
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    const/16 v0, 0x13

    move v1, v2

    move v5, v0

    goto :goto_4e

    :pswitch_a9
    move v3, v0

    move v1, p2

    goto/16 :goto_11

    :pswitch_ad
    add-int/lit8 v1, p2, 0x2

    if-gt v1, v8, :cond_f

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 p2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    move v3, v0

    move v1, p2

    goto/16 :goto_11

    :pswitch_d1
    add-int/lit8 v1, p2, 0x1

    if-gt v1, v8, :cond_f

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    const/4 v3, 0x0

    iput v3, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    move v3, v0

    goto/16 :goto_11

    :cond_f5
    if-eqz p4, :cond_202

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v8, -0x1

    if-ne v0, v2, :cond_161

    const/4 v3, 0x0

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    if-lez v0, :cond_15a

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    const/4 v3, 0x0

    const/4 v2, 0x1

    aget-byte v0, v0, v3

    :goto_10a
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v2

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->d:Z

    if-eqz v2, :cond_135

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v2

    :cond_135
    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->e:Z

    if-eqz v2, :cond_14b

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    if-eqz v2, :cond_144

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v2

    :cond_144
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    aput-byte v3, v7, v0

    move v0, v2

    :cond_14b
    move v4, v0

    :cond_14c
    :goto_14c
    sget-boolean v0, Lcom/tencent/wxop/stat/common/j;->g:Z

    if-nez v0, :cond_1f6

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    if-eqz v0, :cond_1f6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15a
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    move v2, v3

    goto :goto_10a

    :cond_161
    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    sub-int v0, v1, v0

    add-int/lit8 v2, v8, -0x2

    if-ne v0, v2, :cond_1da

    const/4 v3, 0x0

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1cd

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    const/4 v3, 0x0

    const/4 v2, 0x1

    aget-byte v0, v0, v3

    :goto_175
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0xa

    iget v0, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    if-lez v0, :cond_1d4

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_184
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v9

    iget v3, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v4

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v3

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->d:Z

    if-eqz v0, :cond_239

    add-int/lit8 v0, v2, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v2

    :goto_1b5
    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->e:Z

    if-eqz v2, :cond_1cb

    iget-boolean v2, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    if-eqz v2, :cond_1c4

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v2

    :cond_1c4
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    aput-byte v3, v7, v0

    move v0, v2

    :cond_1cb
    move v4, v0

    goto :goto_14c

    :cond_1cd
    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v2

    move v2, v3

    goto :goto_175

    :cond_1d4
    add-int/lit8 v3, v1, 0x1

    aget-byte v0, p1, v1

    move v1, v3

    goto :goto_184

    :cond_1da
    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->e:Z

    if-eqz v0, :cond_14c

    if-lez v4, :cond_14c

    const/16 v0, 0x13

    if-eq v5, v0, :cond_14c

    iget-boolean v0, p0, Lcom/tencent/wxop/stat/common/j;->f:Z

    if-eqz v0, :cond_237

    add-int/lit8 v0, v4, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v4

    :goto_1ee
    add-int/lit8 v4, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    goto/16 :goto_14c

    :cond_1f6
    sget-boolean v0, Lcom/tencent/wxop/stat/common/j;->g:Z

    if-nez v0, :cond_212

    if-eq v1, v8, :cond_212

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_202
    add-int/lit8 v0, v8, -0x1

    if-ne v1, v0, :cond_218

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    iget v2, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    aget-byte v1, p1, v1

    aput-byte v1, v0, v2

    :cond_212
    :goto_212
    iput v4, p0, Lcom/tencent/wxop/stat/common/j;->b:I

    iput v5, p0, Lcom/tencent/wxop/stat/common/j;->k:I

    const/4 v0, 0x1

    return v0

    :cond_218
    add-int/lit8 v0, v8, -0x2

    if-ne v1, v0, :cond_212

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    iget v2, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/tencent/wxop/stat/common/j;->j:[B

    iget v2, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/wxop/stat/common/j;->c:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    aput-byte v1, v0, v2

    goto :goto_212

    :cond_237
    move v0, v4

    goto :goto_1ee

    :cond_239
    move v0, v2

    goto/16 :goto_1b5

    :cond_23c
    move v0, v1

    goto/16 :goto_9e

    :cond_23f
    move v5, v0

    move v4, v1

    move v1, v2

    goto/16 :goto_4e

    :cond_244
    move v5, v2

    move v4, v0

    goto/16 :goto_4e

    :cond_248
    move v5, v2

    goto/16 :goto_4e

    nop

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_ad
        :pswitch_d1
    .end packed-switch
.end method
