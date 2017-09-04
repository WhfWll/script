.class public final Lcom/alipay/b/a/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/b/a/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/b/a/a/b/a;

    const v1, 0x5d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    new-instance v0, Lcom/alipay/b/a/a/b/a;

    invoke-direct {v0}, Lcom/alipay/b/a/a/b/a;-><init>()V

    sput-object v0, Lcom/alipay/b/a/a/b/a;->a:Lcom/alipay/b/a/a/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a()Lcom/alipay/b/a/a/b/a;
.end method

.method public static native a(Landroid/content/Context;)Ljava/lang/String;
.end method
