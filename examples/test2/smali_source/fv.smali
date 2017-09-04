.class public abstract Lfv;
.super Lfo;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lfo;-><init>()V

    return-void
.end method

.method public static a([B)Lfv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lfl;

    invoke-direct {v0, p0}, Lfl;-><init>([B)V

    :try_start_5
    invoke-virtual {v0}, Lfl;->a()Lfv;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a(Lfs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method abstract a(Lfv;)Z
.end method

.method public final b()Lfv;
    .registers 1

    return-object p0
.end method

.method c()Lfv;
    .registers 1

    return-object p0
.end method

.method d()Lfv;
    .registers 1

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .end local p1    # "o":Ljava/lang/Object;
    :cond_3
    :goto_3
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Lfg;

    if-eqz v1, :cond_14

    check-cast p1, Lfg;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lfg;->b()Lfv;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfv;->a(Lfv;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract hashCode()I
.end method
