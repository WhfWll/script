.class public final Lorg/json/alipay/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/io/Reader;

.field private c:C

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_a
    iput-object p1, p0, Lorg/json/alipay/d;->b:Ljava/io/Reader;

    iput-boolean v1, p0, Lorg/json/alipay/d;->d:Z

    iput v1, p0, Lorg/json/alipay/d;->a:I

    return-void

    :cond_11
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_a
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/alipay/d;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-array v1, p1, [C

    iget-boolean v2, p0, Lorg/json/alipay/d;->d:Z

    if-eqz v2, :cond_13

    iput-boolean v0, p0, Lorg/json/alipay/d;->d:Z

    iget-char v2, p0, Lorg/json/alipay/d;->c:C

    aput-char v2, v1, v0

    const/4 v0, 0x1

    :cond_13
    :goto_13
    if-ge v0, p1, :cond_29

    :try_start_15
    iget-object v2, p0, Lorg/json/alipay/d;->b:Ljava/io/Reader;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_22

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_29

    add-int/2addr v0, v2

    goto :goto_13

    :catch_22
    move-exception v0

    new-instance v1, Lorg/json/alipay/a;

    invoke-direct {v1, v0}, Lorg/json/alipay/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    iget v2, p0, Lorg/json/alipay/d;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/json/alipay/d;->a:I

    if-ge v0, p1, :cond_37

    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_37
    add-int/lit8 v0, p1, -0x1

    aget-char v0, v1, v0

    iput-char v0, p0, Lorg/json/alipay/d;->c:C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/alipay/a;
    .registers 5

    new-instance v0, Lorg/json/alipay/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/alipay/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lorg/json/alipay/d;->d:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/json/alipay/d;->a:I

    if-gtz v0, :cond_10

    :cond_8
    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget v0, p0, Lorg/json/alipay/d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/json/alipay/d;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/alipay/d;->d:Z

    return-void
.end method

.method public final b()C
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/json/alipay/d;->d:Z

    if-eqz v1, :cond_14

    iput-boolean v0, p0, Lorg/json/alipay/d;->d:Z

    iget-char v0, p0, Lorg/json/alipay/d;->c:C

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/json/alipay/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/json/alipay/d;->a:I

    :cond_11
    iget-char v0, p0, Lorg/json/alipay/d;->c:C

    :goto_13
    return v0

    :cond_14
    :try_start_14
    iget-object v1, p0, Lorg/json/alipay/d;->b:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1f

    move-result v1

    if-gtz v1, :cond_26

    iput-char v0, p0, Lorg/json/alipay/d;->c:C

    goto :goto_13

    :catch_1f
    move-exception v0

    new-instance v1, Lorg/json/alipay/a;

    invoke-direct {v1, v0}, Lorg/json/alipay/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_26
    iget v0, p0, Lorg/json/alipay/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/json/alipay/d;->a:I

    int-to-char v0, v1

    iput-char v0, p0, Lorg/json/alipay/d;->c:C

    iget-char v0, p0, Lorg/json/alipay/d;->c:C

    goto :goto_13
.end method

.method public final c()C
    .registers 6

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v0, 0x2f

    :cond_6
    :goto_6
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    if-ne v1, v0, :cond_3c

    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    sparse-switch v1, :sswitch_data_54

    invoke-virtual {p0}, Lorg/json/alipay/d;->a()V

    :goto_16
    return v0

    :cond_17
    :sswitch_17
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_6

    if-nez v1, :cond_17

    goto :goto_6

    :cond_22
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2f

    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    if-eq v1, v0, :cond_6

    invoke-virtual {p0}, Lorg/json/alipay/d;->a()V

    :cond_2f
    :sswitch_2f
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    if-nez v1, :cond_22

    const-string v0, "Unclosed comment"

    invoke-virtual {p0, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_3c
    const/16 v2, 0x23

    if-ne v1, v2, :cond_4b

    :cond_40
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    if-eq v1, v3, :cond_6

    if-eq v1, v4, :cond_6

    if-nez v1, :cond_40

    goto :goto_6

    :cond_4b
    if-eqz v1, :cond_51

    const/16 v2, 0x20

    if-le v1, v2, :cond_6

    :cond_51
    move v0, v1

    goto :goto_16

    nop

    :sswitch_data_54
    .sparse-switch
        0x2a -> :sswitch_2f
        0x2f -> :sswitch_17
    .end sparse-switch
.end method

.method public final d()Ljava/lang/Object;
    .registers 9

    const/16 v7, 0x30

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-virtual {p0}, Lorg/json/alipay/d;->c()C

    move-result v2

    sparse-switch v2, :sswitch_data_144

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v2

    :goto_15
    const/16 v3, 0x20

    if-lt v0, v3, :cond_9b

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_9b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v0

    goto :goto_15

    :sswitch_29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2e
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    sparse-switch v1, :sswitch_data_15a

    if-ne v1, v2, :cond_85

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    return-object v0

    :sswitch_3c
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :sswitch_43
    invoke-virtual {p0}, Lorg/json/alipay/d;->b()C

    move-result v1

    sparse-switch v1, :sswitch_data_16c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_4e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_52
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_58
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_5e
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_64
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_6a
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lorg/json/alipay/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_78
    invoke-direct {p0, v4}, Lorg/json/alipay/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :cond_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2e

    :sswitch_89
    invoke-virtual {p0}, Lorg/json/alipay/d;->a()V

    new-instance v0, Lorg/json/alipay/c;

    invoke-direct {v0, p0}, Lorg/json/alipay/c;-><init>(Lorg/json/alipay/d;)V

    goto :goto_3b

    :sswitch_92
    invoke-virtual {p0}, Lorg/json/alipay/d;->a()V

    new-instance v0, Lorg/json/alipay/b;

    invoke-direct {v0, p0}, Lorg/json/alipay/b;-><init>(Lorg/json/alipay/d;)V

    goto :goto_3b

    :cond_9b
    invoke-virtual {p0}, Lorg/json/alipay/d;->a()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_b5
    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_3b

    :cond_c1
    const-string v0, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3b

    :cond_cd
    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    sget-object v0, Lorg/json/alipay/c;->a:Ljava/lang/Object;

    goto/16 :goto_3b

    :cond_d9
    if-lt v2, v7, :cond_df

    const/16 v0, 0x39

    if-le v2, v0, :cond_eb

    :cond_df
    const/16 v0, 0x2e

    if-eq v2, v0, :cond_eb

    const/16 v0, 0x2d

    if-eq v2, v0, :cond_eb

    const/16 v0, 0x2b

    if-ne v2, v0, :cond_140

    :cond_eb
    if-ne v2, v7, :cond_116

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_131

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x78

    if-eq v0, v2, :cond_103

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x58

    if-ne v0, v2, :cond_131

    :cond_103
    :try_start_103
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_113} :catch_115

    goto/16 :goto_3b

    :catch_115
    move-exception v0

    :cond_116
    :goto_116
    :try_start_116
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11b} :catch_11d

    goto/16 :goto_3b

    :catch_11d
    move-exception v0

    :try_start_11e
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_123} :catch_125

    goto/16 :goto_3b

    :catch_125
    move-exception v0

    :try_start_126
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12b} :catch_12d

    goto/16 :goto_3b

    :catch_12d
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3b

    :cond_131
    :try_start_131
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_13c} :catch_13e

    goto/16 :goto_3b

    :catch_13e
    move-exception v0

    goto :goto_116

    :cond_140
    move-object v0, v1

    goto/16 :goto_3b

    nop

    :sswitch_data_144
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_29
        0x28 -> :sswitch_92
        0x5b -> :sswitch_92
        0x7b -> :sswitch_89
    .end sparse-switch

    :sswitch_data_15a
    .sparse-switch
        0x0 -> :sswitch_3c
        0xa -> :sswitch_3c
        0xd -> :sswitch_3c
        0x5c -> :sswitch_43
    .end sparse-switch

    :sswitch_data_16c
    .sparse-switch
        0x62 -> :sswitch_4e
        0x66 -> :sswitch_5e
        0x6e -> :sswitch_58
        0x72 -> :sswitch_64
        0x74 -> :sswitch_52
        0x75 -> :sswitch_6a
        0x78 -> :sswitch_78
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/json/alipay/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
