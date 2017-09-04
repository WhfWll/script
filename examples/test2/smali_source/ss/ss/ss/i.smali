.class Lss/ss/ss/i;
.super Lss/ss/f;


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lss/ss/ss/d;


# direct methods
.method varargs constructor <init>(Lss/ss/ss/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .registers 7

    iput-object p1, p0, Lss/ss/ss/i;->e:Lss/ss/ss/d;

    iput p4, p0, Lss/ss/ss/i;->b:I

    iput-object p5, p0, Lss/ss/ss/i;->c:Ljava/util/List;

    iput-boolean p6, p0, Lss/ss/ss/i;->d:Z

    invoke-direct {p0, p2, p3}, Lss/ss/f;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lss/ss/ss/i;->e:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->h(Lss/ss/ss/d;)Lss/ss/ss/aa;

    move-result-object v0

    iget v1, p0, Lss/ss/ss/i;->b:I

    iget-object v2, p0, Lss/ss/ss/i;->c:Ljava/util/List;

    iget-boolean v3, p0, Lss/ss/ss/i;->d:Z

    invoke-interface {v0, v1, v2, v3}, Lss/ss/ss/aa;->a(ILjava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_12
    iget-object v1, p0, Lss/ss/ss/i;->e:Lss/ss/ss/d;

    iget-object v1, v1, Lss/ss/ss/d;->i:Lss/ss/ss/c;

    iget v2, p0, Lss/ss/ss/i;->b:I

    sget-object v3, Lss/ss/ss/a;->l:Lss/ss/ss/a;

    invoke-interface {v1, v2, v3}, Lss/ss/ss/c;->a(ILss/ss/ss/a;)V

    :cond_1d
    if-nez v0, :cond_23

    iget-boolean v0, p0, Lss/ss/ss/i;->d:Z

    if-eqz v0, :cond_36

    :cond_23
    iget-object v1, p0, Lss/ss/ss/i;->e:Lss/ss/ss/d;

    monitor-enter v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_3a

    :try_start_26
    iget-object v0, p0, Lss/ss/ss/i;->e:Lss/ss/ss/d;

    invoke-static {v0}, Lss/ss/ss/d;->i(Lss/ss/ss/d;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lss/ss/ss/i;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    :try_start_39
    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v0

    goto :goto_36
.end method
