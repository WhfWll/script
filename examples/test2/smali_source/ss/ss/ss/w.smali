.class Lss/ss/ss/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:LgK/m;

.field private b:I

.field private final c:LgK/g;


# direct methods
.method public constructor <init>(LgK/g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lss/ss/ss/x;

    invoke-direct {v0, p0, p1}, Lss/ss/ss/x;-><init>(Lss/ss/ss/w;LgK/w;)V

    new-instance v1, Lss/ss/ss/y;

    invoke-direct {v1, p0}, Lss/ss/ss/y;-><init>(Lss/ss/ss/w;)V

    new-instance v2, LgK/m;

    invoke-direct {v2, v0, v1}, LgK/m;-><init>(LgK/w;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lss/ss/ss/w;->a:LgK/m;

    iget-object v0, p0, Lss/ss/ss/w;->a:LgK/m;

    invoke-static {v0}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    iput-object v0, p0, Lss/ss/ss/w;->c:LgK/g;

    return-void
.end method

.method static synthetic a(Lss/ss/ss/w;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/w;->b:I

    return v0
.end method

.method static synthetic a(Lss/ss/ss/w;I)I
    .registers 2

    iput p1, p0, Lss/ss/ss/w;->b:I

    return p1
.end method

.method private b()LgK/h;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/w;->c:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v0

    iget-object v1, p0, Lss/ss/ss/w;->c:LgK/g;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, LgK/g;->c(J)LgK/h;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/ss/w;->b:I

    if-lez v0, :cond_28

    iget-object v0, p0, Lss/ss/ss/w;->a:LgK/m;

    invoke-virtual {v0}, LgK/m;->b()Z

    iget v0, p0, Lss/ss/ss/w;->b:I

    if-eqz v0, :cond_28

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ss/ss/w;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lss/ss/ss/w;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lss/ss/ss/w;->b:I

    iget-object v0, p0, Lss/ss/ss/w;->c:LgK/g;

    invoke-interface {v0}, LgK/g;->j()I

    move-result v1

    if-gez v1, :cond_26

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/16 v0, 0x400

    if-le v1, v0, :cond_43

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numberOfPairs > 1024: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_49
    if-ge v0, v1, :cond_70

    invoke-direct {p0}, Lss/ss/ss/w;->b()LgK/h;

    move-result-object v3

    invoke-virtual {v3}, LgK/h;->e()LgK/h;

    move-result-object v3

    invoke-direct {p0}, Lss/ss/ss/w;->b()LgK/h;

    move-result-object v4

    invoke-virtual {v3}, LgK/h;->f()I

    move-result v5

    if-nez v5, :cond_65

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    new-instance v5, Lss/ss/ss/r;

    invoke-direct {v5, v3, v4}, Lss/ss/ss/r;-><init>(LgK/h;LgK/h;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_70
    invoke-direct {p0}, Lss/ss/ss/w;->c()V

    return-object v2
.end method

.method public a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/ss/w;->c:LgK/g;

    invoke-interface {v0}, LgK/g;->close()V

    return-void
.end method
