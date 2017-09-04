.class public final Lcom/alipay/sdk/encrypt/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "SHA1WithRSA"

.field private static final b:Ljava/lang/String; = "RSA"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/encrypt/d;

    const v1, 0x9b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
