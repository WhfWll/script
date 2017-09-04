.class public final Lss/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/y$a;
    }
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lss/y;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lss/y$a;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lss/y$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lss/y;->b:Ljava/lang/String;

    iget-object v0, p1, Lss/y$a;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lss/y;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y;->c:Ljava/lang/String;

    iget-object v0, p1, Lss/y$a;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lss/y;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y;->d:Ljava/lang/String;

    iget-object v0, p1, Lss/y$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lss/y;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lss/y$a;->a()I

    move-result v0

    iput v0, p0, Lss/y;->f:I

    iget-object v0, p1, Lss/y$a;->f:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lss/y;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lss/y;->g:Ljava/util/List;

    iget-object v0, p1, Lss/y$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Lss/y$a;->g:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lss/y;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_36
    iput-object v0, p0, Lss/y;->h:Ljava/util/List;

    iget-object v0, p1, Lss/y$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p1, Lss/y$a;->h:Ljava/lang/String;

    invoke-static {v0, v3}, Lss/y;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_42
    iput-object v1, p0, Lss/y;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lss/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/y;->j:Ljava/lang/String;

    return-void

    :cond_4b
    move-object v0, v1

    goto :goto_36
.end method

.method synthetic constructor <init>(Lss/y$a;Lss/z;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/y;-><init>(Lss/y$a;)V

    return-void
.end method

.method static a(C)I
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x50

    :goto_a
    return v0

    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x1bb

    goto :goto_a

    :cond_16
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 17

    move v2, p1

    :goto_1
    if-ge v2, p2, :cond_4e

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_30

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_30

    const/16 v1, 0x80

    if-lt v0, v1, :cond_15

    if-nez p7, :cond_30

    :cond_15
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_30

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2a

    if-eqz p4, :cond_30

    if-eqz p5, :cond_2a

    invoke-static {p0, v2, p2}, Lss/y;->a(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2a
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_48

    if-eqz p6, :cond_48

    :cond_30
    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    invoke-virtual {v0, p0, p1, v2}, LgK/e;->a(Ljava/lang/String;II)LgK/e;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lss/y;->a(LgK/e;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    invoke-virtual {v0}, LgK/e;->o()Ljava/lang/String;

    move-result-object v0

    :goto_47
    return-object v0

    :cond_48
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_4e
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_47
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_11

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_21

    if-eqz p3, :cond_21

    :cond_11
    new-instance v1, LgK/e;

    invoke-direct {v1}, LgK/e;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, LgK/e;->a(Ljava/lang/String;II)LgK/e;

    invoke-static {v1, p0, v0, p2, p3}, Lss/y;->a(LgK/e;Ljava/lang/String;IIZ)V

    invoke-virtual {v1}, LgK/e;->o()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 14

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lss/y;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lss/y;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lss/y;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-static {v0, p2}, Lss/y;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f

    :cond_25
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(LgK/e;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .registers 15

    const/16 v5, 0x25

    const/4 v0, 0x0

    :goto_3
    if-ge p2, p3, :cond_85

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    if-eqz p5, :cond_21

    const/16 v1, 0x9

    if-eq v2, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v2, v1, :cond_1b

    const/16 v1, 0xc

    if-eq v2, v1, :cond_1b

    const/16 v1, 0xd

    if-ne v2, v1, :cond_21

    :cond_1b
    :goto_1b
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_3

    :cond_21
    const/16 v1, 0x2b

    if-ne v2, v1, :cond_32

    if-eqz p7, :cond_32

    if-eqz p5, :cond_2f

    const-string v1, "+"

    :goto_2b
    invoke-virtual {p0, v1}, LgK/e;->a(Ljava/lang/String;)LgK/e;

    goto :goto_1b

    :cond_2f
    const-string v1, "%2B"

    goto :goto_2b

    :cond_32
    const/16 v1, 0x20

    if-lt v2, v1, :cond_53

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_53

    const/16 v1, 0x80

    if-lt v2, v1, :cond_40

    if-nez p8, :cond_53

    :cond_40
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_53

    if-ne v2, v5, :cond_81

    if-eqz p5, :cond_53

    if-eqz p6, :cond_81

    invoke-static {p1, p2, p3}, Lss/y;->a(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_81

    :cond_53
    if-nez v0, :cond_5a

    new-instance v0, LgK/e;

    invoke-direct {v0}, LgK/e;-><init>()V

    :cond_5a
    invoke-virtual {v0, v2}, LgK/e;->a(I)LgK/e;

    :goto_5d
    invoke-virtual {v0}, LgK/e;->f()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, LgK/e;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v5}, LgK/e;->b(I)LgK/e;

    sget-object v3, Lss/y;->a:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, LgK/e;->b(I)LgK/e;

    sget-object v3, Lss/y;->a:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, LgK/e;->b(I)LgK/e;

    goto :goto_5d

    :cond_81
    invoke-virtual {p0, v2}, LgK/e;->a(I)LgK/e;

    goto :goto_1b

    :cond_85
    return-void
.end method

.method static a(LgK/e;Ljava/lang/String;IIZ)V
    .registers 10

    const/4 v4, -0x1

    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_46

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_36

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_36

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lss/y;->a(C)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lss/y;->a(C)I

    move-result v3

    if-eq v2, v4, :cond_42

    if-eq v3, v4, :cond_42

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, LgK/e;->b(I)LgK/e;

    add-int/lit8 v0, v0, 0x2

    :goto_30
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_36
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_42

    if-eqz p4, :cond_42

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, LgK/e;->b(I)LgK/e;

    goto :goto_30

    :cond_42
    invoke-virtual {p0, v1}, LgK/e;->a(I)LgK/e;

    goto :goto_30

    :cond_46
    return-void
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_1a

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_1a
    return-void
.end method

.method static a(Ljava/lang/String;II)Z
    .registers 6

    const/4 v2, -0x1

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_27

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_27

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lss/y;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_27

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lss/y;->a(C)I

    move-result v0

    if-eq v0, v2, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method static synthetic b(Lss/y;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_42

    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v4, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_19
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v4, :cond_23

    if-le v3, v1, :cond_31

    :cond_23
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v0, v1, 0x1

    goto :goto_7

    :cond_31
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_42
    return-object v2
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_2e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-lez v2, :cond_1d

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2a

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_6

    :cond_2e
    return-void
.end method

.method static synthetic c(Lss/y;)I
    .registers 2

    iget v0, p0, Lss/y;->f:I

    return v0
.end method

.method public static e(Ljava/lang/String;)Lss/y;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    invoke-virtual {v1, v0, p0}, Lss/y$a;->a(Lss/y;Ljava/lang/String;)Lss/y$a$a;

    move-result-object v2

    sget-object v3, Lss/y$a$a;->a:Lss/y$a$a;

    if-ne v2, v3, :cond_12

    invoke-virtual {v1}, Lss/y$a;->c()Lss/y;

    move-result-object v0

    :cond_12
    return-object v0
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .registers 5

    invoke-virtual {p0}, Lss/y;->m()Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->b()Lss/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/y$a;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_c
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    :try_start_13
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_11

    :catch_20
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lss/y;
    .registers 3

    invoke-virtual {p0, p1}, Lss/y;->d(Ljava/lang/String;)Lss/y$a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lss/y$a;->c()Lss/y;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lss/y;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lss/y;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lss/y;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public d(Ljava/lang/String;)Lss/y$a;
    .registers 5

    new-instance v0, Lss/y$a;

    invoke-direct {v0}, Lss/y$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lss/y$a;->a(Lss/y;Ljava/lang/String;)Lss/y$a$a;

    move-result-object v1

    sget-object v2, Lss/y$a$a;->a:Lss/y$a$a;

    if-ne v1, v2, :cond_e

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lss/y;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lss/y;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lss/y;

    if-eqz v0, :cond_12

    check-cast p1, Lss/y;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lss/y;->j:Ljava/lang/String;

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lss/y;->f:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lss/y;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v5, 0x2f

    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    iget-object v1, p0, Lss/y;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lss/ss/j;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge v0, v1, :cond_37

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v5}, Lss/ss/j;->a(Ljava/lang/String;IIC)I

    move-result v0

    iget-object v4, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    return-object v2
.end method

.method public j()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lss/y;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lss/ss/j;->a(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lss/y;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lss/y;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lss/y;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public l()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lss/y;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lss/y;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public m()Lss/y$a;
    .registers 4

    new-instance v1, Lss/y$a;

    invoke-direct {v1}, Lss/y$a;-><init>()V

    iget-object v0, p0, Lss/y;->b:Ljava/lang/String;

    iput-object v0, v1, Lss/y$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lss/y;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lss/y$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lss/y;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lss/y$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lss/y;->e:Ljava/lang/String;

    iput-object v0, v1, Lss/y$a;->d:Ljava/lang/String;

    iget v0, p0, Lss/y;->f:I

    iget-object v2, p0, Lss/y;->b:Ljava/lang/String;

    invoke-static {v2}, Lss/y;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_43

    iget v0, p0, Lss/y;->f:I

    :goto_25
    iput v0, v1, Lss/y$a;->e:I

    iget-object v0, v1, Lss/y$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Lss/y$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lss/y;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lss/y;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lss/y$a;->c(Ljava/lang/String;)Lss/y$a;

    invoke-virtual {p0}, Lss/y;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lss/y$a;->h:Ljava/lang/String;

    return-object v1

    :cond_43
    const/4 v0, -0x1

    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/y;->j:Ljava/lang/String;

    return-object v0
.end method
