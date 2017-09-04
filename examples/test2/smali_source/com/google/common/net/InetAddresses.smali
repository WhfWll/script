.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/google/common/net/InetAddresses;

    const v1, 0x38a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-string v0, "127.0.0.1"

    .line 124
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static native coerceToInteger(Ljava/net/InetAddress;)I
.end method

.method private static native convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native copyOfRange([BII)[B
.end method

.method public static native forString(Ljava/lang/String;)Ljava/net/InetAddress;
.end method

.method public static native forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
.end method

.method public static native fromInteger(I)Ljava/net/Inet4Address;
.end method

.method public static native fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public static native get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
.end method

.method public static native getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
.end method

.method public static native getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
.end method

.method public static native getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
.end method

.method private static native getInet4Address([B)Ljava/net/Inet4Address;
.end method

.method public static native getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
.end method

.method public static native getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
.end method

.method public static native hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
.end method

.method static native hash64To32(J)I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public static native is6to4Address(Ljava/net/Inet6Address;)Z
.end method

.method public static native isCompatIPv4Address(Ljava/net/Inet6Address;)Z
.end method

.method public static native isInetAddress(Ljava/lang/String;)Z
.end method

.method public static native isIsatapAddress(Ljava/net/Inet6Address;)Z
.end method

.method public static native isTeredoAddress(Ljava/net/Inet6Address;)Z
.end method

.method public static native isUriInetAddress(Ljava/lang/String;)Z
.end method

.method private static native textToNumericFormatV4(Ljava/lang/String;)[B
.end method

.method private static native textToNumericFormatV6(Ljava/lang/String;)[B
.end method

.method public static native toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
.end method
