.class public Lcom/ta/utdid2/android/utils/PhoneInfoUtils;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;

    const v1, 0x3ea

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getImei(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getImsi(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static final native getUniqueID()Ljava/lang/String;
.end method
