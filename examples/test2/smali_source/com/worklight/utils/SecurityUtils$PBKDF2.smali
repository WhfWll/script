.class public Lcom/worklight/utils/SecurityUtils$PBKDF2;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/utils/SecurityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/utils/SecurityUtils$PBKDF2;

    const v1, 0x4bf

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native ceil(II)I
.end method

.method private static native concat([B[B)[B
.end method

.method private static native encodedInt(I)[B
.end method

.method private static native f(Ljavax/crypto/Mac;[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public static native genKey([C[BII)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation
.end method

.method private static native xor([B[B)[B
.end method
