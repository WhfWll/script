.class public final Lss/ag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ag$a;
    }
.end annotation


# instance fields
.field private final a:Lss/y;

.field private final b:Ljava/lang/String;

.field private final c:Lss/w;

.field private final d:Lss/ai;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lss/e;


# direct methods
.method private constructor <init>(Lss/ag$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/ag$a;->a(Lss/ag$a;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ag;->a:Lss/y;

    invoke-static {p1}, Lss/ag$a;->b(Lss/ag$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/ag;->b:Ljava/lang/String;

    invoke-static {p1}, Lss/ag$a;->c(Lss/ag$a;)Lss/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lss/w$a;->a()Lss/w;

    move-result-object v0

    iput-object v0, p0, Lss/ag;->c:Lss/w;

    invoke-static {p1}, Lss/ag$a;->d(Lss/ag$a;)Lss/ai;

    move-result-object v0

    iput-object v0, p0, Lss/ag;->d:Lss/ai;

    invoke-static {p1}, Lss/ag$a;->e(Lss/ag$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lss/ag$a;->e(Lss/ag$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lss/ag;->e:Ljava/lang/Object;

    return-void

    :cond_2c
    move-object v0, p0

    goto :goto_29
.end method

.method synthetic constructor <init>(Lss/ag$a;Lss/ah;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ag;-><init>(Lss/ag$a;)V

    return-void
.end method

.method static synthetic a(Lss/ag;)Lss/y;
    .registers 2

    iget-object v0, p0, Lss/ag;->a:Lss/y;

    return-object v0
.end method

.method static synthetic b(Lss/ag;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/ag;)Lss/ai;
    .registers 2

    iget-object v0, p0, Lss/ag;->d:Lss/ai;

    return-object v0
.end method

.method static synthetic d(Lss/ag;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lss/ag;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lss/ag;)Lss/w;
    .registers 2

    iget-object v0, p0, Lss/ag;->c:Lss/w;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lss/ag;->c:Lss/w;

    invoke-virtual {v0, p1}, Lss/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/y;
    .registers 2

    iget-object v0, p0, Lss/ag;->a:Lss/y;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lss/w;
    .registers 2

    iget-object v0, p0, Lss/ag;->c:Lss/w;

    return-object v0
.end method

.method public d()Lss/ai;
    .registers 2

    iget-object v0, p0, Lss/ag;->d:Lss/ai;

    return-object v0
.end method

.method public e()Lss/ag$a;
    .registers 3

    new-instance v0, Lss/ag$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ag$a;-><init>(Lss/ag;Lss/ah;)V

    return-object v0
.end method

.method public f()Lss/e;
    .registers 2

    iget-object v0, p0, Lss/ag;->f:Lss/e;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lss/ag;->c:Lss/w;

    invoke-static {v0}, Lss/e;->a(Lss/w;)Lss/e;

    move-result-object v0

    iput-object v0, p0, Lss/ag;->f:Lss/e;

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lss/ag;->a:Lss/y;

    invoke-virtual {v0}, Lss/y;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lss/ag;->a:Lss/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lss/ag;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_38

    iget-object v0, p0, Lss/ag;->e:Ljava/lang/Object;

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_29
.end method
