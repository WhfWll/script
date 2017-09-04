.class final Lgg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:I

.field private synthetic a:Lgf;


# direct methods
.method constructor <init>(Lgf;)V
    .registers 3

    iput-object p1, p0, Lgg;->a:Lgf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgg;->a:I

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 3

    iget v0, p0, Lgg;->a:I

    iget-object v1, p0, Lgg;->a:Lgf;

    iget-object v1, v1, Lgf;->a:[Lfq;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lgg;->a:Lgf;

    iget-object v0, v0, Lgf;->a:[Lfq;

    iget v1, p0, Lgg;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgg;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
