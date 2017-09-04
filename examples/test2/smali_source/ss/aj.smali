.class final Lss/aj;
.super Lss/ai;


# instance fields
.field final synthetic a:Lss/ab;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lss/ab;I[BI)V
    .registers 5

    iput-object p1, p0, Lss/aj;->a:Lss/ab;

    iput p2, p0, Lss/aj;->b:I

    iput-object p3, p0, Lss/aj;->c:[B

    iput p4, p0, Lss/aj;->d:I

    invoke-direct {p0}, Lss/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lss/ab;
    .registers 2

    iget-object v0, p0, Lss/aj;->a:Lss/ab;

    return-object v0
.end method

.method public a(LgK/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/aj;->c:[B

    iget v1, p0, Lss/aj;->d:I

    iget v2, p0, Lss/aj;->b:I

    invoke-interface {p1, v0, v1, v2}, LgK/f;->c([BII)LgK/f;

    return-void
.end method

.method public b()J
    .registers 3

    iget v0, p0, Lss/aj;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
