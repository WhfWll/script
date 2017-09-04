.class public Lcom/MobileTicket/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/DeviceUtils;

    const v1, 0x3

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getDeviceId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getUUID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native isEmpty(Ljava/lang/String;)Z
.end method
