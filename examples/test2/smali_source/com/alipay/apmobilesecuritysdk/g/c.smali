.class final Lcom/alipay/apmobilesecuritysdk/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/g/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/g/c;

    const v1, 0x57

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/g/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/g/c;->a:Lcom/alipay/apmobilesecuritysdk/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
