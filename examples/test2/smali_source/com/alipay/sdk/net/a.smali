.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/net/a;

    const v1, 0x9e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/net/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/net/a;->a:Ljava/lang/String;

    return-void
.end method

.method private native a()Ljava/lang/String;
.end method

.method private static native a(Lcom/alipay/sdk/data/c;Ljava/lang/String;)Lorg/apache/http/entity/ByteArrayEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native b()Ljava/net/URL;
.end method

.method private native b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method

.method private native c()Lorg/apache/http/HttpHost;
.end method

.method private native d()Lorg/apache/http/HttpHost;
.end method

.method private native e()Lorg/apache/http/HttpHost;
.end method

.method private native f()Landroid/net/NetworkInfo;
.end method

.method private native g()Ljava/lang/String;
.end method


# virtual methods
.method public final native a(Ljava/lang/String;Lcom/alipay/sdk/data/c;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation
.end method
