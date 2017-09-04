.class final Lis;
.super Lir;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Liq;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lir;-><init>(Liq;Ljava/lang/String;)V

    iput-object p3, p0, Lis;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljf;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lis;->a(Ljf;)Lfw;

    move-result-object v0

    invoke-virtual {v0}, Lfw;->b()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_16

    new-instance v0, Lip;

    const-string v1, "malformed sequence in RSA private key"

    invoke-direct {v0, v1}, Lip;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_61

    :catch_14
    move-exception v0

    throw v0

    :cond_16
    :try_start_16
    instance-of v1, v0, Lie;

    if-eqz v1, :cond_51

    check-cast v0, Lie;

    move-object v8, v0

    :goto_1d
    new-instance v9, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v0, v8, Lie;->a:Ljava/math/BigInteger;

    iget-object v1, v8, Lie;->b:Ljava/math/BigInteger;

    invoke-direct {v9, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    iget-object v1, v8, Lie;->a:Ljava/math/BigInteger;

    iget-object v2, v8, Lie;->b:Ljava/math/BigInteger;

    iget-object v3, v8, Lie;->c:Ljava/math/BigInteger;

    iget-object v4, v8, Lie;->d:Ljava/math/BigInteger;

    iget-object v5, v8, Lie;->e:Ljava/math/BigInteger;

    iget-object v6, v8, Lie;->f:Ljava/math/BigInteger;

    iget-object v7, v8, Lie;->g:Ljava/math/BigInteger;

    iget-object v8, v8, Lie;->h:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v1, "RSA"

    iget-object v2, p0, Lis;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v1, v9}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_51
    if-eqz v0, :cond_5e

    new-instance v1, Lie;

    invoke-static {v0}, Lfw;->a(Ljava/lang/Object;)Lfw;

    move-result-object v0

    invoke-direct {v1, v0}, Lie;-><init>(Lfw;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_5c} :catch_14
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_5c} :catch_61

    move-object v8, v1

    goto :goto_1d

    :cond_5e
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1d

    :catch_61
    move-exception v0

    new-instance v1, Lip;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "problem creating RSA private key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lip;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
