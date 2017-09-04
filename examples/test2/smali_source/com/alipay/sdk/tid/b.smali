.class public final Lcom/alipay/sdk/tid/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/tid/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/tid/b;

    const v1, 0xab

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native declared-synchronized a()Lcom/alipay/sdk/tid/b;
.end method

.method private native a(Landroid/content/Context;)V
.end method

.method private native a(Ljava/lang/String;)V
.end method

.method private native b()Ljava/lang/String;
.end method

.method private native b(Ljava/lang/String;)V
.end method

.method private native c()Ljava/lang/String;
.end method

.method private native d()Z
.end method

.method private static native e()V
.end method

.method private static native f()Ljava/lang/String;
.end method
