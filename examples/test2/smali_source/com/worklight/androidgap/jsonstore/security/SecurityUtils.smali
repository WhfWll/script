.class public Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final KEY_SIZE_AES256:I = 0x20

.field protected static final PBKDF2_ITERATIONS:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;

    const v1, 0x44d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static native decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native encodeBytesAsHexString([B)Ljava/lang/String;
.end method

.method public static native encodeKeyAsHexString(Ljavax/crypto/SecretKey;)Ljava/lang/String;
.end method

.method public static native encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native generateIV(I)[B
.end method

.method public static native generateKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native generateLocalKey(I)[B
.end method
