.class public final Lorg/codehaus/jackson/map/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;,
        Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field _booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

.field _byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

.field _doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

.field _floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

.field _intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

.field _longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

.field _shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 19
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 20
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 21
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 22
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 24
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 25
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 27
    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    .line 171
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public static arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayAsIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v4, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    if-eqz p0, :cond_14

    .line 149
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 150
    .local v1, "elem":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 153
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "elem":Ljava/lang/Object;, "TT;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_14
    return-object v4
.end method

.method public static insertInList([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 184
    array-length v0, p0

    .line 186
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 187
    .local v1, "result":[Ljava/lang/Object;, "[TT;"
    if-lez v0, :cond_1b

    .line 188
    const/4 v2, 0x1

    invoke-static {p0, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_1b
    aput-object p1, v1, v4

    .line 191
    return-object v1
.end method

.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    array-length v1, p0

    .line 208
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_4
    if-ge v0, v1, :cond_28

    .line 209
    aget-object v3, p0, v0

    if-ne v3, p1, :cond_25

    .line 211
    if-nez v0, :cond_e

    move-object v2, p0

    .line 228
    :goto_d
    return-object v2

    .line 215
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 216
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aput-object p1, p0, v5

    goto :goto_d

    .line 208
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 223
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 224
    .restart local v2    # "result":[Ljava/lang/Object;, "[TT;"
    if-lez v1, :cond_40

    .line 225
    invoke-static {p0, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_40
    aput-object p1, v2, v5

    goto :goto_d
.end method


# virtual methods
.method public getBooleanBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 34
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 42
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 78
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_b

    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 71
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 56
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 63
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 49
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lorg/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
