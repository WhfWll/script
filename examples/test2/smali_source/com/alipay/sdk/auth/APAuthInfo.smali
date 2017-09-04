.class public Lcom/alipay/sdk/auth/APAuthInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/auth/APAuthInfo;

    const v1, 0x80

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/sdk/auth/APAuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/auth/APAuthInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/auth/APAuthInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/sdk/auth/APAuthInfo;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/sdk/auth/APAuthInfo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native getAppId()Ljava/lang/String;
.end method

.method public native getPid()Ljava/lang/String;
.end method

.method public native getProductId()Ljava/lang/String;
.end method

.method public native getRedirectUri()Ljava/lang/String;
.end method
