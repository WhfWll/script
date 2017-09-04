.class public Lcom/ta/utdid2/android/utils/StringUtils;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/StringUtils;

    const v1, 0x3ec

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static native hashCode(Ljava/lang/String;)I
.end method

.method public static native isEmpty(Ljava/lang/String;)Z
.end method
