.class final Lft;
.super Lfs;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Lfs;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lft;->a:Z

    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lft;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lft;->a:Z

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Lfs;->b(I)V

    goto :goto_7
.end method
