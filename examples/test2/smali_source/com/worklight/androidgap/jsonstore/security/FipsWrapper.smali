.class public Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;
.super Ljava/lang/Object;
.source "FipsWrapper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;

    const v1, 0x44a

    .line 76
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-string v0, "openssl_fips"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _decryptAES([BI[BI[BI)[B
.end method

.method private static native _disableFips()I
.end method

.method private static native _enableFips()I
.end method

.method private static native _encryptAES([BI[BILjava/lang/String;I)[B
.end method

.method private static native _getFipsMode()I
.end method

.method private static native _setFips(I)I
.end method

.method public static native decryptAES(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public static native disableFips()I
.end method

.method public static native enableFips()I
.end method

.method public static native encryptAES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native getFipsMode()I
.end method

.method public static native setFips(I)I
.end method
