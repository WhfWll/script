.class public final Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
.super Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetterAndGetterMethodFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .registers 6
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 95
    :cond_8
    :goto_8
    return v1

    .line 86
    :cond_9
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 87
    goto :goto_8

    .line 90
    :cond_11
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_8

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 95
    goto :goto_8
.end method
