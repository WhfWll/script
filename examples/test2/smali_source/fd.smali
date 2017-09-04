.class public final Lfd;
.super Ljava/lang/Object;

# interfaces
.implements Lfg;
.implements Lhx;


# instance fields
.field private a:I

.field private a:Lga;


# direct methods
.method constructor <init>(ILga;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfd;->a:I

    iput-object p2, p0, Lfd;->a:Lga;

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

    new-instance v0, Lgd;

    iget v1, p0, Lfd;->a:I

    iget-object v2, p0, Lfd;->a:Lga;

    invoke-virtual {v2}, Lga;->a()Lfh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgd;-><init>(ILfh;)V

    return-object v0
.end method

.method public final b()Lfv;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lfd;->a()Lfv;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lfu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
