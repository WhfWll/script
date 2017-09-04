.class public Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
.super Ljava/lang/Object;
.source "FileDownloadHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .registers 28
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "callBackHandler"    # Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "isResume"    # Z
    .param p5, "responseFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p1, :cond_8

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 32
    :cond_8
    const/16 v17, 0x0

    .line 90
    :cond_a
    :goto_a
    return-object v17

    .line 35
    :cond_b
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v17, "targetFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 38
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 39
    .local v12, "dir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 40
    :cond_2a
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    .line 44
    .end local v12    # "dir":Ljava/io/File;
    :cond_2d
    const-wide/16 v6, 0x0

    .line 45
    .local v6, "current":J
    const/4 v2, 0x0

    .line 46
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 48
    .local v10, "bos":Ljava/io/BufferedOutputStream;
    const/4 v13, 0x0

    .line 49
    .local v13, "fileOutputStream":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_67

    .line 50
    :try_start_34
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 51
    new-instance v14, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .end local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v14, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 55
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_41
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v20

    add-long v4, v20, v6

    .line 56
    .local v4, "total":J
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_db

    .line 57
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v9, "bis":Ljava/io/BufferedInputStream;
    :try_start_50
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_10b

    .line 59
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .local v11, "bos":Ljava/io/BufferedOutputStream;
    if-eqz p2, :cond_70

    const/4 v8, 0x1

    move-object/from16 v3, p2

    :try_start_5a
    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_10e

    move-result v3

    if-nez v3, :cond_70

    .line 79
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a

    .line 53
    .end local v4    # "total":J
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    :cond_67
    :try_start_67
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_db

    .end local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_41

    .line 63
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "total":J
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "bos":Ljava/io/BufferedOutputStream;
    :cond_70
    const/16 v3, 0x1000

    :try_start_72
    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 65
    .local v18, "tmp":[B
    :cond_76
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    .local v15, "len":I
    const/4 v3, -0x1

    if-ne v15, v3, :cond_bd

    .line 74
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 75
    if-eqz p2, :cond_8a

    .line 76
    const/4 v8, 0x1

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_10e

    .line 79
    :cond_8a
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 84
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v16, "newFile":Ljava/io/File;
    :goto_a9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e3

    .line 88
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_108

    .end local v16    # "newFile":Ljava/io/File;
    :goto_b9
    move-object/from16 v17, v16

    goto/16 :goto_a

    .line 66
    :cond_bd
    const/4 v3, 0x0

    :try_start_be
    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v3, v15}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 67
    int-to-long v0, v15

    move-wide/from16 v20, v0

    add-long v6, v6, v20

    .line 68
    if-eqz p2, :cond_76

    .line 69
    const/4 v8, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v8}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_d0
    .catchall {:try_start_be .. :try_end_d0} :catchall_10e

    move-result v3

    if-nez v3, :cond_76

    .line 79
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v11}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_a

    .line 78
    .end local v4    # "total":J
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .end local v15    # "len":I
    .end local v18    # "tmp":[B
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_db
    move-exception v3

    .line 79
    :goto_dc
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v10}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    throw v3

    .line 86
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "total":J
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v15    # "len":I
    .restart local v16    # "newFile":Ljava/io/File;
    .restart local v18    # "tmp":[B
    :cond_e3
    new-instance v16, Ljava/io/File;

    .end local v16    # "newFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v16    # "newFile":Ljava/io/File;
    goto :goto_a9

    :cond_108
    move-object/from16 v16, v17

    .line 88
    goto :goto_b9

    .line 78
    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .end local v15    # "len":I
    .end local v16    # "newFile":Ljava/io/File;
    .end local v18    # "tmp":[B
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_10b
    move-exception v3

    move-object v2, v9

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_dc

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_10e
    move-exception v3

    move-object v10, v11

    .end local v11    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v9

    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_dc
.end method
