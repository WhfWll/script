.class public Lcom/bontai/mobiads/ads/gif/GifDataDownloader;
.super Landroid/os/AsyncTask;
.source "GifDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDataDownloader"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/gif/GifDataDownloader;

    const v1, 0xf2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static final native input2byte(Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bontai/mobiads/ads/gif/GifDataDownloader;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .registers 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 21
    .local v4, "gifUrl":Ljava/lang/String;
    if-nez v4, :cond_7

    .line 38
    :goto_6
    return-object v5

    .line 23
    :cond_7
    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 25
    :try_start_f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 27
    const-string v6, "ad12306"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gif\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_2e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    invoke-static {v3}, Lcom/bontai/mobiads/ads/gif/GifDataDownloader;->input2byte(Ljava/io/InputStream;)[B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_38

    move-result-object v5

    goto :goto_6

    .line 30
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_38
    move-exception v1

    .line 31
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_3c
    :try_start_3c
    invoke-static {v4}, Lcom/bontai/mobiads/ads/gif/ByteArrayHttpClient;->get(Ljava/lang/String;)[B
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_3f} :catch_41

    move-result-object v5

    goto :goto_6

    .line 36
    :catch_41
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v6, "GifDataDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GifDecode OOM: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
