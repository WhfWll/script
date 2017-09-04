.class Lss/ss/ss/p$c;
.super LgK/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lss/ss/ss/p;


# direct methods
.method constructor <init>(Lss/ss/ss/p;)V
    .registers 2

    iput-object p1, p0, Lss/ss/ss/p$c;->a:Lss/ss/ss/p;

    invoke-direct {p0}, LgK/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected a()V
    .registers 3

    iget-object v0, p0, Lss/ss/ss/p$c;->a:Lss/ss/ss/p;

    sget-object v1, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-virtual {v0, v1}, Lss/ss/ss/p;->b(Lss/ss/ss/a;)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lss/ss/ss/p$c;->a_()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lss/ss/ss/p$c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method
