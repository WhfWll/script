.class Lcom/ta/utdid2/android/utils/Base64$Encoder;
.super Lcom/ta/utdid2/android/utils/Base64$Coder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;

    const v1, 0x3e4

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/16 v1, 0x40

    const-class v0, Lcom/ta/utdid2/android/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_13
    sput-boolean v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->$assertionsDisabled:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->ENCODE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_13

    :array_26
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_4a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ta/utdid2/android/utils/Base64$Coder;-><init>()V

    iput-object p2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->output:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->ENCODE:[B

    :goto_21
    iput-object v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tail:[B

    iput v2, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->count:I

    return-void

    :cond_33
    move v0, v2

    goto :goto_c

    :cond_35
    move v0, v2

    goto :goto_13

    :cond_37
    move v1, v2

    goto :goto_19

    :cond_39
    sget-object v0, Lcom/ta/utdid2/android/utils/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_21

    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public native maxOutputSize(I)I
.end method

.method public native process([BIIZ)Z
.end method
