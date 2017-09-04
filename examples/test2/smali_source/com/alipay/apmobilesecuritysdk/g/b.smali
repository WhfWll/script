.class public final Lcom/alipay/apmobilesecuritysdk/g/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/g/b;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/g/b;

    const v1, 0x56

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/g/b;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/g/b;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/g/b;->a:Lcom/alipay/apmobilesecuritysdk/g/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/g/b;->b:Ljava/lang/Thread;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/g/b;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public static native a()Lcom/alipay/apmobilesecuritysdk/g/b;
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/g/b;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/g/b;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/apmobilesecuritysdk/g/b;)Ljava/lang/Thread;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/g/b;->b:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final native declared-synchronized a(Ljava/lang/Runnable;)V
.end method
