.class public Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"


# static fields
.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 10
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 173
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 174
    .local v0, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 175
    .local v4, "width":I
    const/4 v1, 0x1

    .line 177
    .local v1, "inSampleSize":I
    if-gt v4, p1, :cond_9

    if-le v0, p2, :cond_23

    .line 178
    :cond_9
    if-le v4, v0, :cond_24

    .line 179
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 184
    :goto_12
    mul-int v5, v4, v0

    int-to-float v3, v5

    .line 186
    .local v3, "totalPixels":F
    mul-int v5, p1, p2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 188
    .local v2, "maxTotalPixels":F
    :goto_1a
    mul-int v5, v1, v1

    int-to-float v5, v5

    div-float v5, v3, v5

    cmpl-float v5, v5, v2

    if-gtz v5, :cond_2c

    .line 192
    .end local v2    # "maxTotalPixels":F
    .end local v3    # "totalPixels":F
    :cond_23
    return v1

    .line 181
    :cond_24
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_12

    .line 189
    .restart local v2    # "maxTotalPixels":F
    .restart local v3    # "totalPixels":F
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public static decodeByteArray([B)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "data"    # [B

    .prologue
    .line 159
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 160
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 162
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 164
    const/4 v2, 0x0

    :try_start_f
    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_13} :catch_16
    .catchall {:try_start_f .. :try_end_13} :catchall_21

    move-result-object v2

    :try_start_14
    monitor-exit v3

    .line 167
    :goto_15
    return-object v2

    .line 165
    :catch_16
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_15

    .line 159
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 132
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 134
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    .line 136
    :try_start_e
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_14
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    move-result-object v2

    :try_start_12
    monitor-exit v3

    .line 139
    :goto_13
    return-object v2

    .line 137
    :catch_14
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_13

    .line 131
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v2, 0x0

    .line 145
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 147
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 148
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_20

    .line 150
    const/4 v4, 0x0

    :try_start_10
    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_16
    .catchall {:try_start_10 .. :try_end_13} :catchall_20

    move-result-object v2

    :try_start_14
    monitor-exit v3

    .line 153
    :goto_15
    return-object v2

    .line 151
    :catch_16
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    monitor-exit v3

    goto :goto_15

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    .line 117
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    .line 122
    :try_start_e
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_14
    .catchall {:try_start_e .. :try_end_11} :catchall_1f

    move-result-object v2

    :try_start_12
    monitor-exit v3

    .line 125
    :goto_13
    return-object v2

    .line 123
    :catch_14
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_13

    .line 117
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public static decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 96
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 97
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 101
    const/4 v2, 0x0

    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    if-eqz p2, :cond_2b

    .line 105
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_3e

    .line 108
    :cond_2b
    const/4 v2, 0x0

    :try_start_2c
    array-length v4, p0

    invoke-static {p0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_30} :catch_33
    .catchall {:try_start_2c .. :try_end_30} :catchall_3e

    move-result-object v2

    :try_start_31
    monitor-exit v3

    .line 111
    :goto_32
    return-object v2

    .line 109
    :catch_33
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_32

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "fileDescriptor"    # Ljava/io/FileDescriptor;
    .param p1, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, 0x0

    .line 75
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 79
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 80
    const/4 v4, 0x0

    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 82
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    if-eqz p2, :cond_2b

    .line 84
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_3c

    .line 87
    :cond_2b
    const/4 v4, 0x0

    :try_start_2c
    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3c

    move-result-object v2

    :try_start_30
    monitor-exit v3

    .line 90
    :goto_31
    return-object v2

    .line 88
    :catch_32
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    monitor-exit v3

    goto :goto_31

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 54
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 59
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 61
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    if-eqz p2, :cond_29

    .line 63
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3a

    .line 66
    :cond_29
    :try_start_29
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3a

    move-result-object v2

    :try_start_2d
    monitor-exit v3

    .line 69
    :goto_2e
    return-object v2

    .line 67
    :catch_2f
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_2e

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;ILcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "maxSize"    # Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 33
    sget-object v3, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 34
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 38
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    if-eqz p3, :cond_29

    .line 42
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3a

    .line 45
    :cond_29
    :try_start_29
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_3a

    move-result-object v2

    :try_start_2d
    monitor-exit v3

    .line 48
    :goto_2e
    return-object v2

    .line 46
    :catch_2f
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_2e

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_3a

    throw v2
.end method
