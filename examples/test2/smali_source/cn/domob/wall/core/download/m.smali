.class public Lcn/domob/wall/core/download/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gtz p1, :cond_d

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_d
    iput p1, p0, Lcn/domob/wall/core/download/m;->c:I

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    .line 37
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 130
    :goto_0
    monitor-enter p0

    .line 131
    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->b:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Lcn/domob/wall/core/download/m;->b:I

    if-eqz v0, :cond_35

    .line 132
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0

    .line 136
    :cond_35
    :try_start_35
    iget v0, p0, Lcn/domob/wall/core/download/m;->b:I

    if-le v0, p1, :cond_41

    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 137
    :cond_41
    monitor-exit p0

    .line 150
    return-void

    .line 140
    :cond_43
    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget v2, p0, Lcn/domob/wall/core/download/m;->b:I

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/domob/wall/core/download/m;->b:I

    .line 145
    iget v2, p0, Lcn/domob/wall/core/download/m;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/domob/wall/core/download/m;->f:I

    .line 146
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    .line 148
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcn/domob/wall/core/download/m;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0, p1, p2}, Lcn/domob/wall/core/download/m;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 215
    if-gez v0, :cond_29

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_29
    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p1, :cond_a

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    monitor-enter p0

    .line 52
    :try_start_b
    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1b

    .line 54
    iget v1, p0, Lcn/domob/wall/core/download/m;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/domob/wall/core/download/m;->g:I

    .line 55
    monitor-exit p0

    .line 89
    :goto_1a
    return-object v0

    .line 57
    :cond_1b
    iget v0, p0, Lcn/domob/wall/core/download/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/download/m;->h:I

    .line 58
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2a

    .line 67
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    if-nez v1, :cond_2d

    .line 69
    const/4 v0, 0x0

    goto :goto_1a

    .line 58
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 72
    :cond_2d
    monitor-enter p0

    .line 73
    :try_start_2e
    iget v0, p0, Lcn/domob/wall/core/download/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/download/m;->e:I

    .line 74
    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_49

    .line 78
    iget-object v2, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_53

    .line 84
    if-eqz v0, :cond_56

    .line 85
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Lcn/domob/wall/core/download/m;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    .line 80
    :cond_49
    :try_start_49
    iget v2, p0, Lcn/domob/wall/core/download/m;->b:I

    invoke-direct {p0, p1, v1}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcn/domob/wall/core/download/m;->b:I

    goto :goto_41

    .line 82
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    throw v0

    .line 88
    :cond_56
    iget v0, p0, Lcn/domob/wall/core/download/m;->c:I

    invoke-direct {p0, v0}, Lcn/domob/wall/core/download/m;->a(I)V

    move-object v0, v1

    .line 89
    goto :goto_1a
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcn/domob/wall/core/download/m;->a(I)V

    .line 237
    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public final declared-synchronized b()I
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_a

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    monitor-enter p0

    .line 164
    :try_start_b
    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1c

    .line 166
    iget v1, p0, Lcn/domob/wall/core/download/m;->b:I

    invoke-direct {p0, p1, v0}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/domob/wall/core/download/m;->b:I

    .line 168
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_25

    .line 170
    if-eqz v0, :cond_24

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lcn/domob/wall/core/download/m;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :cond_24
    return-object v0

    .line 168
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_c
    monitor-enter p0

    .line 106
    :try_start_d
    iget v0, p0, Lcn/domob/wall/core/download/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/download/m;->d:I

    .line 107
    iget v0, p0, Lcn/domob/wall/core/download/m;->b:I

    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/domob/wall/core/download/m;->b:I

    .line 108
    iget-object v0, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2d

    .line 110
    iget v1, p0, Lcn/domob/wall/core/download/m;->b:I

    invoke-direct {p0, p1, v0}, Lcn/domob/wall/core/download/m;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/domob/wall/core/download/m;->b:I

    .line 112
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3a

    .line 114
    if-eqz v0, :cond_34

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lcn/domob/wall/core/download/m;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_34
    iget v1, p0, Lcn/domob/wall/core/download/m;->c:I

    invoke-direct {p0, v1}, Lcn/domob/wall/core/download/m;->a(I)V

    .line 119
    return-object v0

    .line 112
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final declared-synchronized c()I
    .registers 2

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized d()I
    .registers 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()I
    .registers 2

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->h:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()I
    .registers 2

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .registers 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->d:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()I
    .registers 2

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcn/domob/wall/core/download/m;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcn/domob/wall/core/download/m;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 302
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcn/domob/wall/core/download/m;->g:I

    iget v2, p0, Lcn/domob/wall/core/download/m;->h:I

    add-int/2addr v1, v2

    .line 303
    if-eqz v1, :cond_e

    iget v0, p0, Lcn/domob/wall/core/download/m;->g:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 304
    :cond_e
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/domob/wall/core/download/m;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcn/domob/wall/core/download/m;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcn/domob/wall/core/download/m;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3b

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 302
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
