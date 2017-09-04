.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;,
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    }
.end annotation


# instance fields
.field private final DISK_CACHE_INDEX:I

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache",
            "<",
            "Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .registers 4
    .param p1, "globalConfig"    # Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->DISK_CACHE_INDEX:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 52
    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "globalConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    .line 54
    return-void
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "expiryTimestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p2, :cond_10

    .line 210
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapFactory()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    .line 211
    .local v0, "bitmapFactory":Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;
    if-eqz v0, :cond_10

    .line 212
    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->cloneNew()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 215
    .end local v0    # "bitmapFactory":Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;
    :cond_10
    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v2, :cond_2b

    .line 216
    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 217
    .local v1, "key":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v2, v1, p3, p4, p5}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 219
    .end local v1    # "key":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    :cond_2b
    return-object p3
.end method

.method private decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "bitmapMeta"    # Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 414
    :cond_3
    :goto_3
    return-object v0

    .line 394
    :cond_4
    const/4 v0, 0x0

    .line 395
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2f

    .line 396
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 397
    :cond_11
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    goto :goto_3

    .line 400
    :cond_1c
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 401
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v2

    .line 402
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 399
    invoke-static {v1, v2, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    goto :goto_3

    :cond_2f
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    if-eqz v1, :cond_3

    .line 405
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 406
    :cond_3b
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-static {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 407
    goto :goto_3

    .line 409
    :cond_42
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    .line 410
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v2

    .line 411
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 408
    invoke-static {v1, v2, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method private declared-synchronized rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 418
    monitor-enter p0

    move-object/from16 v12, p3

    .line 419
    .local v12, "result":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_4e

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 420
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 421
    .local v8, "bitmapFile":Ljava/io/File;
    if-eqz v8, :cond_4e

    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_5d

    move-result v0

    if-eqz v0, :cond_4e

    .line 422
    const/4 v10, 0x0

    .line 424
    .local v10, "exif":Landroid/media/ExifInterface;
    :try_start_18
    new-instance v10, Landroid/media/ExifInterface;

    .end local v10    # "exif":Landroid/media/ExifInterface;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_21} :catch_51
    .catchall {:try_start_18 .. :try_end_21} :catchall_5d

    .line 428
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    :try_start_21
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v11

    .line 429
    .local v11, "orientation":I
    const/4 v7, 0x0

    .line 430
    .local v7, "angle":I
    packed-switch v11, :pswitch_data_60

    .line 441
    :pswitch_2c
    const/4 v7, 0x0

    .line 444
    :goto_2d
    if-eqz v7, :cond_4e

    .line 445
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 446
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, v7

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 447
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4c
    .catchall {:try_start_21 .. :try_end_4c} :catchall_5d

    .line 449
    const/16 p3, 0x0

    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "angle":I
    .end local v8    # "bitmapFile":Ljava/io/File;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "orientation":I
    :cond_4e
    move-object v13, v12

    .line 453
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .local v13, "result":Landroid/graphics/Bitmap;
    :goto_4f
    monitor-exit p0

    return-object v13

    .line 425
    .end local v13    # "result":Landroid/graphics/Bitmap;
    .restart local v8    # "bitmapFile":Ljava/io/File;
    .restart local v12    # "result":Landroid/graphics/Bitmap;
    :catch_51
    move-exception v9

    .local v9, "e":Ljava/lang/Throwable;
    move-object v13, v12

    .line 426
    .end local v12    # "result":Landroid/graphics/Bitmap;
    .restart local v13    # "result":Landroid/graphics/Bitmap;
    goto :goto_4f

    .line 432
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v13    # "result":Landroid/graphics/Bitmap;
    .restart local v7    # "angle":I
    .restart local v10    # "exif":Landroid/media/ExifInterface;
    .restart local v11    # "orientation":I
    .restart local v12    # "result":Landroid/graphics/Bitmap;
    :pswitch_54
    const/16 v7, 0x5a

    .line 433
    goto :goto_2d

    .line 435
    :pswitch_57
    const/16 v7, 0xb4

    .line 436
    goto :goto_2d

    .line 438
    :pswitch_5a
    const/16 v7, 0x10e

    .line 439
    goto :goto_2d

    .line 418
    .end local v7    # "angle":I
    .end local v8    # "bitmapFile":Ljava/io/File;
    .end local v10    # "exif":Landroid/media/ExifInterface;
    .end local v11    # "orientation":I
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_57
        :pswitch_2c
        :pswitch_2c
        :pswitch_54
        :pswitch_2c
        :pswitch_5a
    .end packed-switch
.end method


# virtual methods
.method public clearCache()V
    .registers 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    .line 300
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    .line 301
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public clearDiskCache()V
    .registers 4

    .prologue
    .line 310
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    move-result v1

    if-nez v1, :cond_1c

    .line 313
    :try_start_f
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    .line 314
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_21
    .catchall {:try_start_f .. :try_end_19} :catchall_2a

    .line 318
    :goto_19
    const/4 v1, 0x0

    :try_start_1a
    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 310
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a

    .line 321
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    .line 322
    return-void

    .line 315
    :catch_21
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 310
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v1

    if-nez v1, :cond_14

    .line 343
    :try_start_f
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_16
    .catchall {:try_start_f .. :try_end_14} :catchall_1f

    .line 340
    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v2

    .line 349
    return-void

    .line 344
    :catch_16
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 340
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public clearMemoryCache()V
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    .line 307
    :cond_9
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 331
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 332
    .local v0, "key":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v1, :cond_12

    .line 333
    :goto_a
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 337
    :cond_12
    return-void

    .line 334
    :cond_13
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public close()V
    .registers 4

    .prologue
    .line 372
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 373
    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_17

    .line 375
    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_14

    .line 376
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_22

    .line 381
    :cond_14
    :goto_14
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 372
    :cond_17
    monitor-exit v2

    .line 384
    return-void

    .line 378
    :catch_19
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 372
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 135
    .local p3, "task":Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;, "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask<*>;"
    new-instance v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V

    .line 137
    .local v8, "bitmapMeta":Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;
    const/4 v11, 0x0

    .line 138
    .local v11, "outputStream":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 141
    .local v13, "snapshot":Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    const/4 v5, 0x0

    .line 144
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_9
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 145
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v2, :cond_18

    .line 146
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    .line 149
    :cond_18
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1a} :catch_d2
    .catchall {:try_start_9 .. :try_end_1a} :catchall_e3

    if-eqz v2, :cond_a7

    .line 151
    :try_start_1c
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v13

    .line 152
    if-nez v13, :cond_60

    .line 153
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v10

    .line 154
    .local v10, "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    if-eqz v10, :cond_60

    .line 155
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v11

    .line 156
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, p1, v11, v0}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 157
    iget-wide v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_52

    .line 158
    invoke-virtual {v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_4a} :catch_9f
    .catchall {:try_start_1c .. :try_end_4a} :catchall_e3

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    const/4 v5, 0x0

    .line 205
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :goto_51
    return-object v5

    .line 161
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :cond_52
    :try_start_52
    iget-wide v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    invoke-virtual {v10, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->setEntryExpiryTimestamp(J)V

    .line 162
    invoke-virtual {v10}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->commit()V

    .line 164
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v13

    .line 167
    .end local v10    # "editor":Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :cond_60
    if-eqz v13, :cond_a7

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v2

    iput-object v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    .line 169
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 170
    if-nez v5, :cond_a7

    .line 171
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    .line 172
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_79} :catch_9f
    .catchall {:try_start_52 .. :try_end_79} :catchall_e3

    move-object v12, v11

    .line 182
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .local v12, "outputStream":Ljava/io/OutputStream;
    :goto_7a
    if-nez v5, :cond_f1

    .line 183
    :try_start_7c
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_81} :catch_ee
    .catchall {:try_start_7c .. :try_end_81} :catchall_eb

    .line 184
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    :try_start_81
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, p1, v11, v0}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    .line 185
    iget-wide v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_91} :catch_d2
    .catchall {:try_start_81 .. :try_end_91} :catchall_e3

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_a9

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    const/4 v5, 0x0

    goto :goto_51

    .line 175
    :catch_9f
    move-exception v9

    .line 176
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_a0
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_a7
    move-object v12, v11

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    goto :goto_7a

    .line 188
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    :cond_a9
    move-object v0, v11

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    .line 189
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    :goto_b9
    if-eqz v5, :cond_cb

    .line 194
    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v5}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 195
    iget-wide v6, v8, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_ca} :catch_d2
    .catchall {:try_start_a0 .. :try_end_ca} :catchall_e3

    move-result-object v5

    .line 201
    :cond_cb
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_51

    .line 198
    :catch_d2
    move-exception v9

    .line 199
    .restart local v9    # "e":Ljava/lang/Throwable;
    :goto_d3
    :try_start_d3
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_e3

    .line 201
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    const/4 v5, 0x0

    goto/16 :goto_51

    .line 200
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_e3
    move-exception v2

    .line 201
    :goto_e4
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    invoke-static {v13}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    throw v2

    .line 200
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catchall_eb
    move-exception v2

    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto :goto_e4

    .line 198
    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catch_ee
    move-exception v9

    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto :goto_d3

    .end local v11    # "outputStream":Ljava/io/OutputStream;
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :cond_f1
    move-object v11, v12

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "outputStream":Ljava/io/OutputStream;
    goto :goto_b9
.end method

.method public flush()V
    .registers 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_c

    .line 359
    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->flush()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 356
    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v2

    .line 365
    return-void

    .line 360
    :catch_e
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 356
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_10

    .line 246
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    .line 248
    :goto_f
    return-object v0

    :cond_10
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_f

    .line 244
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    const/4 v8, 0x0

    .line 261
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v3, v8

    .line 291
    :goto_c
    return-object v3

    .line 262
    :cond_d
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v0, :cond_14

    .line 263
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    .line 265
    :cond_14
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_6d

    .line 266
    const/4 v7, 0x0

    .line 268
    .local v7, "snapshot":Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :try_start_19
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v7

    .line 269
    if-eqz v7, :cond_74

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 273
    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 281
    :goto_37
    invoke-direct {p0, p1, p2, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 282
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->getExpiryTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_47} :catch_62
    .catchall {:try_start_19 .. :try_end_47} :catchall_6f

    move-result-object v3

    .line 288
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_c

    .line 276
    :cond_4c
    const/4 v0, 0x0

    :try_start_4d
    invoke-virtual {v7, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 277
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    .line 278
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 275
    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_60} :catch_62
    .catchall {:try_start_4d .. :try_end_60} :catchall_6f

    move-result-object v3

    goto :goto_37

    .line 285
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_62
    move-exception v6

    .line 286
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_63
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6f

    .line 288
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v7    # "snapshot":Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :cond_6d
    :goto_6d
    move-object v3, v8

    .line 291
    goto :goto_c

    .line 287
    .restart local v7    # "snapshot":Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :catchall_6f
    move-exception v0

    .line 288
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    throw v0

    .line 288
    :cond_74
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6d
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 231
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    .line 232
    .local v0, "key":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 234
    .end local v0    # "key":Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    :cond_1a
    return-object v1
.end method

.method public initDiskCache()V
    .registers 10

    .prologue
    .line 91
    iget-object v7, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 92
    :try_start_3
    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v6

    if-eqz v6, :cond_55

    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v6}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 93
    :cond_17
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCachePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "diskCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_55

    .line 95
    :cond_2e
    invoke-static {v2}, Lcom/lidroid/xutils/util/OtherUtils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 96
    .local v0, "availableSpace":J
    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v6}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheSize()I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_63

    move-result v6

    int-to-long v4, v6

    .line 97
    .local v4, "diskCacheSize":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_57

    .line 99
    :goto_3d
    const/4 v6, 0x1

    const/4 v8, 0x1

    :try_start_3f
    invoke-static {v2, v6, v8, v4, v5}, Lcom/lidroid/xutils/cache/LruDiskCache;->open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;

    move-result-object v6

    iput-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 100
    iget-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v8, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v8}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 101
    const-string v6, "create disk cache success"

    invoke-static {v6}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_55} :catch_59
    .catchall {:try_start_3f .. :try_end_55} :catchall_63

    .line 91
    .end local v0    # "availableSpace":J
    .end local v2    # "diskCacheDir":Ljava/io/File;
    .end local v4    # "diskCacheSize":J
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v7

    .line 109
    return-void

    .restart local v0    # "availableSpace":J
    .restart local v2    # "diskCacheDir":Ljava/io/File;
    .restart local v4    # "diskCacheSize":J
    :cond_57
    move-wide v4, v0

    .line 97
    goto :goto_3d

    .line 102
    :catch_59
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    .line 104
    const-string v6, "create disk cache error"

    invoke-static {v6, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    .line 91
    .end local v0    # "availableSpace":J
    .end local v2    # "diskCacheDir":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "diskCacheSize":J
    :catchall_63
    move-exception v6

    monitor-exit v7
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_63

    throw v6
.end method

.method public initMemoryCache()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 64
    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_10

    .line 66
    :try_start_d
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_1e

    .line 70
    :cond_10
    :goto_10
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;I)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    goto :goto_8

    .line 67
    :catch_1e
    move-exception v0

    goto :goto_10
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .registers 4
    .param p1, "fileNameGenerator"    # Lcom/lidroid/xutils/cache/FileNameGenerator;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 128
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    .line 126
    :cond_e
    monitor-exit v1

    .line 131
    return-void

    .line 126
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setDiskCacheSize(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->setMaxSize(J)V

    .line 118
    :cond_d
    monitor-exit v1

    .line 123
    return-void

    .line 118
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setMemoryCacheSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    .line 115
    :cond_9
    return-void
.end method
