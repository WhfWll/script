.class public abstract Lgb;
.super Lfv;

# interfaces
.implements Lfz;


# instance fields
.field a:I

.field a:Lfg;

.field a:Z


# direct methods
.method public constructor <init>(ZILfg;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Lfv;-><init>()V

    iput-boolean v1, p0, Lgb;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lgb;->a:Lfg;

    instance-of v0, p3, Lff;

    if-eqz v0, :cond_18

    iput-boolean v1, p0, Lgb;->a:Z

    :goto_f
    iput p2, p0, Lgb;->a:I

    iget-boolean v0, p0, Lgb;->a:Z

    if-eqz v0, :cond_1b

    iput-object p3, p0, Lgb;->a:Lfg;

    :goto_17
    return-void

    :cond_18
    iput-boolean p1, p0, Lgb;->a:Z

    goto :goto_f

    :cond_1b
    invoke-interface {p3}, Lfg;->b()Lfv;

    iput-object p3, p0, Lgb;->a:Lfg;

    goto :goto_17
.end method


# virtual methods
.method public final a()Lfv;
    .registers 2

    invoke-virtual {p0}, Lgb;->b()Lfv;

    move-result-object v0

    return-object v0
.end method

.method final a(Lfv;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lgb;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lgb;

    iget v1, p0, Lgb;->a:I

    iget v2, p1, Lgb;->a:I

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lgb;->a:Z

    iget-boolean v2, p1, Lgb;->a:Z

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lgb;->a:Lfg;

    if-nez v1, :cond_1e

    iget-object v1, p1, Lgb;->a:Lfg;

    if-nez v1, :cond_5

    :cond_1c
    const/4 v0, 0x1

    goto :goto_5

    :cond_1e
    iget-object v1, p0, Lgb;->a:Lfg;

    invoke-interface {v1}, Lfg;->b()Lfv;

    move-result-object v1

    iget-object v2, p1, Lgb;->a:Lfg;

    invoke-interface {v2}, Lfg;->b()Lfv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_5
.end method

.method final c()Lfv;
    .registers 5

    new-instance v0, Lhn;

    iget-boolean v1, p0, Lgb;->a:Z

    iget v2, p0, Lgb;->a:I

    iget-object v3, p0, Lgb;->a:Lfg;

    invoke-direct {v0, v1, v2, v3}, Lhn;-><init>(ZILfg;)V

    return-object v0
.end method

.method final d()Lfv;
    .registers 5

    new-instance v0, Lhv;

    iget-boolean v1, p0, Lgb;->a:Z

    iget v2, p0, Lgb;->a:I

    iget-object v3, p0, Lgb;->a:Lfg;

    invoke-direct {v0, v1, v2, v3}, Lhv;-><init>(ZILfg;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lgb;->a:I

    iget-object v1, p0, Lgb;->a:Lfg;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lgb;->a:Lfg;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lgb;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgb;->a:Lfg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
