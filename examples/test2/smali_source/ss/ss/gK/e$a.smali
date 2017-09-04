.class abstract Lss/ss/gK/e$a;
.super Ljava/lang/Object;

# interfaces
.implements LgK/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/gK/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:LgK/k;

.field protected b:Z

.field final synthetic c:Lss/ss/gK/e;


# direct methods
.method private constructor <init>(Lss/ss/gK/e;)V
    .registers 4

    iput-object p1, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LgK/k;

    iget-object v1, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v1}, Lss/ss/gK/e;->b(Lss/ss/gK/e;)LgK/g;

    move-result-object v1

    invoke-interface {v1}, LgK/g;->a()LgK/x;

    move-result-object v1

    invoke-direct {v0, v1}, LgK/k;-><init>(LgK/x;)V

    iput-object v0, p0, Lss/ss/gK/e$a;->a:LgK/k;

    return-void
.end method

.method synthetic constructor <init>(Lss/ss/gK/e;Lss/ss/gK/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ss/gK/e$a;-><init>(Lss/ss/gK/e;)V

    return-void
.end method


# virtual methods
.method public a()LgK/x;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/e$a;->a:LgK/k;

    return-object v0
.end method

.method protected final a(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x6

    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->c(Lss/ss/gK/e;)I

    move-result v0

    if-ne v0, v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->c(Lss/ss/gK/e;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_32

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v2}, Lss/ss/gK/e;->c(Lss/ss/gK/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    iget-object v1, p0, Lss/ss/gK/e$a;->a:LgK/k;

    invoke-static {v0, v1}, Lss/ss/gK/e;->a(Lss/ss/gK/e;LgK/k;)V

    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v0, v2}, Lss/ss/gK/e;->a(Lss/ss/gK/e;I)I

    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->d(Lss/ss/gK/e;)Lss/ss/gK/w;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-static {v0}, Lss/ss/gK/e;->d(Lss/ss/gK/e;)Lss/ss/gK/w;

    move-result-object v1

    if-nez p1, :cond_55

    const/4 v0, 0x1

    :goto_4f
    iget-object v2, p0, Lss/ss/gK/e$a;->c:Lss/ss/gK/e;

    invoke-virtual {v1, v0, v2}, Lss/ss/gK/w;->a(ZLss/ss/gK/n;)V

    goto :goto_9

    :cond_55
    const/4 v0, 0x0

    goto :goto_4f
.end method
