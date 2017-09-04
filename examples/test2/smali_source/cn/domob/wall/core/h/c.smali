.class public final Lcn/domob/wall/core/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/h/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/h/d;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/h/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/h/c;->a:Lcn/domob/wall/core/h/d;

    .line 10
    const-string v0, "01"

    sput-object v0, Lcn/domob/wall/core/h/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method private static a(I[B)B
    .registers 3

    .prologue
    .line 116
    array-length v0, p1

    if-lt p0, v0, :cond_5

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_4
    return v0

    :cond_5
    aget-byte v0, p1, p0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/wall/core/h/c$a;
    .registers 13

    .prologue
    .line 39
    .line 42
    new-instance v0, Lcn/domob/wall/core/h/c$a;

    invoke-direct {v0}, Lcn/domob/wall/core/h/c$a;-><init>()V

    .line 45
    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 46
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 47
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 48
    const/16 v1, 0xa

    new-array v6, v1, [B

    .line 49
    const/4 v2, 0x3

    .line 50
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_1f
    array-length v7, v3

    add-int/lit8 v7, v7, -0x4

    if-lt v1, v7, :cond_2d

    .line 51
    aget-byte v7, v3, v1

    aput-byte v7, v6, v2

    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 50
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 55
    :cond_2d
    array-length v1, v4

    .line 57
    const/4 v2, 0x4

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    .line 58
    const/4 v2, 0x5

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v6, v2

    .line 59
    invoke-static {v5, v6}, Lcn/domob/wall/core/h/c;->a([B[B)[B

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcn/domob/wall/core/h/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 67
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/c$a;->a(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x41dfffffffc00000L

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 71
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/wall/core/h/c$a;->b(Ljava/lang/String;)V

    .line 78
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    xor-int/2addr v1, v3

    .line 79
    invoke-static {v1}, Lcn/domob/wall/core/h/c;->a(I)[B

    move-result-object v3

    .line 81
    const/4 v1, 0x0

    :goto_72
    array-length v4, v3

    if-ge v1, v4, :cond_7e

    .line 82
    rsub-int/lit8 v4, v1, 0x3

    aget-byte v5, v3, v1

    aput-byte v5, v2, v4

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 84
    :cond_7e
    invoke-static {v2}, Lcn/domob/wall/core/h/c;->a([B)[B

    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/domob/wall/core/h/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcn/domob/wall/core/h/c;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/c$a;->c(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_9c} :catch_9d

    .line 90
    :goto_9c
    return-object v0

    .line 88
    :catch_9d
    move-exception v1

    .line 89
    sget-object v2, Lcn/domob/wall/core/h/c;->a:Lcn/domob/wall/core/h/d;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_9c
.end method

.method private static a(I)[B
    .registers 4

    .prologue
    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 107
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 124
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 134
    :cond_9
    :goto_9
    return-object v0

    .line 127
    :cond_a
    :try_start_a
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 129
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21

    move-result-object v0

    goto :goto_9

    .line 131
    :catch_21
    move-exception v1

    goto :goto_9
.end method

.method private static a([B)[B
    .registers 6

    .prologue
    .line 157
    const/4 v0, 0x4

    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-gt v0, v1, :cond_21

    .line 158
    const/4 v1, 0x3

    :goto_7
    if-ltz v1, :cond_1e

    .line 159
    add-int/lit8 v2, v0, 0x3

    sub-int/2addr v2, v1

    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    add-int/lit8 v4, v0, 0x3

    sub-int/2addr v4, v1

    invoke-static {v4, p0}, Lcn/domob/wall/core/h/c;->a(I[B)B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 158
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 157
    :cond_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 163
    :cond_21
    return-object p0
.end method

.method private static a([B[B)[B
    .registers 8

    .prologue
    const/4 v1, 0x3

    .line 138
    move v0, v1

    .line 139
    :goto_2
    array-length v2, p0

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_33

    .line 140
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1a

    move v2, v1

    .line 141
    :goto_b
    if-ltz v2, :cond_30

    .line 142
    rsub-int/lit8 v3, v2, 0x9

    sub-int v4, v0, v2

    invoke-static {v4, p0}, Lcn/domob/wall/core/h/c;->a(I[B)B

    move-result v4

    aput-byte v4, p1, v3

    .line 141
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1a
    move v2, v1

    .line 147
    :goto_1b
    if-ltz v2, :cond_30

    .line 148
    rsub-int/lit8 v3, v2, 0x9

    rsub-int/lit8 v4, v2, 0x9

    aget-byte v4, p1, v4

    sub-int v5, v0, v2

    invoke-static {v5, p0}, Lcn/domob/wall/core/h/c;->a(I[B)B

    move-result v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 147
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 139
    :cond_30
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 153
    :cond_33
    return-object p1
.end method

.method private static b([B)Ljava/lang/String;
    .registers 6

    .prologue
    .line 167
    const-string v0, ""

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    array-length v0, p0

    if-ge v1, v0, :cond_37

    .line 170
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 174
    :cond_37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
