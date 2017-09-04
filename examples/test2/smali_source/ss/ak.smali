.class public final Lss/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ak$a;
    }
.end annotation


# instance fields
.field private final a:Lss/ag;

.field private final b:Lss/ae;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lss/v;

.field private final f:Lss/w;

.field private final g:Lss/am;

.field private h:Lss/ak;

.field private i:Lss/ak;

.field private final j:Lss/ak;

.field private volatile k:Lss/e;


# direct methods
.method private constructor <init>(Lss/ak$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/ak$a;->a(Lss/ak$a;)Lss/ag;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->a:Lss/ag;

    invoke-static {p1}, Lss/ak$a;->b(Lss/ak$a;)Lss/ae;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->b:Lss/ae;

    invoke-static {p1}, Lss/ak$a;->c(Lss/ak$a;)I

    move-result v0

    iput v0, p0, Lss/ak;->c:I

    invoke-static {p1}, Lss/ak$a;->d(Lss/ak$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->d:Ljava/lang/String;

    invoke-static {p1}, Lss/ak$a;->e(Lss/ak$a;)Lss/v;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->e:Lss/v;

    invoke-static {p1}, Lss/ak$a;->f(Lss/ak$a;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->f:Lss/w;

    invoke-static {p1}, Lss/ak$a;->g(Lss/ak$a;)Lss/am;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->g:Lss/am;

    invoke-static {p1}, Lss/ak$a;->h(Lss/ak$a;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->h:Lss/ak;

    invoke-static {p1}, Lss/ak$a;->i(Lss/ak$a;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->i:Lss/ak;

    invoke-static {p1}, Lss/ak$a;->j(Lss/ak$a;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->j:Lss/ak;

    return-void
.end method

.method synthetic constructor <init>(Lss/ak$a;Lss/al;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ak;-><init>(Lss/ak$a;)V

    return-void
.end method

.method static synthetic a(Lss/ak;)Lss/ag;
    .registers 2

    iget-object v0, p0, Lss/ak;->a:Lss/ag;

    return-object v0
.end method

.method static synthetic b(Lss/ak;)Lss/ae;
    .registers 2

    iget-object v0, p0, Lss/ak;->b:Lss/ae;

    return-object v0
.end method

.method static synthetic c(Lss/ak;)I
    .registers 2

    iget v0, p0, Lss/ak;->c:I

    return v0
.end method

.method static synthetic d(Lss/ak;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lss/ak;)Lss/v;
    .registers 2

    iget-object v0, p0, Lss/ak;->e:Lss/v;

    return-object v0
.end method

.method static synthetic f(Lss/ak;)Lss/w;
    .registers 2

    iget-object v0, p0, Lss/ak;->f:Lss/w;

    return-object v0
.end method

.method static synthetic g(Lss/ak;)Lss/am;
    .registers 2

    iget-object v0, p0, Lss/ak;->g:Lss/am;

    return-object v0
.end method

.method static synthetic h(Lss/ak;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak;->h:Lss/ak;

    return-object v0
.end method

.method static synthetic i(Lss/ak;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak;->i:Lss/ak;

    return-object v0
.end method

.method static synthetic j(Lss/ak;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak;->j:Lss/ak;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lss/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lss/ak;->f:Lss/w;

    invoke-virtual {v0, p1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p2, v0

    :cond_9
    return-object p2
.end method

.method public a()Lss/ag;
    .registers 2

    iget-object v0, p0, Lss/ak;->a:Lss/ag;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lss/ak;->c:I

    return v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lss/ak;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lss/ak;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()Lss/v;
    .registers 2

    iget-object v0, p0, Lss/ak;->e:Lss/v;

    return-object v0
.end method

.method public e()Lss/w;
    .registers 2

    iget-object v0, p0, Lss/ak;->f:Lss/w;

    return-object v0
.end method

.method public f()Lss/am;
    .registers 2

    iget-object v0, p0, Lss/ak;->g:Lss/am;

    return-object v0
.end method

.method public g()Lss/ak$a;
    .registers 3

    new-instance v0, Lss/ak$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ak$a;-><init>(Lss/ak;Lss/al;)V

    return-object v0
.end method

.method public h()Lss/e;
    .registers 2

    iget-object v0, p0, Lss/ak;->k:Lss/e;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lss/ak;->f:Lss/w;

    invoke-static {v0}, Lss/e;->a(Lss/w;)Lss/e;

    move-result-object v0

    iput-object v0, p0, Lss/ak;->k:Lss/e;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ak;->b:Lss/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lss/ak;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ak;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ak;->a:Lss/ag;

    invoke-virtual {v1}, Lss/ag;->a()Lss/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
