.class public final Lcom/ut/device/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ut/device/c;

    const v1, 0x434

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/ut/device/a;)V
.end method
