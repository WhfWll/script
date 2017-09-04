.class public final Lss/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lss/ss/e;

.field private final b:Lss/ss/b;


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/d;->b:Lss/ss/b;

    invoke-virtual {v0}, Lss/ss/b;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/d;->b:Lss/ss/b;

    invoke-virtual {v0}, Lss/ss/b;->flush()V

    return-void
.end method
