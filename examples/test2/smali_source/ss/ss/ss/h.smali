.class Lss/ss/ss/h;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lss/ss/ss/h;->d:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/h;->b:I

    iput-object p5, p0, Lss/ss/ss/h;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lss/ss/ss/h;->d:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->h(Lss/ss/ss/d;)Lss/ss/ss/aa;

    move-result-object v0

    iget v1, p0, Lss/ss/ss/h;->b:I

    iget-object v2, p0, Lss/ss/ss/h;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lss/ss/ss/aa;->a(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :try_start_10
    iget-object v0, p0, Lss/ss/ss/h;->d:Lss/ss/ss/d;

    iget-object v0, v0, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget v1, p0, Lss/ss/ss/h;->b:I

    sget-object v2, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-interface {v0, v1, v2}, Lss/ss/ss/c;->a(ILss/ss/ss/a;)V

    iget-object v1, p0, Lss/ss/ss/h;->d:Lss/ss/ss/d;

    monitor-enter v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_32

    :try_start_1e
    iget-object v0, p0, Lss/ss/ss/h;->d:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->i(Lss/ss/ss/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lss/ss/ss/h;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_2e
    :goto_2e
    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    goto :goto_2e
.end method
