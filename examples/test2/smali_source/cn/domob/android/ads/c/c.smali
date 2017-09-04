.class public Lcn/domob/android/ads/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f; = null

.field private static final b:F = 300000.0f


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/c/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;JLjava/lang/String;)Z
    .registers 15

    .prologue
    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v5, "--"

    .line 31
    const-string v6, "\r\n"

    .line 32
    const-string v1, "multipart/form-data"

    .line 33
    const-string v7, "UTF-8"

    .line 34
    const/16 v8, 0x1388

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_18

    if-nez p3, :cond_3d

    .line 39
    :cond_18
    const/4 v0, 0x0

    .line 104
    if-eqz v3, :cond_1e

    .line 105
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_1e
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_30

    .line 109
    sget-object v1, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_30} :catch_36

    .line 116
    :cond_30
    :goto_30
    if-eqz v2, :cond_35

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_35
    :goto_35
    return v0

    .line 113
    :catch_36
    move-exception v1

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_30

    .line 42
    :cond_3d
    :try_start_3d
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_259
    .catch Ljava/lang/Error; {:try_start_3d .. :try_end_48} :catch_1e7
    .catchall {:try_start_3d .. :try_end_48} :catchall_215

    .line 44
    :try_start_48
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 49
    const-string v2, "connection"

    const-string v8, "keep-alive"

    invoke-virtual {v0, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "Charsert"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ";boundary="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_8f} :catch_25d
    .catch Ljava/lang/Error; {:try_start_48 .. :try_end_8f} :catch_24e
    .catchall {:try_start_48 .. :try_end_8f} :catchall_23c

    .line 55
    :try_start_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: application/octet-stream; charset="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 64
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    const v1, 0x48927c00

    long-to-float v7, p1

    div-float/2addr v1, v7

    const/high16 v7, 0x42c80000

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 67
    const/16 v7, 0x64

    if-le v1, v7, :cond_f9

    .line 68
    const/16 v1, 0x64

    .line 70
    :cond_f9
    sget-object v7, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload compressRate is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 71
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v7, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 72
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 74
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 76
    :goto_123
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_158

    .line 77
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_12e} :catch_12f
    .catch Ljava/lang/Error; {:try_start_8f .. :try_end_12e} :catch_254
    .catchall {:try_start_8f .. :try_end_12e} :catchall_242

    goto :goto_123

    .line 96
    :catch_12f
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    .line 97
    :goto_134
    :try_start_134
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_139
    .catchall {:try_start_134 .. :try_end_139} :catchall_247

    .line 98
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_13f

    .line 105
    :try_start_13c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_13f
    if-eqz p0, :cond_151

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_151

    .line 109
    sget-object v1, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v1, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_151} :catch_1df

    .line 116
    :cond_151
    :goto_151
    if-eqz v2, :cond_35

    .line 117
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_35

    .line 80
    :cond_158
    :try_start_158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 86
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_188} :catch_12f
    .catch Ljava/lang/Error; {:try_start_158 .. :try_end_188} :catch_254
    .catchall {:try_start_158 .. :try_end_188} :catchall_242

    move-result v1

    .line 90
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_1b8

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_1b8

    .line 91
    const/4 v1, 0x1

    .line 104
    if-eqz v2, :cond_197

    .line 105
    :try_start_194
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_197
    if-eqz p0, :cond_1a9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1a9

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a9} :catch_1b1

    .line 116
    :cond_1a9
    :goto_1a9
    if-eqz v0, :cond_1ae

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ae
    move v0, v1

    goto/16 :goto_35

    .line 113
    :catch_1b1
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1a9

    .line 93
    :cond_1b8
    const/4 v1, 0x0

    .line 104
    if-eqz v2, :cond_1be

    .line 105
    :try_start_1bb
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_1be
    if-eqz p0, :cond_1d0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1d0

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1d0} :catch_1d8

    .line 116
    :cond_1d0
    :goto_1d0
    if-eqz v0, :cond_1d5

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1d5
    move v0, v1

    goto/16 :goto_35

    .line 113
    :catch_1d8
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1d0

    .line 113
    :catch_1df
    move-exception v1

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_151

    .line 99
    :catch_1e7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 100
    :goto_1ea
    :try_start_1ea
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_1ef
    .catchall {:try_start_1ea .. :try_end_1ef} :catchall_24c

    .line 101
    const/4 v0, 0x0

    .line 104
    if-eqz v2, :cond_1f5

    .line 105
    :try_start_1f2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_1f5
    if-eqz p0, :cond_207

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_207

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_207} :catch_20e

    .line 116
    :cond_207
    :goto_207
    if-eqz v1, :cond_35

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_35

    .line 113
    :catch_20e
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_207

    .line 103
    :catchall_215
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 104
    :goto_218
    if-eqz v2, :cond_21d

    .line 105
    :try_start_21a
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 108
    :cond_21d
    if-eqz p0, :cond_22f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_22f

    .line 109
    sget-object v2, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    const-string v3, "recycle uploaded pic"

    invoke-virtual {v2, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_21a .. :try_end_22f} :catch_235

    .line 116
    :cond_22f
    :goto_22f
    if-eqz v1, :cond_234

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_234
    throw v0

    .line 113
    :catch_235
    move-exception v2

    .line 114
    sget-object v3, Lcn/domob/android/ads/c/c;->a:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_22f

    .line 103
    :catchall_23c
    move-exception v1

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_218

    :catchall_242
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_218

    :catchall_247
    move-exception v0

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_218

    :catchall_24c
    move-exception v0

    goto :goto_218

    .line 99
    :catch_24e
    move-exception v1

    move-object v2, v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1ea

    :catch_254
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1ea

    .line 96
    :catch_259
    move-exception v0

    move-object v1, v3

    goto/16 :goto_134

    :catch_25d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_134
.end method
