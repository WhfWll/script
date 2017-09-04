.class public final Lcom/alipay/apmobilesecuritysdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/apmobilesecuritysdk/b/a;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/apmobilesecuritysdk/b/a;

    const v1, 0x42

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/b/a;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/b/a;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/b/a;->b:Lcom/alipay/apmobilesecuritysdk/b/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/apmobilesecuritysdk/b/a;->a:I

    return-void
.end method

.method public static native a()Lcom/alipay/apmobilesecuritysdk/b/a;
.end method


# virtual methods
.method public final native b()I
.end method

.method public final native c()V
.end method

.method public final native d()Ljava/lang/String;
.end method
