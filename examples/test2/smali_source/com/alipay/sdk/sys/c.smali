.class public final Lcom/alipay/sdk/sys/c;
.super Ljava/lang/Object;


# static fields
.field private static a:D

.field private static b:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/sys/c;

    const v1, 0xa9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-wide/high16 v0, -0x4010000000000000L

    sput-wide v0, Lcom/alipay/sdk/sys/c;->a:D

    sput-wide v0, Lcom/alipay/sdk/sys/c;->b:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native a()Ljava/lang/String;
.end method
