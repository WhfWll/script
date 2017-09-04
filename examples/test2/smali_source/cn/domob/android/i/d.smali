.class public Lcn/domob/android/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/i/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcn/domob/android/i/c;->h()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    :try_start_27
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_36} :catch_83
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_5e
    .catchall {:try_start_27 .. :try_end_36} :catchall_70

    .line 83
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3f} :catch_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3f} :catch_81
    .catchall {:try_start_36 .. :try_end_3f} :catchall_7f

    goto :goto_36

    .line 86
    :catch_40
    move-exception v0

    .line 87
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_7f

    .line 91
    if-eqz v1, :cond_49

    .line 93
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_59

    .line 100
    :cond_49
    :goto_49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_4d
    return-object v0

    .line 91
    :cond_4e
    if-eqz v1, :cond_49

    .line 93
    :try_start_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_49

    .line 94
    :catch_54
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 94
    :catch_59
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 88
    :catch_5e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 89
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_7f

    .line 91
    if-eqz v1, :cond_49

    .line 93
    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_49

    .line 94
    :catch_6b
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 91
    :catchall_70
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_74
    if-eqz v1, :cond_79

    .line 93
    :try_start_76
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 96
    :cond_79
    :goto_79
    throw v0

    .line 94
    :catch_7a
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 91
    :catchall_7f
    move-exception v0

    goto :goto_74

    .line 88
    :catch_81
    move-exception v0

    goto :goto_62

    .line 86
    :catch_83
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_41
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 116
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_71
    .catchall {:try_start_1 .. :try_end_6} :catchall_60

    .line 117
    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [B

    .line 118
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 120
    :goto_10
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_42

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b
    .catchall {:try_start_8 .. :try_end_1a} :catchall_6f

    goto :goto_10

    .line 124
    :catch_1b
    move-exception v0

    .line 125
    :goto_1c
    :try_start_1c
    sget-object v2, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileMD5 has an exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_6f

    .line 127
    if-eqz v1, :cond_3f

    .line 129
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_59

    .line 135
    :cond_3f
    :goto_3f
    const-string v0, ""

    :cond_41
    :goto_41
    return-object v0

    .line 123
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcn/domob/android/i/d;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_1b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_6f

    move-result-object v0

    .line 127
    if-eqz v1, :cond_41

    .line 129
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_41

    .line 130
    :catch_52
    move-exception v1

    .line 131
    sget-object v2, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_41

    .line 130
    :catch_59
    move-exception v0

    .line 131
    sget-object v1, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 127
    :catchall_60
    move-exception v0

    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_67

    .line 129
    :try_start_64
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 132
    :cond_67
    :goto_67
    throw v0

    .line 130
    :catch_68
    move-exception v1

    .line 131
    sget-object v2, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_67

    .line 127
    :catchall_6f
    move-exception v0

    goto :goto_62

    .line 124
    :catch_71
    move-exception v0

    move-object v1, v2

    goto :goto_1c
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_28

    aget-byte v3, p0, v0

    .line 169
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 171
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 173
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 176
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-static {}, Lcn/domob/android/i/c;->h()Z

    move-result v1

    if-eqz v1, :cond_60

    if-eqz p2, :cond_60

    invoke-static {p0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_66

    .line 40
    :try_start_35
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_61

    move-result v0

    .line 47
    :goto_39
    if-eqz v0, :cond_60

    .line 48
    const/4 v2, 0x0

    .line 50
    :try_start_3c
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_58} :catch_6d
    .catchall {:try_start_3c .. :try_end_58} :catchall_7d

    .line 51
    :try_start_58
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_8c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_89

    .line 55
    if-eqz v1, :cond_60

    .line 57
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_68

    .line 66
    :cond_60
    :goto_60
    return-void

    .line 41
    :catch_61
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 45
    :cond_66
    const/4 v0, 0x1

    goto :goto_39

    .line 58
    :catch_68
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 52
    :catch_6d
    move-exception v0

    move-object v1, v2

    .line 53
    :goto_6f
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_89

    .line 55
    if-eqz v1, :cond_60

    .line 57
    :try_start_74
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_60

    .line 58
    :catch_78
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 55
    :catchall_7d
    move-exception v0

    :goto_7e
    if-eqz v2, :cond_83

    .line 57
    :try_start_80
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 60
    :cond_83
    :goto_83
    throw v0

    .line 58
    :catch_84
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    .line 55
    :catchall_89
    move-exception v0

    move-object v2, v1

    goto :goto_7e

    .line 52
    :catch_8c
    move-exception v0

    goto :goto_6f
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const-class v2, Lcn/domob/android/i/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_28

    .line 195
    :goto_27
    return-object v0

    .line 190
    :catch_28
    move-exception v0

    .line 191
    sget-object v2, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v2, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 192
    sget-object v0, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_27
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 146
    :cond_8
    const-string v0, ""

    .line 155
    :goto_a
    return-object v0

    .line 148
    :cond_b
    :try_start_b
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 150
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/domob/android/i/d;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_a

    .line 152
    :catch_28
    move-exception v0

    .line 153
    sget-object v1, Lcn/domob/android/i/d;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 155
    const-string v0, ""

    goto :goto_a
.end method
