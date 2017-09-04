.class final Lcom/alipay/sdk/auth/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/net/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alipay/sdk/data/e;

.field final synthetic d:Lcom/alipay/sdk/auth/APAuthInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/auth/i;

    const v1, 0x8d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/sdk/net/d;Landroid/app/Activity;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/net/d;

    iput-object p2, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/data/e;

    iput-object p4, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
