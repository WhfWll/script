.class public Lcom/worklight/utils/PaidSecurityUtils;
.super Ljava/lang/Object;
.source "PaidSecurityUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/utils/PaidSecurityUtils;

    const v1, 0x4be

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native UFa(D)D
.end method

.method private static native UFr(D)D
.end method

.method public static native kpg(Landroid/content/Context;[Ljava/lang/String;)[B
.end method

.method private static native xpg([Ljava/lang/String;Ljava/lang/StringBuffer;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method
