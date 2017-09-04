.class public Lcom/MobileTicket/CheckCodeUtil;
.super Ljava/lang/Object;
.source "CheckCodeUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/CheckCodeUtil;

    const v1, 0x1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkcode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native checkcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decheckcode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decheckcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
