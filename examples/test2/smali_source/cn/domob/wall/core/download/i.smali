.class public Lcn/domob/wall/core/download/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/download/i$1;,
        Lcn/domob/wall/core/download/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DrwCach"

.field private static final b:Ljava/lang/String; = ".cach"

.field private static final c:I = 0x100000

.field private static final d:I = 0xa

.field private static final e:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/wall/core/download/i;->c(Ljava/lang/String;)Z

    .line 27
    return-void
.end method

.method private a()I
    .registers 5

    .prologue
    .line 114
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L

    div-double/2addr v0, v2

    .line 118
    double-to-int v0, v0

    return v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DrwCach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    if-eqz v1, :cond_11

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 138
    :cond_11
    if-eqz v0, :cond_18

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method private c(Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/16 v10, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 74
    if-nez v4, :cond_11

    move v1, v3

    .line 104
    :cond_10
    :goto_10
    return v1

    .line 77
    :cond_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    move v2, v1

    .line 83
    :goto_1f
    array-length v5, v4

    if-ge v0, v5, :cond_3c

    .line 84
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".cach"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 85
    int-to-long v6, v2

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 83
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 89
    :cond_3c
    const/high16 v0, 0xa00000

    if-gt v2, v0, :cond_46

    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->a()I

    move-result v0

    if-le v10, v0, :cond_74

    .line 91
    :cond_46
    const-wide v6, 0x3fd999999999999aL

    array-length v0, v4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 93
    new-instance v0, Lcn/domob/wall/core/download/i$a;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcn/domob/wall/core/download/i$a;-><init>(Lcn/domob/wall/core/download/i;Lcn/domob/wall/core/download/i$1;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move v0, v1

    .line 94
    :goto_5c
    if-ge v0, v2, :cond_74

    .line 95
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".cach"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 96
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 94
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 100
    :cond_74
    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->a()I

    move-result v0

    if-le v0, v10, :cond_10

    move v1, v3

    .line 104
    goto :goto_10
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 122
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/domob/wall/core/download/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 33
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    if-nez v0, :cond_35

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 41
    :cond_33
    const/4 v0, 0x0

    :goto_34
    return-object v0

    .line 37
    :cond_35
    invoke-virtual {p0, v1}, Lcn/domob/wall/core/download/i;->b(Ljava/lang/String;)V

    goto :goto_34
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 45
    if-nez p1, :cond_3

    .line 69
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    const/16 v0, 0xa

    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 52
    invoke-direct {p0, p2}, Lcn/domob/wall/core/download/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcn/domob/wall/core/download/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_21
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 60
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 61
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 62
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 63
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_52} :catch_53
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_52} :catch_5c

    goto :goto_2

    .line 64
    :catch_53
    move-exception v0

    .line 65
    const-string v0, "ImageFileCache"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 66
    :catch_5c
    move-exception v0

    .line 67
    const-string v0, "ImageFileCache"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 111
    return-void
.end method
