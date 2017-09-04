.class public final Lss/ss/gK/q;
.super Ljava/lang/Exception;


# virtual methods
.method public a()Ljava/io/IOException;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .registers 2

    invoke-virtual {p0}, Lss/ss/gK/q;->a()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
