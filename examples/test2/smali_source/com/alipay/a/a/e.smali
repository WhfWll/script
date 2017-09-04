.class public final Lcom/alipay/a/a/e;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/a/a/e;

    const v1, 0x1b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/l;

    invoke-direct {v1}, Lcom/alipay/a/a/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/d;

    invoke-direct {v1}, Lcom/alipay/a/a/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/c;

    invoke-direct {v1}, Lcom/alipay/a/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/h;

    invoke-direct {v1}, Lcom/alipay/a/a/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/k;

    invoke-direct {v1}, Lcom/alipay/a/a/k;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/b;

    invoke-direct {v1}, Lcom/alipay/a/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/a;

    invoke-direct {v1}, Lcom/alipay/a/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/g;

    invoke-direct {v1}, Lcom/alipay/a/a/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final native a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation
.end method

.method public static final native a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
.end method
