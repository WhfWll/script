.class public Lnet/sqlcipher/database/SQLiteContentHelper;
.super Ljava/lang/Object;
.source "SQLiteContentHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobColumnAsAssetFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 16
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 53
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteContentHelper;->simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v11

    .line 54
    .local v11, "file":Landroid/os/MemoryFile;
    if-nez v11, :cond_1a

    .line 55
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "No results."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_f

    .line 67
    .end local v11    # "file":Landroid/os/MemoryFile;
    :catch_f
    move-exception v10

    .line 68
    .local v10, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "file":Landroid/os/MemoryFile;
    :cond_1a
    :try_start_1a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_f

    move-result-object v8

    .line 59
    .local v8, "c":Ljava/lang/Class;
    :try_start_1e
    const-string v4, "getParcelFileDescriptor"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 60
    .local v12, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v12, v11, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v3, v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_43
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_f

    .line 65
    .end local v12    # "m":Ljava/lang/reflect/Method;
    :goto_36
    :try_start_36
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v4, 0x0

    invoke-virtual {v11}, Landroid/os/MemoryFile;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 66
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v2

    .line 62
    .end local v2    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_43
    move-exception v9

    .line 63
    .local v9, "e":Ljava/lang/Exception;
    const-string v4, "SQLiteContentHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteCursor.java: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_5c} :catch_f

    goto :goto_36
.end method

.method private static simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 9
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 85
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_8

    .line 100
    :goto_7
    return-object v2

    .line 89
    :cond_8
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_27

    move-result v3

    if-nez v3, :cond_12

    .line 102
    :cond_e
    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 92
    :cond_12
    const/4 v3, 0x0

    :try_start_13
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 93
    .local v0, "bytes":[B
    if-eqz v0, :cond_e

    .line 96
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 97
    .local v2, "file":Landroid/os/MemoryFile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_e

    .line 102
    .end local v0    # "bytes":[B
    .end local v2    # "file":Landroid/os/MemoryFile;
    :catchall_27
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method
