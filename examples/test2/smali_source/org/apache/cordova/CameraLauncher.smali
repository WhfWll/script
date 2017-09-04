.class public Lorg/apache/cordova/CameraLauncher;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final JPEG:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field private static final NATIVE_URI:I = 0x2

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field private static final VIDEO:I = 0x1


# instance fields
.field public callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private encodingType:I

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private saveToPhotoAlbum:Z

.field private scanMe:Landroid/net/Uri;

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 102
    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .registers 8
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 666
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 667
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 669
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_f

    .line 670
    div-int v2, p0, p2

    .line 672
    :goto_e
    return v2

    :cond_f
    div-int v2, p1, p3

    goto :goto_e
.end method

.method private checkForDuplicateImage(I)V
    .registers 11
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 719
    const/4 v3, 0x1

    .line 720
    .local v3, "diff":I
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 721
    .local v0, "contentStore":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 722
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 724
    .local v1, "currentNumOfImages":I
    const/4 v6, 0x1

    if-ne p1, v6, :cond_16

    iget-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v6, :cond_16

    .line 725
    const/4 v3, 0x2

    .line 729
    :cond_16
    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    sub-int v6, v1, v6

    if-ne v6, v3, :cond_5e

    .line 730
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 731
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 732
    .local v4, "id":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_36

    .line 733
    add-int/lit8 v4, v4, -0x1

    .line 735
    :cond_36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 736
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 738
    .end local v4    # "id":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5e
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "imageType"    # I
    .param p2, "oldImage"    # Landroid/net/Uri;
    .param p3, "newImage"    # Landroid/net/Uri;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 695
    if-eqz p4, :cond_5

    .line 696
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 700
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 702
    invoke-direct {p0, p1}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 704
    iget-boolean v0, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v0, :cond_21

    if-eqz p3, :cond_21

    .line 705
    invoke-direct {p0, p3}, Lorg/apache/cordova/CameraLauncher;->scanForGallery(Landroid/net/Uri;)V

    .line 708
    :cond_21
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 709
    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .registers 6
    .param p1, "encodingType"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "photo":Ljava/io/File;
    if-nez p1, :cond_15

    .line 213
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .restart local v0    # "photo":Ljava/io/File;
    :goto_14
    return-object v0

    .line 214
    :cond_15
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2a

    .line 215
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "photo":Ljava/io/File;
    goto :goto_14

    .line 217
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encoding Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "rotate"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "exif"    # Lorg/apache/cordova/ExifHelper;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000

    .line 515
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 516
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_23

    .line 517
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 521
    :goto_10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 522
    invoke-virtual {p3}, Lorg/apache/cordova/ExifHelper;->resetOrientation()V

    .line 523
    return-object p2

    .line 519
    :cond_23
    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_10
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 579
    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-gtz v4, :cond_10

    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-gtz v4, :cond_10

    .line 580
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 605
    :cond_f
    :goto_f
    return-object v3

    .line 584
    :cond_10
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 585
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 586
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 589
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_f

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_f

    .line 595
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v4, v5}, Lorg/apache/cordova/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v2

    .line 598
    .local v2, "widthHeight":[I
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 599
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    iget v7, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    invoke-static {v4, v5, v6, v7}, Lorg/apache/cordova/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 600
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 601
    .local v1, "unscaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_f

    .line 605
    aget v3, v2, v9

    aget v4, v2, v8

    invoke-static {v1, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_f
.end method

.method private getUriFromMediaStore()Landroid/net/Uri;
    .registers 7

    .prologue
    .line 554
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 555
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :try_start_c
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_1b} :catch_1d

    move-result-object v2

    .line 568
    :goto_1c
    return-object v2

    .line 559
    :catch_1d
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to external media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :try_start_25
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_34
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_25 .. :try_end_34} :catch_36

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_1c

    .line 563
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_36
    move-exception v1

    .line 564
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to internal media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8
    .param p1, "contentStore"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 682
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private scanForGallery(Landroid/net/Uri;)V
    .registers 4
    .param p1, "newImage"    # Landroid/net/Uri;

    .prologue
    .line 785
    iput-object p1, p0, Lorg/apache/cordova/CameraLauncher;->scanMe:Landroid/net/Uri;

    .line 786
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_b

    .line 787
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 789
    :cond_b
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 790
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 791
    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 746
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 748
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_e
.end method

.method private writeUncompressedImage(Landroid/net/Uri;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 538
    .local v3, "os":Ljava/io/OutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 540
    .local v0, "buffer":[B
    :goto_21
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2d

    .line 541
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_21

    .line 543
    :cond_2d
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 544
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 545
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 546
    return-void
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .registers 15
    .param p1, "origWidth"    # I
    .param p2, "origHeight"    # I

    .prologue
    .line 616
    iget v1, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 617
    .local v1, "newWidth":I
    iget v0, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 620
    .local v0, "newHeight":I
    if-gtz v1, :cond_14

    if-gtz v0, :cond_14

    .line 621
    move v1, p1

    .line 622
    move v0, p2

    .line 649
    :cond_a
    :goto_a
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 650
    .local v6, "retval":[I
    const/4 v7, 0x0

    aput v1, v6, v7

    .line 651
    const/4 v7, 0x1

    aput v0, v6, v7

    .line 652
    return-object v6

    .line 625
    .end local v6    # "retval":[I
    :cond_14
    if-lez v1, :cond_1d

    if-gtz v0, :cond_1d

    .line 626
    mul-int v7, v1, p2

    div-int v0, v7, p1

    goto :goto_a

    .line 629
    :cond_1d
    if-gtz v1, :cond_26

    if-lez v0, :cond_26

    .line 630
    mul-int v7, v0, p1

    div-int v1, v7, p2

    goto :goto_a

    .line 639
    :cond_26
    int-to-double v8, v1

    int-to-double v10, v0

    div-double v2, v8, v10

    .line 640
    .local v2, "newRatio":D
    int-to-double v8, p1

    int-to-double v10, p2

    div-double v4, v8, v10

    .line 642
    .local v4, "origRatio":D
    cmpl-double v7, v4, v2

    if-lez v7, :cond_37

    .line 643
    mul-int v7, v1, p2

    div-int v0, v7, p1

    goto :goto_a

    .line 644
    :cond_37
    cmpg-double v7, v4, v2

    if-gez v7, :cond_a

    .line 645
    mul-int v7, v0, p1

    div-int v1, v7, p2

    goto :goto_a
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    iput-object p3, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 123
    const-string v5, "takePicture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 124
    const/4 v2, 0x1

    .line 125
    .local v2, "srcType":I
    const/4 v0, 0x1

    .line 126
    .local v0, "destType":I
    iput-boolean v4, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 127
    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 128
    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 129
    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 130
    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 131
    const/16 v5, 0x50

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 133
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 134
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 135
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 136
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 137
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 138
    const/4 v4, 0x5

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 139
    const/4 v4, 0x6

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 141
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    .line 142
    const/16 v4, 0x9

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 146
    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-ge v4, v3, :cond_5e

    .line 147
    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 149
    :cond_5e
    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-ge v4, v3, :cond_64

    .line 150
    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 153
    :cond_64
    if-ne v2, v3, :cond_79

    .line 154
    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v0, v4}, Lorg/apache/cordova/CameraLauncher;->takePicture(II)V

    .line 159
    :cond_6b
    :goto_6b
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 160
    .local v1, "r":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v1, v3}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 161
    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 164
    .end local v0    # "destType":I
    .end local v1    # "r":Lorg/apache/cordova/api/PluginResult;
    .end local v2    # "srcType":I
    :goto_78
    return v3

    .line 156
    .restart local v0    # "destType":I
    .restart local v2    # "srcType":I
    :cond_79
    if-eqz v2, :cond_7d

    if-ne v2, v7, :cond_6b

    .line 157
    :cond_7d
    invoke-virtual {p0, v2, v0}, Lorg/apache/cordova/CameraLauncher;->getImage(II)V

    goto :goto_6b

    .end local v0    # "destType":I
    .end local v2    # "srcType":I
    :cond_81
    move v3, v4

    .line 164
    goto :goto_78
.end method

.method public failPicture(Ljava/lang/String;)V
    .registers 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public getImage(II)V
    .registers 8
    .param p1, "srcType"    # I
    .param p2, "returnType"    # I

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Get Picture"

    .line 233
    .local v1, "title":Ljava/lang/String;
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-nez v2, :cond_3a

    .line 234
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :cond_10
    :goto_10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_54

    .line 248
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_39

    .line 251
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, p0, v3, v4}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 263
    :cond_39
    :goto_39
    return-void

    .line 236
    :cond_3a
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    .line 237
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "Get Video"

    goto :goto_10

    .line 240
    :cond_47
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 243
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "Get All"

    goto :goto_10

    .line 257
    :cond_54
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_39

    .line 260
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_39
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 32
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    div-int/lit8 v4, p1, 0x10

    add-int/lit8 v26, v4, -0x1

    .line 277
    .local v26, "srcType":I
    rem-int/lit8 v4, p1, 0x10

    add-int/lit8 v16, v4, -0x1

    .line 278
    .local v16, "destType":I
    const/16 v25, 0x0

    .line 281
    .local v25, "rotate":I
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_1cd

    .line 283
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1b9

    .line 286
    :try_start_14
    new-instance v18, Lorg/apache/cordova/ExifHelper;

    invoke-direct/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;-><init>()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_85

    .line 288
    .local v18, "exif":Lorg/apache/cordova/ExifHelper;
    :try_start_19
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v4, :cond_4a

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/.Pic.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 291
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_49} :catch_80

    move-result v25

    .line 297
    :cond_4a
    :goto_4a
    const/4 v14, 0x0

    .line 298
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    const/16 v27, 0x0

    .line 301
    .local v27, "uri":Landroid/net/Uri;
    if-nez v16, :cond_bb

    .line 302
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 303
    if-nez v14, :cond_6f

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v14, Landroid/graphics/Bitmap;

    .line 309
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6f
    if-nez v14, :cond_91

    .line 310
    const-string v4, "CameraLauncher"

    const-string v5, "I either have a null image path or bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v4, "Unable to create bitmap!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 504
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_7f
    :goto_7f
    return-void

    .line 293
    .restart local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    :catch_80
    move-exception v17

    .line 294
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_84} :catch_85

    goto :goto_4a

    .line 375
    .end local v17    # "e":Ljava/io/IOException;
    .end local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    :catch_85
    move-exception v17

    .line 376
    .restart local v17    # "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 377
    const-string v4, "Error capturing image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_7f

    .line 315
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .restart local v27    # "uri":Landroid/net/Uri;
    :cond_91
    if-eqz v25, :cond_a3

    :try_start_93
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v4, :cond_a3

    .line 316
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 319
    :cond_a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 320
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 372
    :cond_ae
    :goto_ae
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v5, v1, v14}, Lorg/apache/cordova/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_7f

    .line 324
    :cond_bb
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_c5

    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_ae

    .line 325
    :cond_c5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v4, :cond_125

    .line 326
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getUriFromMediaStore()Landroid/net/Uri;

    move-result-object v21

    .line 328
    .local v21, "inputUri":Landroid/net/Uri;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    .line 333
    .end local v21    # "inputUri":Landroid/net/Uri;
    :goto_e2
    if-nez v27, :cond_eb

    .line 334
    const-string v4, "Error capturing image - no media storage found."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 338
    :cond_eb
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_152

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_152

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_152

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-nez v4, :cond_152

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 369
    :cond_119
    :goto_119
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_ae

    .line 330
    :cond_125
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v27

    goto :goto_e2

    .line 344
    :cond_152
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 346
    if-eqz v25, :cond_176

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v4, :cond_176

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 351
    :cond_176
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v23

    .line 352
    .local v23, "os":Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    move-object/from16 v0, v23

    invoke-virtual {v14, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 356
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v4, :cond_119

    .line 358
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v4, :cond_1b4

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v19

    .line 363
    .local v19, "exifPath":Ljava/lang/String;
    :goto_1ac
    invoke-virtual/range {v18 .. v19}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    goto/16 :goto_119

    .line 361
    .end local v19    # "exifPath":Ljava/lang/String;
    :cond_1b4
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_1b7} :catch_85

    move-result-object v19

    .restart local v19    # "exifPath":Ljava/lang/String;
    goto :goto_1ac

    .line 382
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v19    # "exifPath":Ljava/lang/String;
    .end local v23    # "os":Ljava/io/OutputStream;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_1b9
    if-nez p2, :cond_1c4

    .line 383
    const-string v4, "Camera cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 388
    :cond_1c4
    const-string v4, "Did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 393
    :cond_1cd
    if-eqz v26, :cond_1d4

    const/4 v4, 0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_7f

    .line 394
    :cond_1d4
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_397

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 399
    .restart local v27    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-eqz v4, :cond_1f0

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 405
    :cond_1f0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21b

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21b

    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_208

    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_21b

    :cond_208
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-nez v4, :cond_21b

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 410
    :cond_21b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v20

    .line 411
    .local v20, "imagePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/apache/cordova/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v22

    .line 415
    .local v22, "mimeType":Ljava/lang/String;
    if-eqz v20, :cond_247

    if-eqz v22, :cond_247

    const-string v4, "image/jpeg"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_257

    const-string v4, "image/png"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_257

    .line 417
    :cond_247
    const-string v4, "CameraLauncher"

    const-string v5, "I either have a null image path or bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v4, "Unable to retrieve path to picture!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 421
    :cond_257
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 422
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v14, :cond_271

    .line 423
    const-string v4, "CameraLauncher"

    const-string v5, "I either have a null image path or bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v4, "Unable to create bitmap!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 428
    :cond_271
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v4, :cond_2c1

    .line 429
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "orientation"

    aput-object v5, v6, v4

    .line 430
    .local v6, "cols":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 432
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_2a4

    .line 433
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 434
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 435
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_2a4
    if-eqz v25, :cond_2c1

    .line 438
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 439
    .local v12, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v25

    int-to-float v4, v0

    invoke-virtual {v12, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 440
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object v7, v14

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 445
    .end local v6    # "cols":[Ljava/lang/String;
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :cond_2c1
    if-nez v16, :cond_2d3

    .line 446
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 489
    :cond_2c8
    :goto_2c8
    if-eqz v14, :cond_2ce

    .line 490
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 491
    const/4 v14, 0x0

    .line 493
    :cond_2ce
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_7f

    .line 450
    :cond_2d3
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_2dd

    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_2c8

    .line 452
    :cond_2dd
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-lez v4, :cond_38a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-lez v4, :cond_38a

    .line 455
    :try_start_2e9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/resize.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 456
    .local v24, "resizePath":Ljava/lang/String;
    new-instance v18, Lorg/apache/cordova/ExifHelper;

    invoke-direct/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;-><init>()V
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_30d} :catch_378

    .line 458
    .restart local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    :try_start_30d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v4, :cond_329

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 461
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_328
    .catch Ljava/io/IOException; {:try_start_30d .. :try_end_328} :catch_385
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_328} :catch_378

    move-result v25

    .line 467
    :cond_329
    :goto_329
    :try_start_329
    new-instance v23, Ljava/io/FileOutputStream;

    invoke-direct/range {v23 .. v24}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v23    # "os":Ljava/io/OutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    move-object/from16 v0, v23

    invoke-virtual {v14, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 469
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 472
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v4, :cond_34c

    .line 473
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {v18 .. v18}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    .line 479
    :cond_34c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_376
    .catch Ljava/lang/Exception; {:try_start_329 .. :try_end_376} :catch_378

    goto/16 :goto_2c8

    .line 480
    .end local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v23    # "os":Ljava/io/OutputStream;
    .end local v24    # "resizePath":Ljava/lang/String;
    :catch_378
    move-exception v17

    .line 481
    .local v17, "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const-string v4, "Error retrieving image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2c8

    .line 463
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .restart local v24    # "resizePath":Ljava/lang/String;
    :catch_385
    move-exception v17

    .line 464
    .local v17, "e":Ljava/io/IOException;
    :try_start_386
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_389
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_389} :catch_378

    goto :goto_329

    .line 486
    .end local v17    # "e":Ljava/io/IOException;
    .end local v18    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v24    # "resizePath":Ljava/lang/String;
    :cond_38a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_2c8

    .line 497
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .end local v20    # "imagePath":Ljava/lang/String;
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v27    # "uri":Landroid/net/Uri;
    :cond_397
    if-nez p2, :cond_3a2

    .line 498
    const-string v4, "Selection cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f

    .line 501
    :cond_3a2
    const-string v4, "Selection did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7f
.end method

.method public onMediaScannerConnected()V
    .registers 5

    .prologue
    .line 795
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->scanMe:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    .line 800
    :goto_d
    return-void

    .line 796
    :catch_e
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraLauncher"

    const-string v2, "Can\'t scan file in MediaScanner after taking picture"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 803
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 804
    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 758
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 760
    .local v2, "jpeg_data":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 761
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 762
    .local v0, "code":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    .line 763
    .local v4, "output":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 764
    .local v3, "js_out":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_25

    .line 765
    const/4 v3, 0x0

    .line 766
    const/4 v4, 0x0

    .line 772
    .end local v0    # "code":[B
    .end local v3    # "js_out":Ljava/lang/String;
    .end local v4    # "output":[B
    :cond_23
    :goto_23
    const/4 v2, 0x0

    .line 773
    return-void

    .line 769
    :catch_25
    move-exception v1

    .line 770
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Error compressing image."

    invoke-virtual {p0, v5}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_23
.end method

.method public takePicture(II)V
    .registers 7
    .param p1, "returnType"    # I
    .param p2, "encodingType"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lorg/apache/cordova/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v1

    .line 194
    .local v1, "photo":Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 197
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_35

    .line 198
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 202
    :cond_35
    return-void
.end method
