.class public final Lorg/codehaus/jackson/map/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/codehaus/jackson/map/type/ClassKey;",
        ">;"
    }
.end annotation


# instance fields
.field _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field _className:Ljava/lang/String;

.field _hashCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lorg/codehaus/jackson/map/type/ClassKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/ClassKey;->compareTo(Lorg/codehaus/jackson/map/type/ClassKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/codehaus/jackson/map/type/ClassKey;)I
    .registers 4
    .param p1, "other"    # Lorg/codehaus/jackson/map/type/ClassKey;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p1, p0, :cond_5

    .line 86
    :cond_4
    :goto_4
    return v1

    .line 75
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 76
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 77
    check-cast v0, Lorg/codehaus/jackson/map/type/ClassKey;

    .line 86
    .local v0, "other":Lorg/codehaus/jackson/map/type/ClassKey;
    iget-object v3, v0, Lorg/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return v0
.end method

.method public reset(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    return-object v0
.end method
