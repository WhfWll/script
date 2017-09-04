.class final Lcom/alipay/sdk/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/util/i;

    const v1, 0xb3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/sdk/util/h;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/util/i;->a:Lcom/alipay/sdk/util/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public final native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
