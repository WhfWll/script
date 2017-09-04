.class public final Lcom/alipay/sdk/widget/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/widget/a;

    const v1, 0xb6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/widget/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/widget/a;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private native a(Ljava/lang/CharSequence;)V
.end method

.method private static synthetic b(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/widget/a;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final native a()Z
.end method

.method public final native b()V
.end method

.method public final native c()V
.end method
