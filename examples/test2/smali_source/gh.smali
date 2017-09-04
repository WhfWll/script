.class public final Lgh;
.super Ljava/lang/Object;

# interfaces
.implements Lfr;


# instance fields
.field private a:Lga;


# direct methods
.method constructor <init>(Lga;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh;->a:Lga;

    return-void
.end method


# virtual methods
.method public final a()Lfv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lgf;

    invoke-virtual {p0}, Lgh;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljd;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgf;-><init>([B)V

    return-object v0
.end method

.method public final a()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Lgo;

    iget-object v1, p0, Lgh;->a:Lga;

    invoke-direct {v0, v1}, Lgo;-><init>(Lga;)V

    return-object v0
.end method

.method public final b()Lfv;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lgh;->a()Lfv;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lfu;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException converting stream to byte array: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
