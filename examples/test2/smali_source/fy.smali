.class public abstract Lfy;
.super Lfv;


# instance fields
.field a:Ljava/util/Vector;

.field private a:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfy;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfy;->a:Z

    return-void
.end method

.method protected constructor <init>(Lfh;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lfy;->a:Ljava/util/Vector;

    iput-boolean v0, p0, Lfy;->a:Z

    :goto_d
    iget-object v1, p1, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lfh;->a(I)Lfg;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    return-void
.end method

.method private static a(Ljava/util/Enumeration;)Lfg;
    .registers 2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    if-nez v0, :cond_a

    sget-object v0, Lhb;->a:Lhb;

    :cond_a
    return-object v0
.end method

.method private a()V
    .registers 13

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lfy;->a:Z

    if-nez v0, :cond_8b

    iput-boolean v5, p0, Lfy;->a:Z

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_8b

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v8, v2

    move v4, v5

    :goto_1a
    if-eqz v4, :cond_8b

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-static {v0}, Lfy;->a(Lfg;)[B

    move-result-object v1

    move v2, v7

    move v3, v7

    move v4, v7

    :goto_2b
    if-eq v3, v8, :cond_89

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    invoke-static {v0}, Lfy;->a(Lfg;)[B

    move-result-object v0

    array-length v6, v1

    array-length v9, v0

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v6, v7

    :goto_42
    if-eq v6, v9, :cond_64

    aget-byte v10, v1, v6

    aget-byte v11, v0, v6

    if-eq v10, v11, :cond_61

    aget-byte v9, v1, v6

    and-int/lit16 v9, v9, 0xff

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    if-ge v9, v6, :cond_5f

    move v6, v5

    :goto_55
    if-eqz v6, :cond_6b

    move v1, v2

    move v2, v4

    :goto_59
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_2b

    :cond_5f
    move v6, v7

    goto :goto_55

    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_64
    array-length v6, v1

    if-ne v9, v6, :cond_69

    move v6, v5

    goto :goto_55

    :cond_69
    move v6, v7

    goto :goto_55

    :cond_6b
    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lfy;->a:Ljava/util/Vector;

    iget-object v4, p0, Lfy;->a:Ljava/util/Vector;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lfy;->a:Ljava/util/Vector;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move-object v0, v1

    move v2, v5

    move v1, v3

    goto :goto_59

    :cond_89
    move v8, v2

    goto :goto_1a

    :cond_8b
    return-void
.end method

.method private static a(Lfg;)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lfs;

    invoke-direct {v1, v0}, Lfs;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    invoke-virtual {v1, p0}, Lfs;->a(Lfg;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final a(Lfv;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lfy;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lfy;

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p1, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p1, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_22
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {v1}, Lfy;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v3

    invoke-static {v2}, Lfy;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v4

    invoke-interface {v3}, Lfg;->b()Lfv;

    move-result-object v3

    invoke-interface {v4}, Lfg;->b()Lfv;

    move-result-object v4

    if-eq v3, v4, :cond_22

    invoke-virtual {v3, v4}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_5

    :cond_41
    const/4 v0, 0x1

    goto :goto_5
.end method

.method final c()Lfv;
    .registers 4

    iget-boolean v0, p0, Lfy;->a:Z

    if-eqz v0, :cond_e

    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    iput-object v1, v0, Lfy;->a:Ljava/util/Vector;

    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_28

    iget-object v2, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    new-instance v0, Lhk;

    invoke-direct {v0}, Lhk;-><init>()V

    iput-object v1, v0, Lfy;->a:Ljava/util/Vector;

    invoke-direct {v0}, Lfy;->a()V

    goto :goto_d
.end method

.method final d()Lfv;
    .registers 3

    new-instance v0, Lhu;

    invoke-direct {v0}, Lhu;-><init>()V

    iget-object v1, p0, Lfy;->a:Ljava/util/Vector;

    iput-object v1, v0, Lfy;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v1}, Lfy;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_c

    :cond_1e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lfy;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
