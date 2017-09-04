.class public final Lcom/alipay/android/phone/mrpc/core/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/f;


# static fields
.field private static b:Lcom/alipay/android/phone/mrpc/core/s;

.field private static final i:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field a:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Lcom/alipay/android/phone/mrpc/core/i;

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/s;

    const v1, 0x39

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/s;->b:Lcom/alipay/android/phone/mrpc/core/s;

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/u;

    invoke-direct {v0}, Lcom/alipay/android/phone/mrpc/core/u;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mrpc/core/s;->i:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 13

    const/4 v10, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/s;->a:Landroid/content/Context;

    const-string v0, "android"

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/i;->a(Ljava/lang/String;)Lcom/alipay/android/phone/mrpc/core/i;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/s;->d:Lcom/alipay/android/phone/mrpc/core/i;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/alipay/android/phone/mrpc/core/s;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mrpc/core/s;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_2b
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/s;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_31} :catch_3e

    :goto_31
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/s;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void

    :catch_3e
    move-exception v0

    goto :goto_31
.end method

.method public static final native a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/s;
.end method

.method private static final native declared-synchronized b(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/s;
.end method


# virtual methods
.method public final native a()Lcom/alipay/android/phone/mrpc/core/i;
.end method

.method public final native a(Lcom/alipay/android/phone/mrpc/core/aa;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/aa;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/android/phone/mrpc/core/ab;",
            ">;"
        }
    .end annotation
.end method

.method public final native a(J)V
.end method

.method public final native b(J)V
.end method

.method public final native c(J)V
.end method
