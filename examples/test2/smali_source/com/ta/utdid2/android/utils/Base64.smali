.class public Lcom/ta/utdid2/android/utils/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/android/utils/Base64$Coder;,
        Lcom/ta/utdid2/android/utils/Base64$Decoder;,
        Lcom/ta/utdid2/android/utils/Base64$Encoder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/Base64;

    const v1, 0x3e5

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/ta/utdid2/android/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/ta/utdid2/android/utils/Base64;->$assertionsDisabled:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native decode(Ljava/lang/String;I)[B
.end method

.method public static native decode([BI)[B
.end method

.method public static native decode([BIII)[B
.end method

.method public static native encode([BI)[B
.end method

.method public static native encode([BIII)[B
.end method

.method public static native encodeToString([BI)Ljava/lang/String;
.end method

.method public static native encodeToString([BIII)Ljava/lang/String;
.end method
