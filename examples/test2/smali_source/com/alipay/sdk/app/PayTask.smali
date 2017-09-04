.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/PayTask;

    const v1, 0x73

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/alipay/sdk/util/h;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    return-void
.end method

.method private native a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
.end method

.method private native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native c(Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native checkAccountIfExist()Z
.end method

.method public native getVersion()Ljava/lang/String;
.end method

.method public native declared-synchronized pay(Ljava/lang/String;)Ljava/lang/String;
.end method
