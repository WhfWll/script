.class public Lcom/alipay/sdk/util/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "failed"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/ServiceConnection;

.field private k:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/util/h;

    const v1, 0xb2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/h;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/util/h;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/util/h;->i:Ljava/lang/String;

    new-instance v0, Lcom/alipay/sdk/util/i;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/i;-><init>(Lcom/alipay/sdk/util/h;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/h;->j:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/sdk/util/j;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/j;-><init>(Lcom/alipay/sdk/util/h;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/h;->k:Lcom/alipay/android/app/IRemoteServiceCallback;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/h;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/h;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/h;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/h;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/h;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private native a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
.end method

.method static synthetic b(Lcom/alipay/sdk/util/h;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/util/h;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final native a(Ljava/lang/String;)Ljava/lang/String;
.end method
