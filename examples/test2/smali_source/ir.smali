.class abstract Lir;
.super Ljava/lang/Object;

# interfaces
.implements Ljg;


# instance fields
.field private synthetic a:Liq;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Liq;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lir;->a:Liq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lir;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Ljf;)Lfw;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljf;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lje;

    iget-object v4, v0, Lje;->a:Ljava/lang/String;

    const-string v5, "Proc-Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lje;->b:Ljava/lang/String;

    const-string v5, "4,ENCRYPTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    move v2, v0

    goto :goto_b

    :cond_2e
    iget-object v4, v0, Lje;->a:Ljava/lang/String;

    const-string v5, "DEK-Info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    iget-object v0, v0, Lje;->b:Ljava/lang/String;

    :goto_3a
    move-object v1, v0

    goto :goto_b

    :cond_3c
    invoke-virtual {p1}, Ljf;->a()[B

    move-result-object v0

    if-eqz v2, :cond_7f

    iget-object v3, p0, Lir;->a:Liq;

    invoke-static {v3}, Liq;->a(Liq;)Liv;

    move-result-object v3

    if-nez v3, :cond_52

    new-instance v0, Liu;

    const-string v1, "No password finder specified, but a password is required"

    invoke-direct {v0, v1}, Liu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    iget-object v3, p0, Lir;->a:Liq;

    invoke-static {v3}, Liq;->a(Liq;)Liv;

    move-result-object v3

    invoke-interface {v3}, Liv;->a()[C

    move-result-object v3

    if-nez v3, :cond_66

    new-instance v0, Liu;

    const-string v1, "Password is null, but a password is required"

    invoke-direct {v0, v1}, Liu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljb;->a(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, p0, Lir;->a:Ljava/lang/String;

    invoke-static {v5, v0, v3, v1, v4}, Liq;->a(Ljava/lang/String;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    :cond_7f
    :try_start_7f
    invoke-static {v0}, Lfv;->a([B)Lfv;

    move-result-object v0

    invoke-static {v0}, Lfw;->a(Ljava/lang/Object;)Lfw;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_86} :catch_9d

    move-result-object v0

    return-object v0

    :catch_88
    move-exception v0

    if-eqz v2, :cond_93

    new-instance v1, Lip;

    const-string v2, "exception decoding - please check password and data."

    invoke-direct {v1, v2, v0}, Lip;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_93
    new-instance v1, Lip;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lip;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_9d
    move-exception v0

    if-eqz v2, :cond_a8

    new-instance v1, Lip;

    const-string v2, "exception decoding - please check password and data."

    invoke-direct {v1, v2, v0}, Lip;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_a8
    new-instance v1, Lip;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lip;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_b2
    move-object v0, v1

    goto :goto_3a
.end method
