.class public Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "org.codehaus.jackson.map.ext.CoreXMLDeserializers"

.field private static final DESERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "org.codehaus.jackson.map.ext.JodaDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final PACKAGE_PREFIX_JODA_DATETIME:Ljava/lang/String; = "org.joda.time."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "org.codehaus.jackson.map.ext.CoreXMLSerializers"

.field private static final SERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "org.codehaus.jackson.map.ext.JodaSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "org.codehaus.jackson.map.ext.DOMSerializer"

.field public static final instance:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6
    .param p2, "classNameToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 154
    move-object v0, p1

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v0, :cond_1a

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 163
    :cond_e
    :goto_e
    return v1

    .line 159
    :cond_f
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 154
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 163
    :cond_1a
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 10
    .param p2, "interfaceToImplement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 169
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v4, :cond_1a

    aget-object v2, v0, v1

    .line 170
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 180
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    :goto_16
    return v5

    .line 169
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 175
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_2a

    aget-object v2, v0, v1

    .line 176
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 180
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2a
    const/4 v5, 0x0

    goto :goto_16
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 10
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 203
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v4, :cond_1a

    aget-object v2, v0, v1

    .line 204
    .local v2, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 214
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    :goto_16
    return v5

    .line 203
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 209
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v4, :cond_2a

    aget-object v2, v0, v1

    .line 210
    .restart local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 214
    .end local v2    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2a
    const/4 v5, 0x0

    goto :goto_16
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    if-eqz v1, :cond_17

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 197
    :cond_11
    :goto_11
    return v2

    .line 186
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    .line 192
    :cond_17
    move-object v0, p1

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_18
    if-eqz v0, :cond_25

    .line 193
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 192
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_18

    .line 197
    :cond_25
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 149
    :goto_8
    return-object v0

    .line 148
    :catch_9
    move-exception v0

    .line 149
    :goto_a
    const/4 v0, 0x0

    goto :goto_8

    .line 146
    :catch_c
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public findDeserializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .registers 14
    .param p1, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .param p2, "config"    # Lorg/codehaus/jackson/map/DeserializationConfig;
    .param p3, "p"    # Lorg/codehaus/jackson/map/DeserializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 95
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 96
    .local v7, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "className":Ljava/lang/String;
    const-string v9, "org.joda.time."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 100
    const-string v3, "org.codehaus.jackson.map.ext.JodaDeserializers"

    .line 111
    .local v3, "factoryName":Ljava/lang/String;
    :goto_13
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 112
    .local v5, "ob":Ljava/lang/Object;
    if-nez v5, :cond_4f

    .line 132
    .end local v3    # "factoryName":Ljava/lang/String;
    .end local v5    # "ob":Ljava/lang/Object;
    :cond_19
    :goto_19
    return-object v8

    .line 101
    :cond_1a
    const-string v9, "javax.xml."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "javax.xml."

    invoke-direct {p0, v7, v9}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 103
    :cond_2a
    const-string v3, "org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    .restart local v3    # "factoryName":Ljava/lang/String;
    goto :goto_13

    .line 104
    .end local v3    # "factoryName":Ljava/lang/String;
    :cond_2d
    const-string v9, "org.w3c.dom.Node"

    invoke-direct {p0, v7, v9}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 105
    const-string v8, "org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_19

    .line 106
    :cond_3e
    const-string v9, "org.w3c.dom.Node"

    invoke-direct {p0, v7, v9}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 107
    const-string v8, "org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonDeserializer;

    goto :goto_19

    .restart local v3    # "factoryName":Ljava/lang/String;
    .restart local v5    # "ob":Ljava/lang/Object;
    :cond_4f
    move-object v6, v5

    .line 116
    check-cast v6, Lorg/codehaus/jackson/map/util/Provider;

    .line 117
    .local v6, "prov":Lorg/codehaus/jackson/map/util/Provider;, "Lorg/codehaus/jackson/map/util/Provider<Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;>;"
    invoke-interface {v6}, Lorg/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object v2

    .line 120
    .local v2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/deser/StdDeserializer;

    .line 121
    .local v1, "deser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v7, v9, :cond_5a

    move-object v8, v1

    .line 122
    goto :goto_19

    .line 126
    .end local v1    # "deser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    :cond_6e
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/deser/StdDeserializer;

    .line 127
    .restart local v1    # "deser":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<*>;"
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_72

    move-object v8, v1

    .line 128
    goto :goto_19
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .registers 13
    .param p1, "config"    # Lorg/codehaus/jackson/map/SerializationConfig;
    .param p2, "type"    # Lorg/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 54
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 55
    .local v7, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "className":Ljava/lang/String;
    const-string v8, "org.joda.time."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 59
    const-string v3, "org.codehaus.jackson.map.ext.JodaSerializers"

    .line 69
    .local v3, "factoryName":Ljava/lang/String;
    :goto_13
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "ob":Ljava/lang/Object;
    if-nez v5, :cond_41

    move-object v8, v9

    .line 90
    .end local v3    # "factoryName":Ljava/lang/String;
    .end local v5    # "ob":Ljava/lang/Object;
    :goto_1a
    return-object v8

    .line 60
    :cond_1b
    const-string v8, "javax.xml."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2b

    const-string v8, "javax.xml."

    invoke-direct {p0, v7, v8}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 62
    :cond_2b
    const-string v3, "org.codehaus.jackson.map.ext.CoreXMLSerializers"

    .restart local v3    # "factoryName":Ljava/lang/String;
    goto :goto_13

    .line 63
    .end local v3    # "factoryName":Ljava/lang/String;
    :cond_2e
    const-string v8, "org.w3c.dom.Node"

    invoke-direct {p0, v7, v8}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 64
    const-string v8, "org.codehaus.jackson.map.ext.DOMSerializer"

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1a

    :cond_3f
    move-object v8, v9

    .line 66
    goto :goto_1a

    .restart local v3    # "factoryName":Ljava/lang/String;
    .restart local v5    # "ob":Ljava/lang/Object;
    :cond_41
    move-object v6, v5

    .line 74
    check-cast v6, Lorg/codehaus/jackson/map/util/Provider;

    .line 75
    .local v6, "prov":Lorg/codehaus/jackson/map/util/Provider;, "Lorg/codehaus/jackson/map/util/Provider<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;>;"
    invoke-interface {v6}, Lorg/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object v1

    .line 78
    .local v1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_4c

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1a

    .line 84
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :cond_65
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codehaus/jackson/map/JsonSerializer;

    goto :goto_1a

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/codehaus/jackson/map/JsonSerializer<*>;>;"
    :cond_88
    move-object v8, v9

    .line 90
    goto :goto_1a
.end method
