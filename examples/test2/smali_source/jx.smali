.class public final Ljx;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Hashtable;

.field private a:Ljl;

.field a:Ljm;

.field a:Lkk;

.field a:Z

.field private b:Ljl;

.field private c:Ljl;


# direct methods
.method public constructor <init>(Lkk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljx;->a:Ljm;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljx;->a:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljx;->a:Ljava/util/Hashtable;

    iput-object p1, p0, Ljx;->a:Lkk;

    new-instance v0, Ljl;

    invoke-direct {v0, p1}, Ljl;-><init>(Lkk;)V

    iput-object v0, p0, Ljx;->a:Ljl;

    new-instance v0, Ljl;

    invoke-direct {v0, p1}, Ljl;-><init>(Lkk;)V

    iput-object v0, p0, Ljx;->b:Ljl;

    new-instance v0, Ljl;

    invoke-direct {v0, p1}, Ljl;-><init>(Lkk;)V

    iput-object v0, p0, Ljx;->c:Ljl;

    return-void
.end method


# virtual methods
.method public final a(Lli;)Ljl;
    .registers 4

    instance-of v0, p1, Lkp;

    if-eqz v0, :cond_b

    check-cast p1, Lkp;

    invoke-virtual {p0, p1}, Ljx;->b(Lli;)Ljl;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p1, Lkw;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljx;->a:Ljl;

    :goto_11
    iget-object v1, p0, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl;

    goto :goto_a

    :cond_1a
    instance-of v0, p1, Lkr;

    if-eqz v0, :cond_21

    iget-object v0, p0, Ljx;->b:Ljl;

    goto :goto_11

    :cond_21
    instance-of v0, p1, Lks;

    if-eqz v0, :cond_28

    iget-object v0, p0, Ljx;->c:Ljl;

    goto :goto_11

    :cond_28
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_11
.end method

.method final b(Lli;)Ljl;
    .registers 5

    instance-of v0, p1, Lkx;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljx;->a:Ljl;

    :goto_6
    return-object v0

    :cond_7
    instance-of v0, p1, Lkq;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljx;->b:Ljl;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Ljx;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl;

    goto :goto_6
.end method

.method public final c(Lli;)Ljl;
    .registers 7

    instance-of v0, p1, Lkq;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ljx;->b:Ljl;

    :goto_6
    iget-object v1, p0, Ljx;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Ljx;->a:Lkk;

    const/16 v2, 0x12d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_1e
    iget-object v1, p0, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljl;

    return-object v0

    :cond_27
    instance-of v0, p1, Lks;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljx;->c:Ljl;

    goto :goto_6

    :cond_2e
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_6
.end method

.method protected final d(Lli;)Ljl;
    .registers 9

    const/4 v5, 0x0

    instance-of v0, p1, Lkw;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ljx;->a:Ljl;

    move-object v1, v0

    :goto_8
    iget-object v2, p0, Ljx;->a:Lkk;

    invoke-virtual {v2}, Lkk;->a()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Ljx;->a:Lkk;

    const/16 v3, 0x12c

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lkk;->a(I[Ljava/lang/Object;)V

    :cond_26
    iget-object v2, p0, Ljx;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Ljx;->a:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljx;->a:Ljm;

    invoke-virtual {v0, v1}, Ljl;->a(Ljm;)V

    :cond_34
    return-object v0

    :cond_35
    instance-of v0, p1, Lkr;

    if-eqz v0, :cond_4b

    iput-boolean v5, p0, Ljx;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljx;->a:Ljm;

    new-instance v0, Ljl;

    iget-object v1, p0, Ljx;->a:Lkk;

    invoke-direct {v0, v1}, Ljl;-><init>(Lkk;)V

    iput-object v0, p0, Ljx;->b:Ljl;

    iget-object v0, p0, Ljx;->b:Ljl;

    move-object v1, v0

    goto :goto_8

    :cond_4b
    instance-of v0, p1, Lks;

    if-eqz v0, :cond_5c

    new-instance v0, Ljl;

    iget-object v1, p0, Ljx;->a:Lkk;

    invoke-direct {v0, v1}, Ljl;-><init>(Lkk;)V

    iput-object v0, p0, Ljx;->c:Ljl;

    iget-object v0, p0, Ljx;->c:Ljl;

    move-object v1, v0

    goto :goto_8

    :cond_5c
    instance-of v0, p1, Llb;

    if-eqz v0, :cond_6e

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1}, Ljx;->a(Lli;)Ljl;

    move-result-object v0

    goto :goto_8

    :cond_6e
    instance-of v0, p1, Llc;

    if-eqz v0, :cond_88

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljl;

    iget-object v3, p0, Ljx;->a:Lkk;

    move-object v0, p1

    check-cast v0, Llc;

    invoke-direct {v1, v3, v0}, Ljl;-><init>(Lkk;Llc;)V

    move-object v0, v1

    move-object v1, v2

    goto :goto_8

    :cond_88
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lli;->c()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, Ljl;

    iget-object v2, p0, Ljx;->a:Lkk;

    invoke-direct {v0, v2}, Ljl;-><init>(Lkk;)V

    goto/16 :goto_8
.end method
