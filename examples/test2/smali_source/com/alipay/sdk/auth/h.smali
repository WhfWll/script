.class public final Lcom/alipay/sdk/auth/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final b:I = 0x41

.field private static c:Lcom/alipay/sdk/widget/a;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/auth/h;

    const v1, 0x8c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    sput-object v0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/sdk/widget/a;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static native a(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.end method

.method public static native a(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method private static native a(Landroid/content/Context;)Z
.end method

.method static synthetic b()Lcom/alipay/sdk/widget/a;
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sdk/auth/h;->c:Lcom/alipay/sdk/widget/a;

    return-object v0
.end method

.method private static native b(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/auth/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static native c(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.end method
