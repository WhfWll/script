.class public final Lcom/alipay/sdk/sys/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/sys/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alipay/sdk/data/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/sys/b;

    const v1, 0xa8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a()Lcom/alipay/sdk/sys/b;
.end method

.method private static native a([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native b()Z
.end method

.method private native c()Landroid/content/Context;
.end method

.method private native d()Lcom/alipay/sdk/data/d;
.end method

.method private static native e()Ljava/lang/String;
.end method

.method private native f()Ljava/lang/String;
.end method


# virtual methods
.method public final native a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V
.end method
