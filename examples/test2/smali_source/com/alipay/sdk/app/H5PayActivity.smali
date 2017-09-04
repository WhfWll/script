.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/H5PayActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/alipay/sdk/widget/a;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/H5PayActivity;

    const v1, 0x72

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/alipay/sdk/app/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/g;-><init>(Lcom/alipay/sdk/app/H5PayActivity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private static native a()V
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5PayActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Z

    return p1
.end method

.method private native b()V
.end method

.method static synthetic b(Lcom/alipay/sdk/app/H5PayActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Z

    return v0
.end method

.method private native c()V
.end method

.method static synthetic c(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/alipay/sdk/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    :cond_b
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/H5PayActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/sdk/app/H5PayActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Lcom/alipay/sdk/widget/a;

    return-void
.end method


# virtual methods
.method public native finish()V
.end method

.method public native onBackPressed()V
.end method

.method public native onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected native onDestroy()V
.end method
