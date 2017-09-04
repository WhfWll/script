.class public final Lgv;
.super Ljava/lang/Object;

# interfaces
.implements Lfg;
.implements Lhx;


# instance fields
.field private a:Lga;


# direct methods
.method public constructor <init>(Lga;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv;->a:Lga;

    return-void
.end method


# virtual methods
.method public final a()Lfv;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lgu;

    iget-object v1, p0, Lgv;->a:Lga;

    invoke-virtual {v1}, Lga;->a()Lfh;

    move-result-object v1

    invoke-direct {v0, v1}, Lgu;-><init>(Lfh;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lfj;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Lfv;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lgv;->a()Lfv;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lfu;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    move-exception v0

    new-instance v1, Lfu;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
