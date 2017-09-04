.class public Lss/ak$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lss/ag;

.field private b:Lss/ae;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lss/v;

.field private f:Lss/w$a;

.field private g:Lss/am;

.field private h:Lss/ak;

.field private i:Lss/ak;

.field private j:Lss/ak;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lss/ak$a;->c:I

    new-instance v0, Lss/w$a;

    invoke-direct {v0}, Lss/w$a;-><init>()V

    iput-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    return-void
.end method

.method private constructor <init>(Lss/ak;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lss/ak$a;->c:I

    invoke-static {p1}, Lss/ak;->a(Lss/ak;)Lss/ag;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->a:Lss/ag;

    invoke-static {p1}, Lss/ak;->b(Lss/ak;)Lss/ae;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->b:Lss/ae;

    invoke-static {p1}, Lss/ak;->c(Lss/ak;)I

    move-result v0

    iput v0, p0, Lss/ak$a;->c:I

    invoke-static {p1}, Lss/ak;->d(Lss/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lss/ak;->e(Lss/ak;)Lss/v;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->e:Lss/v;

    invoke-static {p1}, Lss/ak;->f(Lss/ak;)Lss/w;

    move-result-object v0

    invoke-virtual {v0}, Lss/w;->b()Lss/w$a;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    invoke-static {p1}, Lss/ak;->g(Lss/ak;)Lss/am;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->g:Lss/am;

    invoke-static {p1}, Lss/ak;->h(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->h:Lss/ak;

    invoke-static {p1}, Lss/ak;->i(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->i:Lss/ak;

    invoke-static {p1}, Lss/ak;->j(Lss/ak;)Lss/ak;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->j:Lss/ak;

    return-void
.end method

.method synthetic constructor <init>(Lss/ak;Lss/al;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ak$a;-><init>(Lss/ak;)V

    return-void
.end method

.method static synthetic a(Lss/ak$a;)Lss/ag;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->a:Lss/ag;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lss/ak;)V
    .registers 6

    invoke-static {p2}, Lss/ak;->g(Lss/ak;)Lss/am;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {p2}, Lss/ak;->h(Lss/ak;)Lss/ak;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-static {p2}, Lss/ak;->i(Lss/ak;)Lss/ak;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    invoke-static {p2}, Lss/ak;->j(Lss/ak;)Lss/ak;

    move-result-object v0

    if-eqz v0, :cond_7c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    return-void
.end method

.method static synthetic b(Lss/ak$a;)Lss/ae;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->b:Lss/ae;

    return-object v0
.end method

.method static synthetic c(Lss/ak$a;)I
    .registers 2

    iget v0, p0, Lss/ak$a;->c:I

    return v0
.end method

.method static synthetic d(Lss/ak$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lss/ak;)V
    .registers 4

    invoke-static {p1}, Lss/ak;->g(Lss/ak;)Lss/am;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method static synthetic e(Lss/ak$a;)Lss/v;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->e:Lss/v;

    return-object v0
.end method

.method static synthetic f(Lss/ak$a;)Lss/w$a;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    return-object v0
.end method

.method static synthetic g(Lss/ak$a;)Lss/am;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->g:Lss/am;

    return-object v0
.end method

.method static synthetic h(Lss/ak$a;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->h:Lss/ak;

    return-object v0
.end method

.method static synthetic i(Lss/ak$a;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->i:Lss/ak;

    return-object v0
.end method

.method static synthetic j(Lss/ak$a;)Lss/ak;
    .registers 2

    iget-object v0, p0, Lss/ak$a;->j:Lss/ak;

    return-object v0
.end method


# virtual methods
.method public a(I)Lss/ak$a;
    .registers 2

    iput p1, p0, Lss/ak$a;->c:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lss/ak$a;
    .registers 2

    iput-object p1, p0, Lss/ak$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;
    .registers 4

    iget-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    invoke-virtual {v0, p1, p2}, Lss/w$a;->c(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    return-object p0
.end method

.method public a(Lss/ae;)Lss/ak$a;
    .registers 2

    iput-object p1, p0, Lss/ak$a;->b:Lss/ae;

    return-object p0
.end method

.method public a(Lss/ag;)Lss/ak$a;
    .registers 2

    iput-object p1, p0, Lss/ak$a;->a:Lss/ag;

    return-object p0
.end method

.method public a(Lss/ak;)Lss/ak$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lss/ak$a;->a(Ljava/lang/String;Lss/ak;)V

    :cond_7
    iput-object p1, p0, Lss/ak$a;->h:Lss/ak;

    return-object p0
.end method

.method public a(Lss/am;)Lss/ak$a;
    .registers 2

    iput-object p1, p0, Lss/ak$a;->g:Lss/am;

    return-object p0
.end method

.method public a(Lss/v;)Lss/ak$a;
    .registers 2

    iput-object p1, p0, Lss/ak$a;->e:Lss/v;

    return-object p0
.end method

.method public a(Lss/w;)Lss/ak$a;
    .registers 3

    invoke-virtual {p1}, Lss/w;->b()Lss/w$a;

    move-result-object v0

    iput-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    return-object p0
.end method

.method public a()Lss/ak;
    .registers 4

    iget-object v0, p0, Lss/ak$a;->a:Lss/ag;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lss/ak$a;->b:Lss/ae;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lss/ak$a;->c:I

    if-gez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lss/ak$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lss/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ak;-><init>(Lss/ak$a;Lss/al;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lss/ak$a;
    .registers 4

    iget-object v0, p0, Lss/ak$a;->f:Lss/w$a;

    invoke-virtual {v0, p1, p2}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    return-object p0
.end method

.method public b(Lss/ak;)Lss/ak$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lss/ak$a;->a(Ljava/lang/String;Lss/ak;)V

    :cond_7
    iput-object p1, p0, Lss/ak$a;->i:Lss/ak;

    return-object p0
.end method

.method public c(Lss/ak;)Lss/ak$a;
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lss/ak$a;->d(Lss/ak;)V

    :cond_5
    iput-object p1, p0, Lss/ak$a;->j:Lss/ak;

    return-object p0
.end method
