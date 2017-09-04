.class Lss/ss/ss/j;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:LgK/e;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILgK/e;IZ)V
    .registers 8

    iput-object p1, p0, Lss/ss/ss/j;->f:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/j;->b:I

    iput-object p5, p0, Lss/ss/ss/j;->c:LgK/e;

    iput p6, p0, Lss/ss/ss/j;->d:I

    iput-boolean p7, p0, Lss/ss/ss/j;->e:Z

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lss/ss/ss/j;->f:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->h(Lss/ss/ss/d;)Lss/ss/ss/aa;

    move-result-object v0

    iget v1, p0, Lss/ss/ss/j;->b:I

    iget-object v2, p0, Lss/ss/ss/j;->c:LgK/e;

    iget v3, p0, Lss/ss/ss/j;->d:I

    iget-boolean v4, p0, Lss/ss/ss/j;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lss/ss/ss/aa;->a(ILgK/g;IZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lss/ss/ss/j;->f:Lss/ss/ss/d;

    iget-object v1, v1, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget v2, p0, Lss/ss/ss/j;->b:I

    sget-object v3, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-interface {v1, v2, v3}, Lss/ss/ss/c;->a(ILss/ss/ss/a;)V

    :cond_1f
    if-nez v0, :cond_25

    iget-boolean v0, p0, Lss/ss/ss/j;->e:Z

    if-eqz v0, :cond_38

    :cond_25
    iget-object v1, p0, Lss/ss/ss/j;->f:Lss/ss/ss/d;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_3c

    :try_start_28
    iget-object v0, p0, Lss/ss/ss/j;->f:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->i(Lss/ss/ss/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lss/ss/ss/j;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_38
    :goto_38
    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_39

    :try_start_3b
    throw v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    goto :goto_38
.end method
