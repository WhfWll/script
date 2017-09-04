.class public final Lhg;
.super Lfs;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lfs;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method final a()Lfs;
    .registers 1

    return-object p0
.end method

.method public final a(Lfg;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lfg;->b()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->c()Lfv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfv;->a(Lfs;)V

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b()Lfs;
    .registers 1

    return-object p0
.end method
