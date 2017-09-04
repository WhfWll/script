.class public final Liq;
.super Ljh;


# instance fields
.field private a:Liv;

.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "BC"

    invoke-direct {p0, p1, v0, v1}, Liq;-><init>(Ljava/io/Reader;Liv;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Liv;)V
    .registers 4

    const-string v0, "BC"

    invoke-direct {p0, p1, p2, v0}, Liq;-><init>(Ljava/io/Reader;Liv;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;Liv;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3, p3}, Liq;-><init>(Ljava/io/Reader;Liv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;Liv;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Ljh;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liq;->a:Ljava/util/Map;

    iput-object p2, p0, Liq;->a:Liv;

    iget-object v0, p0, Liq;->a:Ljava/util/Map;

    const-string v1, "CERTIFICATE"

    new-instance v2, Lit;

    invoke-direct {v2, p4}, Lit;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Liq;->a:Ljava/util/Map;

    const-string v1, "RSA PRIVATE KEY"

    new-instance v2, Lis;

    invoke-direct {v2, p0, p3, p4}, Lis;-><init>(Liq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Liq;)Liv;
    .registers 2

    iget-object v0, p0, Liq;->a:Liv;

    return-object v0
.end method

.method private static a([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Liq;->a([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static a([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Lij;

    invoke-direct {v3}, Lij;-><init>()V

    if-eqz p0, :cond_39

    array-length v0, p0

    new-array v2, v0, [B

    move v0, v1

    :goto_c
    array-length v4, v2

    if-eq v0, v4, :cond_17

    aget-char v4, p0, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    move-object v0, v2

    :goto_18
    invoke-virtual {v3, v0, p3}, Lij;->b([B[B)V

    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {v3, v0}, Lij;->a(I)Lif;

    move-result-object v0

    check-cast v0, Lif;

    iget-object v0, v0, Lif;->a:[B

    if-eqz p4, :cond_33

    array-length v2, v0

    const/16 v3, 0x18

    if-lt v2, v3, :cond_33

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_33
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_39
    new-array v0, v1, [B

    goto :goto_18
.end method

.method static a(Ljava/lang/String;[B[CLjava/lang/String;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1e

    new-instance v0, Lio;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    invoke-static {v0, p1, p2, p3, p4}, Liq;->a(Ljava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/Provider;[B[CLjava/lang/String;[B)[B
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x80

    const/4 v3, 0x0

    const/16 v7, 0x8

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "CBC"

    const-string v0, "PKCS5Padding"

    const-string v5, "-CFB"

    invoke-virtual {p3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v1, "CFB"

    const-string v0, "NoPadding"

    :cond_1a
    const-string v5, "-ECB"

    invoke-virtual {p3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "DES-EDE"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "DES-EDE3"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    :cond_32
    const-string v1, "ECB"

    const/4 v2, 0x0

    :cond_35
    const-string v5, "-OFB"

    invoke-virtual {p3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v1, "OFB"

    const-string v0, "NoPadding"

    :cond_41
    const-string v5, "DES-EDE"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    const-string v4, "DESede"

    const-string v5, "DES-EDE3"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    const/4 v3, 0x1

    :cond_54
    const/16 v5, 0x18

    invoke-static {p2, v4, v5, p4, v3}, Liq;->a([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v8, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v8

    :goto_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_7f
    invoke-static {v0, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    if-nez v3, :cond_13a

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_89
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8c} :catch_140

    move-result-object v0

    return-object v0

    :cond_8e
    const-string v5, "DES-"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    const-string v3, "DES"

    invoke-static {p2, v3, v7, p4}, Liq;->a([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_5e

    :cond_a0
    const-string v5, "BF-"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    const-string v3, "Blowfish"

    const/16 v4, 0x10

    invoke-static {p2, v3, v4, p4}, Liq;->a([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_5e

    :cond_b4
    const-string v5, "RC2-"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    const-string v5, "RC2"

    const-string v3, "RC2-40-"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d8

    const/16 v3, 0x28

    :goto_c8
    div-int/lit8 v4, v3, 0x8

    invoke-static {p2, v5, v4, p4}, Liq;->a([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    if-nez v2, :cond_e3

    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    move-object v3, v2

    move-object v2, v5

    goto :goto_5e

    :cond_d8
    const-string v3, "RC2-64-"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_149

    const/16 v3, 0x40

    goto :goto_c8

    :cond_e3
    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {v2, v3, p4}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_5e

    :cond_ec
    const-string v5, "AES-"

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_132

    const-string v6, "AES"

    array-length v5, p4

    if-le v5, v7, :cond_ff

    new-array v5, v7, [B

    invoke-static {p4, v3, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v5

    :cond_ff
    const-string v3, "AES-128-"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    :goto_107
    const-string v3, "AES"

    div-int/lit8 v4, v4, 0x8

    invoke-static {p2, v3, v4, p4}, Liq;->a([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v6

    goto/16 :goto_5e

    :cond_114
    const-string v3, "AES-192-"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11f

    const/16 v4, 0xc0

    goto :goto_107

    :cond_11f
    const-string v3, "AES-256-"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12a

    const/16 v4, 0x100

    goto :goto_107

    :cond_12a
    new-instance v0, Lio;

    const-string v1, "unknown AES encryption with private key"

    invoke-direct {v0, v1}, Lio;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_132
    new-instance v0, Lio;

    const-string v1, "unknown encryption with private key"

    invoke-direct {v0, v1}, Lio;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13a
    const/4 v1, 0x2

    :try_start_13b
    invoke-virtual {v0, v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_140

    goto/16 :goto_89

    :catch_140
    move-exception v0

    new-instance v1, Lio;

    const-string v2, "exception using cipher - please check password and data."

    invoke-direct {v1, v2, v0}, Lio;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_149
    move v3, v4

    goto/16 :goto_c8
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljh;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-eqz v1, :cond_15

    const-string v2, "-----BEGIN "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Ljh;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_15
    if-eqz v1, :cond_bf

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----END "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_42
    invoke-virtual {p0}, Ljh;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7c

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6d

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lje;

    invoke-direct {v6, v7, v5}, Lje;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :cond_6d
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7c

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    :cond_7c
    if-nez v5, :cond_97

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    new-instance v1, Ljf;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Liw;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Ljf;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    :goto_a4
    if-eqz v1, :cond_be

    invoke-virtual {v1}, Ljf;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Liq;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    iget-object v2, p0, Liq;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljg;

    invoke-interface {v0, v1}, Ljg;->a(Ljf;)Ljava/lang/Object;

    move-result-object v0

    :cond_be
    return-object v0

    :cond_bf
    move-object v1, v0

    goto :goto_a4

    :cond_c1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unrecognised object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
