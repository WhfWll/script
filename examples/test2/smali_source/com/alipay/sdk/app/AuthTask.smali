.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;

.field private static final b:I = 0x49


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/AuthTask;

    const v1, 0x6e

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/alipay/sdk/util/h;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    return-void
.end method

.method private native a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
.end method

.method private static native a(Landroid/content/Context;)Z
.end method

.method private native b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native declared-synchronized auth(Ljava/lang/String;)Ljava/lang/String;
.end method
