.class public final Lgn;
.super Ljava/lang/Object;

# interfaces
.implements Lfz;


# instance fields
.field private a:I

.field private a:Lga;

.field private a:Z


# direct methods
.method constructor <init>(ZILga;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgn;->a:Z

    iput p2, p0, Lgn;->a:I

    iput-object p3, p0, Lgn;->a:Lga;

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

    iget-object v0, p0, Lgn;->a:Lga;

    iget-boolean v1, p0, Lgn;->a:Z

    iget v2, p0, Lgn;->a:I

    invoke-virtual {v0, v1, v2}, Lga;->a(ZI)Lfv;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lfv;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lgn;->a()Lfv;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lfu;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfu;-><init>(Ljava/lang/String;)V

    throw v1
.end method
