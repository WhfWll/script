.class public final Lcom/alipay/sdk/encrypt/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/encrypt/c;

    const v1, 0x9a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native a([B)Ljava/lang/String;
.end method

.method private static native b([B)Ljava/lang/String;
.end method
