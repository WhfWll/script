.class final Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final _buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _currentBucket:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _nextBucketIndex:I


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V
    .registers 7
    .param p1, "buckets"    # [Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "i":I
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v4

    .local v3, "len":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_a
    if-ge v2, v3, :cond_1b

    .line 192
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v0, v4, v2

    .line 193
    .local v0, "b":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-eqz v0, :cond_19

    .line 194
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 198
    .end local v0    # "b":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_16
    iput v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    .line 199
    return-void

    .restart local v0    # "b":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_19
    move v2, v1

    .line 197
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_a

    .end local v0    # "b":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :cond_1b
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_16
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->next()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .registers 6

    .prologue
    .line 209
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 210
    .local v1, "curr":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    if-nez v1, :cond_a

    .line 211
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 214
    :cond_a
    iget-object v0, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 215
    .local v0, "b":Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    :goto_c
    if-nez v0, :cond_20

    iget v2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v3

    if-ge v2, v3, :cond_20

    .line 216
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget v3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    aget-object v0, v2, v3

    goto :goto_c

    .line 218
    :cond_20
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 219
    iget-object v2, v1, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v2
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
