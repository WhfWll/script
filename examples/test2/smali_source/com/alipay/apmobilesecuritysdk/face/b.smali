.class final Lcom/alipay/apmobilesecuritysdk/face/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alipay/apmobilesecuritysdk/face/a$a;

.field final synthetic c:Lcom/alipay/apmobilesecuritysdk/face/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/face/b;

    const v1, 0x54

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/a;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->c:Lcom/alipay/apmobilesecuritysdk/face/a;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/b;->b:Lcom/alipay/apmobilesecuritysdk/face/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
