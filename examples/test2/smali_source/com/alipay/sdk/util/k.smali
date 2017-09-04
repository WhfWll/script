.class public final Lcom/alipay/sdk/util/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/k$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.alipay.android.app"

.field public static final b:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final c:Ljava/lang/String; = "7.0.0"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/util/k;

    const v1, 0xb5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/k$a;
.end method

.method public static native a()Ljava/lang/String;
.end method

.method public static native a([B)Ljava/lang/String;
.end method

.method public static native a(Landroid/content/Context;)Z
.end method

.method private static native a(Landroid/content/pm/PackageInfo;)Z
.end method

.method public static native a(Ljava/lang/String;)Z
.end method

.method public static native b()Ljava/lang/String;
.end method

.method public static native b(Landroid/content/Context;)Z
.end method

.method private static native c()Ljava/lang/String;
.end method

.method public static native c(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native d()Ljava/lang/String;
.end method

.method public static native d(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native e()Ljava/lang/String;
.end method

.method public static native e(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native f()Ljava/lang/String;
.end method

.method public static native f(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native g(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native h(Landroid/content/Context;)Landroid/util/DisplayMetrics;
.end method
