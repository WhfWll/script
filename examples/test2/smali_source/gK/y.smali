.class final LgK/y;
.super LgK/x;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, LgK/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)LgK/x;
    .registers 3

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)LgK/x;
    .registers 4

    return-object p0
.end method

.method public g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
