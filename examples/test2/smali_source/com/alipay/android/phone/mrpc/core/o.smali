.class public final Lcom/alipay/android/phone/mrpc/core/o;
.super Lcom/alipay/android/phone/mrpc/core/ad;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/android/phone/mrpc/core/o;

    const v1, 0x35

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/ad;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/o;->a:Landroid/content/Context;

    return-void
.end method

.method private static synthetic a(Lcom/alipay/android/phone/mrpc/core/o;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/o;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final native a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/e;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/e;",
            ")TT;"
        }
    .end annotation
.end method
