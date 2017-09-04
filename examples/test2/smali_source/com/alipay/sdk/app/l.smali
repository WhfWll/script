.class public final Lcom/alipay/sdk/app/l;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/l;

    const v1, 0x7f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a()Ljava/lang/String;
.end method

.method public static native a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native a(Ljava/lang/String;)V
.end method

.method public static native b()Ljava/lang/String;
.end method

.method private static native c()Ljava/lang/String;
.end method
