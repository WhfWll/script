.class Lss/ss/ss/k;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:Lss/ss/ss/a;

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILss/ss/ss/a;)V
    .registers 6

    iput-object p1, p0, Lss/ss/ss/k;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/k;->b:I

    iput-object p5, p0, Lss/ss/ss/k;->c:Lss/ss/ss/a;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lss/ss/ss/k;->d:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->h(Lss/ss/ss/d;)Lss/ss/ss/aa;

    move-result-object v0

    iget v1, p0, Lss/ss/ss/k;->b:I

    iget-object v2, p0, Lss/ss/ss/k;->c:Lss/ss/ss/a;

    invoke-interface {v0, v1, v2}, Lss/ss/ss/aa;->a(ILss/ss/ss/a;)V

    iget-object v1, p0, Lss/ss/ss/k;->d:Lss/ss/ss/d;

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lss/ss/ss/k;->d:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->i(Lss/ss/ss/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lss/ss/ss/k;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_21

    throw v0
.end method
