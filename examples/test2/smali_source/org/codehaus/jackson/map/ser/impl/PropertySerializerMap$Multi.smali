.class final Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
.super Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x8


# instance fields
.field private final _entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;


# direct methods
.method public constructor <init>([Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V
    .registers 2
    .param p1, "entries"    # [Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 201
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 202
    return-void
.end method


# virtual methods
.method protected newWith(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "serializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 219
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v1, v2

    .line 221
    .local v1, "len":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 228
    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
    :goto_8
    return-object p0

    .line 225
    .restart local p0    # "this":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
    :cond_9
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 226
    .local v0, "entries":[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    new-instance v2, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-direct {v2, p1, p2}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)V

    aput-object v2, v0, v1

    .line 228
    new-instance p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;

    .end local p0    # "this":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;-><init>([Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    goto :goto_8
.end method

.method public serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v2, v3

    .local v2, "len":I
    :goto_4
    if-ge v1, v2, :cond_14

    .line 208
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    aget-object v0, v3, v1

    .line 209
    .local v0, "entry":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
    iget-object v3, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;

    if-ne v3, p1, :cond_11

    .line 210
    iget-object v3, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 213
    .end local v0    # "entry":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :goto_10
    return-object v3

    .line 207
    .restart local v0    # "entry":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 213
    .end local v0    # "entry":Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method
