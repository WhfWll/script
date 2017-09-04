.class public Ljn;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:Z

.field public a:[B

.field public b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljn;->c:Z

    iput v1, p0, Ljn;->a:I

    iput-boolean v0, p0, Ljn;->a:Z

    iput-boolean v0, p0, Ljn;->b:Z

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljn;->a([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljn;->c:Z

    iput v1, p0, Ljn;->a:I

    iput-boolean v0, p0, Ljn;->a:Z

    iput-boolean v0, p0, Ljn;->b:Z

    invoke-virtual {p0, p1}, Ljn;->a([B)V

    return-void
.end method

.method private a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Ljn;->c:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    invoke-direct {p0}, Ljn;->a()V

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-le p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    iput p1, p0, Ljn;->a:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    invoke-direct {p0}, Ljn;->a()V

    iput-boolean p1, p0, Ljn;->a:Z

    return-void
.end method

.method public final a([B)V
    .registers 2

    invoke-direct {p0}, Ljn;->a()V

    iput-object p1, p0, Ljn;->a:[B

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Ljn;->b:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljn;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
