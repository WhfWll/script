.class public final Lcom/alipay/sdk/encrypt/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/encrypt/e;

    const v1, 0x9c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-string v0, "DESede/ECB/PKCS5Padding"

    sput-object v0, Lcom/alipay/sdk/encrypt/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
