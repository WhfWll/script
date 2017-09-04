.class public final Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;,
        Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private final _hashMask:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "properties":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/deser/SettableBeanProperty;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    iput v6, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    .line 29
    iget v6, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    invoke-static {v6}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v0

    .line 30
    .local v0, "bucketCount":I
    add-int/lit8 v6, v0, -0x1

    iput v6, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 31
    new-array v1, v0, [Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 32
    .local v1, "buckets":[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 33
    .local v5, "property":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget v7, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v3, v6, v7

    .line 35
    .local v3, "index":I
    new-instance v6, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v7, v1, v3

    invoke-direct {v6, v7, v4, v5}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v6, v1, v3

    goto :goto_19

    .line 37
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "property":Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    :cond_3b
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 38
    return-void
.end method

.method private _findWithEquals(Ljava/lang/String;I)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v1, p2

    .line 141
    .local v0, "bucket":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_4
    if-eqz v0, :cond_14

    .line 142
    iget-object v1, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 143
    iget-object v1, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 147
    :goto_10
    return-object v1

    .line 145
    :cond_11
    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_4

    .line 147
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static final findSize(I)I
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 55
    const/16 v2, 0x20

    if-gt p0, v2, :cond_b

    add-int v0, p0, p0

    .line 56
    .local v0, "needed":I
    :goto_6
    const/4 v1, 0x2

    .line 57
    .local v1, "result":I
    :goto_7
    if-ge v1, v0, :cond_10

    .line 58
    add-int/2addr v1, v1

    goto :goto_7

    .line 55
    .end local v0    # "needed":I
    .end local v1    # "result":I
    :cond_b
    shr-int/lit8 v2, p0, 0x2

    add-int v0, p0, v2

    goto :goto_6

    .line 60
    .restart local v0    # "needed":I
    .restart local v1    # "result":I
    :cond_10
    return v1
.end method


# virtual methods
.method public allProperties()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;-><init>([Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V

    return-object v0
.end method

.method public assignIndexes()V
    .registers 8

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "index":I
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .local v0, "arr$":[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v5, :cond_1b

    aget-object v1, v0, v2

    .local v1, "bucket":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    move v4, v3

    .line 45
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_a
    if-eqz v1, :cond_17

    .line 46
    iget-object v6, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->assignIndex(I)V

    .line 47
    iget-object v1, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_a

    .line 44
    :cond_17
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_5

    .line 50
    .end local v1    # "bucket":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1b
    return-void
.end method

.method public find(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int v1, v2, v3

    .line 81
    .local v1, "index":I
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v2, v1

    .line 83
    .local v0, "bucket":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-nez v0, :cond_10

    .line 84
    const/4 v2, 0x0

    .line 96
    :goto_f
    return-object v2

    .line 87
    :cond_10
    iget-object v2, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_17

    .line 88
    iget-object v2, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_f

    .line 90
    :cond_17
    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_22

    .line 91
    iget-object v2, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_17

    .line 92
    iget-object v2, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_f

    .line 96
    :cond_22
    invoke-direct {p0, p1, v1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_findWithEquals(Ljava/lang/String;I)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_f
.end method

.method public replace(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .registers 11
    .param p1, "property"    # Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    and-int v2, v6, v7

    .line 112
    .local v2, "index":I
    const/4 v4, 0x0

    .line 113
    .local v4, "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    const/4 v1, 0x0

    .line 116
    .local v1, "found":Z
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v0, v6, v2

    .local v0, "bucket":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    move-object v5, v4

    .end local v4    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .local v5, "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_16
    if-eqz v0, :cond_32

    .line 118
    if-nez v1, :cond_28

    iget-object v6, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 119
    const/4 v1, 0x1

    move-object v4, v5

    .line 116
    .end local v5    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_24
    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move-object v5, v4

    .end local v4    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_16

    .line 121
    :cond_28
    new-instance v4, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget-object v6, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    iget-object v7, v0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v4, v5, v6, v7}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .end local v5    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v4    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    goto :goto_24

    .line 125
    .end local v4    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    .restart local v5    # "tail":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_32
    if-nez v1, :cond_53

    .line 126
    new-instance v6, Ljava/util/NoSuchElementException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' found, can\'t replace"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 129
    :cond_53
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    new-instance v7, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v7, v5, v3, p1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v7, v6, v2

    .line 130
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method
