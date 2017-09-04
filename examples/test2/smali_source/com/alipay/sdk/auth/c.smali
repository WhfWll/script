.class final Lcom/alipay/sdk/auth/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/auth/c;

    const v1, 0x87

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/auth/c;->b:Lcom/alipay/sdk/auth/AuthActivity;

    iput-object p2, p0, Lcom/alipay/sdk/auth/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
