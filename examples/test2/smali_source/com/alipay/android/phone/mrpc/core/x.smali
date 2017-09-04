.class public final Lcom/alipay/android/phone/mrpc/core/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/ab;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/s;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/android/phone/mrpc/core/v;

.field d:Ljava/lang/String;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Lorg/apache/http/protocol/HttpContext;

.field private h:Lorg/apache/http/client/CookieStore;

.field private i:Landroid/webkit/CookieManager;

.field private j:Lorg/apache/http/entity/AbstractHttpEntity;

.field private k:Lorg/apache/http/HttpHost;

.field private l:Ljava/net/URL;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/x;

    const v1, 0x3e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/h;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/x;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/s;Lcom/alipay/android/phone/mrpc/core/v;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->h:Lorg/apache/http/client/CookieStore;

    iput v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->m:I

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->n:Z

    iput-boolean v1, p0, Lcom/alipay/android/phone/mrpc/core/x;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Lcom/alipay/android/phone/mrpc/core/s;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/s;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/x;->c:Lcom/alipay/android/phone/mrpc/core/v;

    return-void
.end method

.method private static native a([Ljava/lang/String;)J
.end method

.method private native a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/phone/mrpc/core/ab;
.end method

.method private static native a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/phone/mrpc/core/b;
.end method

.method private static native a(Ljava/lang/String;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native a(Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)V
.end method

.method private static native b(Lorg/apache/http/HttpResponse;)J
.end method

.method private native b()Ljava/net/URI;
.end method

.method private native c()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method private native d()Lcom/alipay/android/phone/mrpc/core/ab;
.end method

.method private native e()V
.end method

.method private native f()Ljava/lang/String;
.end method

.method private native g()I
.end method

.method private native h()Ljava/net/URL;
.end method

.method private native i()Landroid/webkit/CookieManager;
.end method


# virtual methods
.method public final native a()Lcom/alipay/android/phone/mrpc/core/v;
.end method

.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;->d()Lcom/alipay/android/phone/mrpc/core/ab;

    move-result-object v0

    return-object v0
.end method
