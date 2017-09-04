.class public final enum Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
.super Ljava/lang/Enum;
.source "DeviceAuthPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum clearDeviceCertCredentials:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum getDeviceUUID:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum init:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum isCertificateExists:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum saveCertificate:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum signCsr:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

.field public static final enum signDeviceAuth:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "init"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->init:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "isCertificateExists"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->isCertificateExists:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "signDeviceAuth"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->signDeviceAuth:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "signCsr"

    invoke-direct {v0, v1, v6}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->signCsr:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "saveCertificate"

    invoke-direct {v0, v1, v7}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->saveCertificate:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "getDeviceUUID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->getDeviceUUID:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    const-string v1, "clearDeviceCertCredentials"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->clearDeviceCertCredentials:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    sget-object v1, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->init:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->isCertificateExists:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->signDeviceAuth:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->signCsr:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->saveCertificate:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->getDeviceUUID:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->clearDeviceCertCredentials:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    .registers 3
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 37
    :goto_4
    return-object v1

    .line 36
    :catch_5
    move-exception v0

    .line 37
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    return-object v0
.end method
