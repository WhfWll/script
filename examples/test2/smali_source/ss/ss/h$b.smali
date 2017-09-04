.class Lss/ss/h$b;
.super Lss/ss/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lss/ss/h;-><init>()V

    iput-object p1, p0, Lss/ss/h$b;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lss/ss/h$b;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lss/ss/h$b;->c:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lss/ss/h$b;->d:Ljava/lang/Class;

    iput-object p5, p0, Lss/ss/h$b;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lss/ss/h$b;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_c} :catch_14

    return-void

    :catch_d
    move-exception v0

    :goto_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_14
    move-exception v0

    goto :goto_e
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lss/ae;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_27

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ae;

    sget-object v4, Lss/ae;->a:Lss/ae;

    if-ne v0, v4, :cond_1f

    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_1f
    invoke-virtual {v0}, Lss/ae;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_27
    :try_start_27
    const-class v0, Lss/ss/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lss/ss/h$b;->d:Ljava/lang/Class;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lss/ss/h$b;->e:Ljava/lang/Class;

    aput-object v4, v1, v3

    new-instance v3, Lss/ss/h$c;

    invoke-direct {v3, v2}, Lss/ss/h$c;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lss/ss/h$b;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_52} :catch_5a

    return-void

    :catch_53
    move-exception v0

    :goto_54
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_5a
    move-exception v0

    goto :goto_54
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lss/ss/h$b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lss/ss/h$c;

    invoke-static {v0}, Lss/ss/h$c;->a(Lss/ss/h$c;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lss/ss/h$c;->b(Lss/ss/h$c;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    sget-object v0, Lss/ss/d;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_29
    return-object v1

    :cond_2a
    invoke-static {v0}, Lss/ss/h$c;->a(Lss/ss/h$c;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object v0, v1

    :goto_31
    move-object v1, v0

    goto :goto_29

    :cond_33
    invoke-static {v0}, Lss/ss/h$c;->b(Lss/ss/h$c;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_36} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_36} :catch_3f

    move-result-object v0

    goto :goto_31

    :catch_38
    move-exception v0

    :goto_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_3f
    move-exception v0

    goto :goto_39
.end method
