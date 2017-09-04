.class public final Lss/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/y$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lss/y$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lss/y$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lss/y$a;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x10

    const/16 v6, 0x3a

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    :goto_9
    array-length v4, p0

    if-ge v0, v4, :cond_26

    move v5, v0

    :goto_d
    if-ge v5, v7, :cond_1d

    aget-byte v4, p0, v5

    if-nez v4, :cond_1d

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1d

    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_d

    :cond_1d
    sub-int v4, v5, v0

    if-le v4, v2, :cond_23

    move v2, v4

    move v3, v0

    :cond_23
    add-int/lit8 v0, v5, 0x2

    goto :goto_9

    :cond_26
    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    :cond_2b
    :goto_2b
    array-length v4, p0

    if-ge v1, v4, :cond_53

    if-ne v1, v3, :cond_3a

    invoke-virtual {v0, v6}, LgK/e;->b(I)LgK/e;

    add-int/2addr v1, v2

    if-ne v1, v7, :cond_2b

    invoke-virtual {v0, v6}, LgK/e;->b(I)LgK/e;

    goto :goto_2b

    :cond_3a
    if-lez v1, :cond_3f

    invoke-virtual {v0, v6}, LgK/e;->b(I)LgK/e;

    :cond_3f
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, LgK/e;->i(J)LgK/e;

    add-int/lit8 v1, v1, 0x2

    goto :goto_2b

    :cond_53
    invoke-virtual {v0}, LgK/e;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)V
    .registers 10

    const/4 v5, 0x1

    if-ne p2, p3, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_10

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_35

    :cond_10
    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    :goto_1e
    move v2, p2

    :goto_1f
    if-ge v2, p3, :cond_3

    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-ge v3, p3, :cond_45

    move v4, v5

    :goto_2a
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lss/y$a;->a(Ljava/lang/String;IIZZ)V

    if-eqz v4, :cond_33

    add-int/lit8 v3, v3, 0x1

    :cond_33
    move v2, v3

    goto :goto_1f

    :cond_35
    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v1, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_45
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 14

    const/4 v5, 0x0

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lss/y$a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-direct {p0, v1}, Lss/y$a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lss/y$a;->d()V

    goto :goto_13

    :cond_1e
    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v2, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v2, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_41
    if-eqz p4, :cond_13

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_4b
    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41
.end method

.method private static a(Ljava/lang/String;II[BI)Z
    .registers 12

    const/4 v1, 0x0

    move v0, p1

    move v4, p4

    :goto_3
    if-ge v0, p2, :cond_4a

    array-length v2, p3

    if-ne v4, v2, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    if-eq v4, p4, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_16

    move v0, v1

    goto :goto_9

    :cond_16
    add-int/lit8 v0, v0, 0x1

    :cond_18
    move v2, v1

    move v3, v0

    :goto_1a
    if-ge v3, p2, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_28

    const/16 v6, 0x39

    if-le v5, v6, :cond_2e

    :cond_28
    sub-int v0, v3, v0

    if-nez v0, :cond_42

    move v0, v1

    goto :goto_9

    :cond_2e
    if-nez v2, :cond_34

    if-eq v0, v3, :cond_34

    move v0, v1

    goto :goto_9

    :cond_34
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    const/16 v5, 0xff

    if-le v2, v5, :cond_3f

    move v0, v1

    goto :goto_9

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_42
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    goto :goto_3

    :cond_4a
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_50

    move v0, v1

    goto :goto_9

    :cond_50
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 11

    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_17

    if-le v1, v7, :cond_1b

    :cond_17
    if-lt v1, v4, :cond_e

    if-gt v1, v5, :cond_e

    :cond_1b
    add-int/lit8 v1, p1, 0x1

    :goto_1d
    if-ge v1, p2, :cond_e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_27

    if-le v2, v7, :cond_3f

    :cond_27
    if-lt v2, v4, :cond_2b

    if-le v2, v5, :cond_3f

    :cond_2b
    const/16 v3, 0x30

    if-lt v2, v3, :cond_33

    const/16 v3, 0x39

    if-le v2, v3, :cond_3f

    :cond_33
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_42

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_42
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method

.method private static d(Ljava/lang/String;II)I
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_1a
    move v0, p2

    :sswitch_1b
    return v0

    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1b
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v1, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    iget-object v1, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static e(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lss/y;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lss/y$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_28
    if-nez v0, :cond_35

    const/4 v0, 0x0

    :goto_2b
    return-object v0

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Lss/y$a;->f(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_28

    :cond_35
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_43

    invoke-static {v0}, Lss/y$a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_49
    invoke-static {v0}, Lss/ss/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static f(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 15

    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    :goto_c
    if-ge v0, p2, :cond_2b

    array-length v6, v8

    if-ne v2, v6, :cond_13

    move-object v0, v3

    :goto_12
    return-object v0

    :cond_13
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_32

    const-string v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_32

    if-eq v1, v7, :cond_24

    move-object v0, v3

    goto :goto_12

    :cond_24
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v2, 0x2

    if-ne v0, p2, :cond_a1

    move v2, v1

    :cond_2b
    :goto_2b
    array-length v0, v8

    if-eq v2, v0, :cond_94

    if-ne v1, v7, :cond_85

    move-object v0, v3

    goto :goto_12

    :cond_32
    if-eqz v2, :cond_3e

    const-string v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_55

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    :goto_3e
    move v4, v5

    move v6, v0

    :goto_40
    if-ge v6, p2, :cond_4c

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lss/y;->a(C)I

    move-result v9

    if-ne v9, v7, :cond_6c

    :cond_4c
    sub-int v9, v6, v0

    if-eqz v9, :cond_53

    const/4 v10, 0x4

    if-le v9, v10, :cond_72

    :cond_53
    move-object v0, v3

    goto :goto_12

    :cond_55
    const-string v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6a

    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lss/y$a;->a(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_67

    move-object v0, v3

    goto :goto_12

    :cond_67
    add-int/lit8 v2, v2, 0x2

    goto :goto_2b

    :cond_6a
    move-object v0, v3

    goto :goto_12

    :cond_6c
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_72
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    goto :goto_c

    :cond_85
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_94
    :try_start_94
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_97
    .catch Ljava/net/UnknownHostException; {:try_start_94 .. :try_end_97} :catch_9a

    move-result-object v0

    goto/16 :goto_12

    :catch_9a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a1
    move v2, v1

    goto :goto_3e
.end method

.method private static g(Ljava/lang/String;II)I
    .registers 12

    const/4 v8, -0x1

    :try_start_1
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_11} :catch_1c

    move-result v0

    if-lez v0, :cond_1a

    const v1, 0xffff

    if-gt v0, v1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v8

    goto :goto_19

    :catch_1c
    move-exception v0

    move v0, v8

    goto :goto_19
.end method


# virtual methods
.method a()I
    .registers 3

    iget v0, p0, Lss/y$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lss/y$a;->e:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lss/y;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method a(Lss/y;Ljava/lang/String;)Lss/y$a$a;
    .registers 16

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lss/ss/j;->a(Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Lss/ss/j;->b(Ljava/lang/String;II)I

    move-result v11

    invoke-static {p2, v2, v11}, Lss/y$a;->b(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7b

    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "https"

    iput-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    const-string v0, "https:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    :goto_2f
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p2, v2, v11}, Lss/y$a;->c(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_46

    if-eqz p1, :cond_46

    invoke-static {p1}, Lss/y;->a(Lss/y;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lss/y$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17a

    :cond_46
    add-int/2addr v2, v3

    move v8, v0

    move v9, v1

    move v1, v2

    :goto_4a
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_87

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_56
    sparse-switch v0, :sswitch_data_1b6

    move v0, v8

    move v2, v1

    move v1, v9

    :goto_5c
    move v8, v0

    move v9, v1

    move v1, v2

    goto :goto_4a

    :cond_60
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "http"

    iput-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    const-string v0, "http:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2f

    :cond_78
    sget-object v0, Lss/y$a$a;->c:Lss/y$a$a;

    :goto_7a
    return-object v0

    :cond_7b
    if-eqz p1, :cond_84

    invoke-static {p1}, Lss/y;->a(Lss/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    goto :goto_2f

    :cond_84
    sget-object v0, Lss/y$a$a;->b:Lss/y$a$a;

    goto :goto_7a

    :cond_87
    const/4 v0, -0x1

    goto :goto_56

    :sswitch_89
    if-nez v8, :cond_d2

    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Lss/ss/j;->a(Ljava/lang/String;IIC)I

    move-result v2

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_b7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lss/y$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b7
    iput-object v0, p0, Lss/y$a;->b:Ljava/lang/String;

    if-eq v2, v10, :cond_cc

    const/4 v8, 0x1

    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->c:Ljava/lang/String;

    :cond_cc
    const/4 v9, 0x1

    :goto_cd
    add-int/lit8 v2, v10, 0x1

    move v0, v8

    move v1, v9

    goto :goto_5c

    :cond_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lss/y$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->c:Ljava/lang/String;

    goto :goto_cd

    :sswitch_fa
    invoke-static {p2, v1, v10}, Lss/y$a;->d(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_119

    invoke-static {p2, v1, v0}, Lss/y$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lss/y$a;->d:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Lss/y$a;->g(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lss/y$a;->e:I

    iget v0, p0, Lss/y$a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_127

    sget-object v0, Lss/y$a$a;->d:Lss/y$a$a;

    goto/16 :goto_7a

    :cond_119
    invoke-static {p2, v1, v0}, Lss/y$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lss/y;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lss/y$a;->e:I

    :cond_127
    iget-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    if-nez v0, :cond_12f

    sget-object v0, Lss/y$a$a;->e:Lss/y$a$a;

    goto/16 :goto_7a

    :cond_12f
    move v2, v10

    :cond_130
    :goto_130
    const-string v0, "?#"

    invoke-static {p2, v2, v11, v0}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lss/y$a;->a(Ljava/lang/String;II)V

    if-ge v0, v11, :cond_1b3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1b3

    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Lss/ss/j;->a(Ljava/lang/String;IIC)I

    move-result v2

    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/y;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    :goto_15c
    if-ge v2, v11, :cond_176

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_176

    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->h:Ljava/lang/String;

    :cond_176
    sget-object v0, Lss/y$a$a;->a:Lss/y$a$a;

    goto/16 :goto_7a

    :cond_17a
    invoke-virtual {p1}, Lss/y;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lss/y;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lss/y;->b(Lss/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lss/y;->c(Lss/y;)I

    move-result v0

    iput v0, p0, Lss/y$a;->e:I

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-virtual {p1}, Lss/y;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v2, v11, :cond_1aa

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_130

    :cond_1aa
    invoke-virtual {p1}, Lss/y;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lss/y$a;->c(Ljava/lang/String;)Lss/y$a;

    goto/16 :goto_130

    :cond_1b3
    move v2, v0

    goto :goto_15c

    nop

    :sswitch_data_1b6
    .sparse-switch
        -0x1 -> :sswitch_fa
        0x23 -> :sswitch_fa
        0x2f -> :sswitch_fa
        0x3f -> :sswitch_fa
        0x40 -> :sswitch_89
        0x5c -> :sswitch_fa
    .end sparse-switch
.end method

.method public a(I)Lss/y$a;
    .registers 5

    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_20

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput p1, p0, Lss/y$a;->e:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lss/y$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "http"

    iput-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    :goto_16
    return-object p0

    :cond_17
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "https"

    iput-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    goto :goto_16

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lss/y$a;
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    :cond_17
    iget-object v6, p0, Lss/y$a;->g:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lss/y$a;->g:Ljava/util/List;

    if-eqz p2, :cond_36

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_36
    const/4 v0, 0x0

    goto :goto_32
.end method

.method b()Lss/y$a;
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_9
    if-ge v6, v7, :cond_24

    iget-object v0, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lss/y$a;->f:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    :cond_24
    iget-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_2f
    if-ge v0, v1, :cond_4d

    iget-object v3, p0, Lss/y$a;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4a

    iget-object v3, p0, Lss/y$a;->g:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-static/range {v5 .. v10}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4d
    iget-object v0, p0, Lss/y$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lss/y$a;->h:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y$a;->h:Ljava/lang/String;

    :cond_5d
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lss/y$a;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lss/y$a;->e(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iput-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lss/y$a;
    .registers 8

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lss/y;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/y;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lss/y$a;->g:Ljava/util/List;

    return-object p0

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()Lss/y;
    .registers 3

    iget-object v0, p0, Lss/y$a;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lss/y$a;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lss/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/y;-><init>(Lss/y$a;Lss/z;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lss/y$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lss/y$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    iget-object v1, p0, Lss/y$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    iget-object v1, p0, Lss/y$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8b

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_53
    invoke-virtual {p0}, Lss/y$a;->a()I

    move-result v1

    iget-object v2, p0, Lss/y$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lss/y;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_65

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_65
    iget-object v1, p0, Lss/y$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lss/y;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lss/y$a;->g:Ljava/util/List;

    if-eqz v1, :cond_78

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lss/y;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_78
    iget-object v1, p0, Lss/y$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_86

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lss/y$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    iget-object v1, p0, Lss/y$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53
.end method
