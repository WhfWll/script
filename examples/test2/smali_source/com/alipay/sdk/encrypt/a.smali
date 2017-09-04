.class public final Lcom/alipay/sdk/encrypt/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x40

.field private static final c:I = 0x18

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x4

.field private static final g:I = -0x80

.field private static final h:C = '='

.field private static final i:[B

.field private static final j:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-class v0, Lcom/alipay/sdk/encrypt/a;

    const v1, 0x98

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/alipay/sdk/encrypt/a;->i:[B

    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/alipay/sdk/encrypt/a;->j:[C

    move v1, v0

    :goto_1e
    const/16 v2, 0x80

    if-ge v1, v2, :cond_2a

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->i:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/16 v1, 0x5a

    :goto_2c
    const/16 v2, 0x41

    if-lt v1, v2, :cond_3a

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_3a
    const/16 v1, 0x7a

    :goto_3c
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4c

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3c

    :cond_4c
    const/16 v1, 0x39

    :goto_4e
    const/16 v2, 0x30

    if-lt v1, v2, :cond_5e

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    :cond_5e
    sget-object v1, Lcom/alipay/sdk/encrypt/a;->i:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/alipay/sdk/encrypt/a;->i:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_67
    const/16 v2, 0x19

    if-gt v1, v2, :cond_75

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_75
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_79
    const/16 v3, 0x33

    if-gt v2, v3, :cond_89

    sget-object v3, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_89
    const/16 v1, 0x34

    :goto_8b
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_9b

    sget-object v2, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_9b
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->j:[C

    aput-char v5, v0, v7

    sget-object v0, Lcom/alipay/sdk/encrypt/a;->j:[C

    aput-char v6, v0, v8

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native a([C)I
.end method

.method public static native a([B)Ljava/lang/String;
.end method

.method private static native a(C)Z
.end method

.method public static native a(Ljava/lang/String;)[B
.end method

.method private static native b(C)Z
.end method

.method private static native c(C)Z
.end method
