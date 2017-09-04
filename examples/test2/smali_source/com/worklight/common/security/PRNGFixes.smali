.class public final Lcom/worklight/common/security/PRNGFixes;
.super Ljava/lang/Object;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/common/security/PRNGFixes$LinuxPRNGSecureRandom;,
        Lcom/worklight/common/security/PRNGFixes$LinuxPRNGSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

.field private static final VERSION_CODE_JELLY_BEAN:I = 0x10

.field private static final VERSION_CODE_JELLY_BEAN_MR2:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/security/PRNGFixes;

    const v1, 0x4ba

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    invoke-static {}, Lcom/worklight/common/security/PRNGFixes;->getBuildFingerprintAndDeviceSerial()[B

    move-result-object v0

    sput-object v0, Lcom/worklight/common/security/PRNGFixes;->BUILD_FINGERPRINT_AND_DEVICE_SERIAL:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .prologue
    .line 50
    invoke-static {}, Lcom/worklight/common/security/PRNGFixes;->generateSeed()[B

    move-result-object v0

    return-object v0
.end method

.method public static native apply()V
.end method

.method private static native applyOpenSSLFix()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method private static native generateSeed()[B
.end method

.method private static native getBuildFingerprintAndDeviceSerial()[B
.end method

.method private static native getDeviceSerialNumber()Ljava/lang/String;
.end method

.method private static native installLinuxPRNGSecureRandom()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
