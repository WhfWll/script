.class public final Lcom/alipay/b/a/a/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/alipay/b/a/a/c/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/e/b;

    const v1, 0x6a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/b/a/a/c/b/a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/b/a/a/e/b;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/alipay/b/a/a/e/b;->b:Lcom/alipay/b/a/a/c/b/a;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/b/a/a/e/b;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/alipay/b/a/a/e/b;->b:Lcom/alipay/b/a/a/c/b/a;

    return-void
.end method

.method private static native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synthetic a(Lcom/alipay/b/a/a/e/b;)V
    .registers 1

    invoke-virtual {p0}, Lcom/alipay/b/a/a/e/b;->a()V

    return-void
.end method

.method private native b()V
.end method


# virtual methods
.method final native declared-synchronized a()V
.end method
