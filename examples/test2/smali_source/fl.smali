.class public final Lfl;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final a:I

.field private final a:Z

.field private final a:[[B


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lid;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lfl;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfl;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lfl;->a:I

    iput-boolean p3, p0, Lfl;->a:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lfl;->a:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lfl;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BB)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lfl;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static a(Ljava/io/InputStream;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_34

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_17

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    if-ltz v0, :cond_27

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_27

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_17

    :cond_27
    if-gez v0, :cond_31

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method private static a(Lhw;)Lfh;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lfl;

    invoke-direct {v0, p0}, Lfl;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lfh;

    invoke-direct {v1}, Lfh;-><init>()V

    :goto_a
    invoke-virtual {v0}, Lfl;->a()Lfv;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v1, v2}, Lfh;->a(Lfg;)V

    goto :goto_a

    :cond_14
    return-object v1
.end method

.method private a(III)Lfv;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_6
    new-instance v2, Lhw;

    invoke-direct {v2, p0, p3}, Lhw;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_1c

    new-instance v1, Lgp;

    invoke-virtual {v2}, Lhw;->a()[B

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lgp;-><init>(ZI[B)V

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    move v0, v1

    goto :goto_6

    :cond_1c
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_2a

    new-instance v1, Lga;

    invoke-direct {v1, v2}, Lga;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0, p2}, Lga;->a(ZI)Lfv;

    move-result-object v0

    goto :goto_19

    :cond_2a
    if-eqz v0, :cond_94

    sparse-switch p2, :sswitch_data_9c

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4a
    invoke-static {v2}, Lfl;->a(Lhw;)Lfh;

    move-result-object v2

    iget-object v0, v2, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [Lfq;

    :goto_56
    array-length v0, v3

    if-eq v1, v0, :cond_64

    invoke-virtual {v2, v1}, Lfh;->a(I)Lfg;

    move-result-object v0

    check-cast v0, Lfq;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_64
    new-instance v0, Lgf;

    invoke-direct {v0, v3}, Lgf;-><init>([Lfq;)V

    goto :goto_19

    :sswitch_6a
    iget-boolean v0, p0, Lfl;->a:Z

    if-eqz v0, :cond_78

    new-instance v0, Lia;

    invoke-virtual {v2}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lia;-><init>([B)V

    goto :goto_19

    :cond_78
    invoke-static {v2}, Lfl;->a(Lhw;)Lfh;

    move-result-object v0

    invoke-static {v0}, Lgw;->a(Lfh;)Lfw;

    move-result-object v0

    goto :goto_19

    :sswitch_81
    invoke-static {v2}, Lfl;->a(Lhw;)Lfh;

    move-result-object v0

    invoke-static {v0}, Lgw;->a(Lfh;)Lfy;

    move-result-object v0

    goto :goto_19

    :sswitch_8a
    new-instance v0, Lgu;

    invoke-static {v2}, Lfl;->a(Lhw;)Lfh;

    move-result-object v1

    invoke-direct {v0, v1}, Lgu;-><init>(Lfh;)V

    goto :goto_19

    :cond_94
    iget-object v0, p0, Lfl;->a:[[B

    invoke-static {p2, v2, v0}, Lfl;->a(ILhw;[[B)Lfv;

    move-result-object v0

    goto/16 :goto_19

    :sswitch_data_9c
    .sparse-switch
        0x4 -> :sswitch_4a
        0x8 -> :sswitch_8a
        0x10 -> :sswitch_6a
        0x11 -> :sswitch_81
    .end sparse-switch
.end method

.method static a(ILhw;[[B)Lfv;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_cc

    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    invoke-virtual {p1}, Lhw;->a()I

    move-result v0

    invoke-static {v0, p1}, Lgr;->a(ILjava/io/InputStream;)Lgr;

    move-result-object v0

    :goto_26
    return-object v0

    :pswitch_27
    new-instance v0, Lgq;

    invoke-static {p1}, Lfl;->a(Lhw;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lgq;-><init>([C)V

    goto :goto_26

    :pswitch_31
    invoke-static {p1, p2}, Lfl;->a(Lhw;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lfe;->a([B)Lfe;

    move-result-object v0

    goto :goto_26

    :pswitch_3a
    invoke-static {p1, p2}, Lfl;->a(Lhw;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lfi;->a([B)Lfi;

    move-result-object v0

    goto :goto_26

    :pswitch_43
    new-instance v0, Lfk;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lfk;-><init>([B)V

    goto :goto_26

    :pswitch_4d
    new-instance v0, Lgx;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgx;-><init>([B)V

    goto :goto_26

    :pswitch_57
    new-instance v0, Lgz;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgz;-><init>([B)V

    goto :goto_26

    :pswitch_61
    new-instance v0, Lfm;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lfm;-><init>([B)V

    goto :goto_26

    :pswitch_6b
    sget-object v0, Lhb;->a:Lhb;

    goto :goto_26

    :pswitch_6e
    new-instance v0, Lhc;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhc;-><init>([B)V

    goto :goto_26

    :pswitch_78
    invoke-static {p1, p2}, Lfl;->a(Lhw;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lfp;->a([B)Lfp;

    move-result-object v0

    goto :goto_26

    :pswitch_81
    new-instance v0, Lhe;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhe;-><init>([B)V

    goto :goto_26

    :pswitch_8b
    new-instance v0, Lhh;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhh;-><init>([B)V

    goto :goto_26

    :pswitch_95
    new-instance v0, Lhm;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhm;-><init>([B)V

    goto :goto_26

    :pswitch_9f
    new-instance v0, Lhq;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhq;-><init>([B)V

    goto/16 :goto_26

    :pswitch_aa
    new-instance v0, Lgc;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgc;-><init>([B)V

    goto/16 :goto_26

    :pswitch_b5
    new-instance v0, Lhp;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhp;-><init>([B)V

    goto/16 :goto_26

    :pswitch_c0
    new-instance v0, Lhr;

    invoke-virtual {p1}, Lhw;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lhr;-><init>([B)V

    goto/16 :goto_26

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_31
        :pswitch_61
        :pswitch_1e
        :pswitch_81
        :pswitch_6b
        :pswitch_78
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3a
        :pswitch_3
        :pswitch_b5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6e
        :pswitch_8b
        :pswitch_95
        :pswitch_3
        :pswitch_57
        :pswitch_aa
        :pswitch_43
        :pswitch_3
        :pswitch_c0
        :pswitch_4d
        :pswitch_9f
        :pswitch_3
        :pswitch_27
    .end packed-switch
.end method

.method private static a(Lhw;[[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lhw;->a()I

    move-result v1

    invoke-virtual {p0}, Lhw;->a()I

    move-result v0

    array-length v2, p1

    if-ge v0, v2, :cond_17

    aget-object v0, p1, v1

    if-nez v0, :cond_13

    new-array v0, v1, [B

    aput-object v0, p1, v1

    :cond_13
    invoke-static {p0, v0}, Ljd;->a(Ljava/io/InputStream;[B)I

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lhw;->a()[B

    move-result-object v0

    goto :goto_16
.end method

.method private static a(Lhw;)[C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lhw;->a()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [C

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_23

    invoke-virtual {p0}, Lhw;->read()I

    move-result v4

    if-ltz v4, :cond_23

    invoke-virtual {p0}, Lhw;->read()I

    move-result v5

    if-ltz v5, :cond_23

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v4, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    goto :goto_9

    :cond_23
    return-object v3
.end method

.method private b()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lfl;->a:I

    invoke-static {p0, v0}, Lfl;->b(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method static b(Ljava/io/InputStream;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_f

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/16 v2, 0x80

    if-ne v0, v2, :cond_15

    const/4 v0, -0x1

    :cond_14
    return v0

    :cond_15
    const/16 v2, 0x7f

    if-le v0, v2, :cond_14

    and-int/lit8 v3, v0, 0x7f

    const/4 v0, 0x4

    if-le v3, v0, :cond_33

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DER length more than 4 bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    move v0, v1

    :goto_34
    if-ge v1, v3, :cond_4c

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_44

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_34

    :cond_4c
    if-gez v0, :cond_56

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    if-lt v0, p1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lfl;->a:I

    return v0
.end method

.method public final a()Lfv;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lfl;->read()I

    move-result v2

    if-gtz v2, :cond_13

    if-nez v2, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    invoke-static {p0, v2}, Lfl;->a(Ljava/io/InputStream;I)I

    move-result v3

    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_1c
    invoke-direct {p0}, Lfl;->b()I

    move-result v4

    if-gez v4, :cond_8b

    if-nez v0, :cond_2e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1c

    :cond_2e
    new-instance v0, Lhy;

    iget v4, p0, Lfl;->a:I

    invoke-direct {v0, p0, v4}, Lhy;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lga;

    iget v5, p0, Lfl;->a:I

    invoke-direct {v4, v0, v5}, Lga;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4a

    new-instance v0, Lfd;

    invoke-direct {v0, v3, v4}, Lfd;-><init>(ILga;)V

    invoke-virtual {v0}, Lfd;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :cond_4a
    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_58

    new-instance v0, Lgn;

    invoke-direct {v0, v1, v3, v4}, Lgn;-><init>(ZILga;)V

    invoke-virtual {v0}, Lgn;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :cond_58
    sparse-switch v3, :sswitch_data_9a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_63
    new-instance v0, Lgh;

    invoke-direct {v0, v4}, Lgh;-><init>(Lga;)V

    invoke-virtual {v0}, Lgh;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :sswitch_6d
    new-instance v0, Lgj;

    invoke-direct {v0, v4}, Lgj;-><init>(Lga;)V

    invoke-virtual {v0}, Lgj;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :sswitch_77
    new-instance v0, Lgl;

    invoke-direct {v0, v4}, Lgl;-><init>(Lga;)V

    invoke-virtual {v0}, Lgl;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :sswitch_81
    new-instance v0, Lgv;

    invoke-direct {v0, v4}, Lgv;-><init>(Lga;)V

    invoke-virtual {v0}, Lgv;->a()Lfv;

    move-result-object v0

    goto :goto_12

    :cond_8b
    :try_start_8b
    invoke-direct {p0, v2, v3, v4}, Lfl;->a(III)Lfv;
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_8e} :catch_90

    move-result-object v0

    goto :goto_12

    :catch_90
    move-exception v0

    new-instance v1, Lfj;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lfj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_9a
    .sparse-switch
        0x4 -> :sswitch_63
        0x8 -> :sswitch_81
        0x10 -> :sswitch_6d
        0x11 -> :sswitch_77
    .end sparse-switch
.end method
