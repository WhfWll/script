.class public Lorg/json/alipay/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lorg/json/alipay/b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_28

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    new-instance v0, Lorg/json/alipay/a;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/json/alipay/d;

    invoke-direct {v0, p1}, Lorg/json/alipay/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/alipay/b;-><init>(Lorg/json/alipay/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    iput-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    return-void

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_a
.end method

.method public constructor <init>(Lorg/json/alipay/d;)V
    .registers 6

    const/16 v1, 0x5d

    invoke-direct {p0}, Lorg/json/alipay/b;-><init>()V

    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_15

    move v0, v1

    :goto_e
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v2

    if-ne v2, v1, :cond_23

    :cond_14
    return-void

    :cond_15
    const/16 v2, 0x28

    if-ne v0, v2, :cond_1c

    const/16 v0, 0x29

    goto :goto_e

    :cond_1c
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_23
    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    :goto_26
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_45

    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    iget-object v2, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    :cond_45
    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    iget-object v2, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/alipay/d;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :sswitch_52
    invoke-virtual {p1}, Lorg/json/alipay/d;->c()C

    move-result v2

    if-eq v2, v1, :cond_14

    invoke-virtual {p1}, Lorg/json/alipay/d;->a()V

    goto :goto_26

    :sswitch_5c
    if-eq v0, v2, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/alipay/d;->a(Ljava/lang/String;)Lorg/json/alipay/a;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_7e
    .sparse-switch
        0x29 -> :sswitch_5c
        0x2c -> :sswitch_52
        0x3b -> :sswitch_52
        0x5d -> :sswitch_5c
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_23

    if-lez v0, :cond_13

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object v3, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/alipay/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .registers 5

    if-ltz p1, :cond_a

    iget-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_28

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_2f

    new-instance v0, Lorg/json/alipay/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSONArray["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/alipay/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iget-object v0, p0, Lorg/json/alipay/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_2f
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-direct {p0, v1}, Lorg/json/alipay/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1b
.end method
