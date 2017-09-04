.class public Lcom/ta/utdid2/android/utils/DebugUtils;
.super Ljava/lang/Object;


# static fields
.field public static DBG:Z = false

.field private static final PROPERTY_DEBUG:Ljava/lang/String; = "alidebug"

.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetIntMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/ta/utdid2/android/utils/DebugUtils;

    const v1, 0x3e7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v2, "alidebug"

    invoke-static {v2, v1}, Lcom/ta/utdid2/android/utils/DebugUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1c

    :goto_13
    sput-boolean v0, Lcom/ta/utdid2/android/utils/DebugUtils;->DBG:Z

    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mClassType:Ljava/lang/Class;

    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetMethod:Ljava/lang/reflect/Method;

    sput-object v3, Lcom/ta/utdid2/android/utils/DebugUtils;->mGetIntMethod:Ljava/lang/reflect/Method;

    return-void

    :cond_1c
    move v0, v1

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getInt(Ljava/lang/String;I)I
.end method

.method private static native init()V
.end method
