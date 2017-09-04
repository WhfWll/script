.class public abstract Lfw;
.super Lfv;


# instance fields
.field protected a:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfw;->a:Ljava/util/Vector;

    return-void
.end method

.method protected constructor <init>(Lfh;)V
    .registers 5

    invoke-direct {p0}, Lfv;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfw;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_b
    iget-object v1, p1, Lfh;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lfw;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lfh;->a(I)Lfg;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method private static a(Ljava/util/Enumeration;)Lfg;
    .registers 2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfg;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lfw;
    .registers 5

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_7

    instance-of v1, v0, Lfw;

    if-eqz v1, :cond_a

    :cond_7
    check-cast v0, Lfw;

    :goto_9
    return-object v0

    :cond_a
    instance-of v1, v0, Lfx;

    if-eqz v1, :cond_15

    check-cast v0, Lfx;

    invoke-interface {v0}, Lfx;->b()Lfv;

    move-result-object v0

    goto :goto_1

    :cond_15
    instance-of v1, v0, [B

    if-eqz v1, :cond_3e

    :try_start_19
    check-cast v0, [B

    invoke-static {v0}, Lfw;->a([B)Lfv;

    move-result-object v0

    invoke-static {v0}, Lfw;->a(Ljava/lang/Object;)Lfw;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_9

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to construct sequence from byte[]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    instance-of v1, v0, Lfg;

    if-eqz v1, :cond_51

    move-object v1, v0

    check-cast v1, Lfg;

    invoke-interface {v1}, Lfg;->b()Lfv;

    move-result-object v1

    instance-of v2, v1, Lfw;

    if-eqz v2, :cond_51

    move-object v0, v1

    check-cast v0, Lfw;

    goto :goto_9

    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown object in getInstance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lfw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final a(Lfv;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lfw;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lfw;

    invoke-virtual {p0}, Lfw;->b()I

    move-result v1

    invoke-virtual {p1}, Lfw;->b()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lfw;->a()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1}, Lfw;->a()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v1}, Lfw;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v3

    invoke-static {v2}, Lfw;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v4

    invoke-interface {v3}, Lfg;->b()Lfv;

    move-result-object v3

    invoke-interface {v4}, Lfg;->b()Lfv;

    move-result-object v4

    if-eq v3, v4, :cond_1a

    invoke-virtual {v3, v4}, Lfv;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_5

    :cond_39
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lfw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method c()Lfv;
    .registers 3

    new-instance v0, Lhi;

    invoke-direct {v0}, Lhi;-><init>()V

    iget-object v1, p0, Lfw;->a:Ljava/util/Vector;

    iput-object v1, v0, Lfw;->a:Ljava/util/Vector;

    return-object v0
.end method

.method d()Lfv;
    .registers 3

    new-instance v0, Lht;

    invoke-direct {v0}, Lht;-><init>()V

    iget-object v1, p0, Lfw;->a:Ljava/util/Vector;

    iput-object v1, v0, Lfw;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lfw;->a()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p0}, Lfw;->b()I

    move-result v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v1}, Lfw;->a(Ljava/util/Enumeration;)Lfg;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_8

    :cond_1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lfw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
