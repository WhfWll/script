.class final Lcom/alipay/sdk/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/alipay/sdk/app/H5PayActivity$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/h;

    const v1, 0x7b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/sdk/app/H5PayActivity$a;Landroid/webkit/SslErrorHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/app/h;->b:Lcom/alipay/sdk/app/H5PayActivity$a;

    iput-object p2, p0, Lcom/alipay/sdk/app/h;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
