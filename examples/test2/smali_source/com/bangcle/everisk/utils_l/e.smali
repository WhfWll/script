.class public final Lcom/bangcle/everisk/utils_l/e;
.super Ljava/lang/Object;


# static fields
.field private static aa:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2710

    sput v0, Lcom/bangcle/everisk/utils_l/e;->aa:I

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    move-object v0, v1

    goto :goto_7

    :catch_11
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 14

    const v10, 0xdbba0

    const/16 v9, 0x2710

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput v9, Lcom/bangcle/everisk/utils_l/e;->aa:I

    move v0, v1

    :cond_b
    :goto_b
    :try_start_b
    invoke-static {p0, p1}, Lcom/bangcle/everisk/utils_l/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bangcle/everisk/utils_l/a;

    move-result-object v6

    iget-object v3, v6, Lcom/bangcle/everisk/utils_l/a;->U:[B

    if-eqz v3, :cond_53

    iget-object v3, v6, Lcom/bangcle/everisk/utils_l/a;->U:[B

    array-length v3, v3

    move v5, v3

    :goto_17
    const-string v3, "RiskStub.HTTP"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/bangcle/everisk/utils_l/a;->T:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4b} :catch_55

    invoke-virtual {v6}, Lcom/bangcle/everisk/utils_l/a;->z()Z

    move-result v3

    if-eqz v3, :cond_5b

    move-object v0, v2

    :goto_52
    return-object v0

    :cond_53
    move v5, v1

    goto :goto_17

    :catch_55
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_52

    :cond_5b
    iget v3, v6, Lcom/bangcle/everisk/utils_l/a;->T:I

    if-ne v3, v4, :cond_67

    move v3, v4

    :goto_60
    if-eqz v3, :cond_69

    sput v9, Lcom/bangcle/everisk/utils_l/e;->aa:I

    iget-object v0, v6, Lcom/bangcle/everisk/utils_l/a;->U:[B

    goto :goto_52

    :cond_67
    move v3, v1

    goto :goto_60

    :cond_69
    const/4 v3, -0x1

    if-eq p2, v3, :cond_72

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_72

    move-object v0, v2

    goto :goto_52

    :cond_72
    if-lez v5, :cond_76

    if-nez p1, :cond_b

    :cond_76
    sget v3, Lcom/bangcle/everisk/utils_l/e;->aa:I

    int-to-long v5, v3

    :try_start_79
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_88

    :goto_7c
    sget v3, Lcom/bangcle/everisk/utils_l/e;->aa:I

    sget v5, Lcom/bangcle/everisk/utils_l/e;->aa:I

    add-int/2addr v3, v5

    sput v3, Lcom/bangcle/everisk/utils_l/e;->aa:I

    if-le v3, v10, :cond_b

    sput v10, Lcom/bangcle/everisk/utils_l/e;->aa:I

    goto :goto_b

    :catch_88
    move-exception v3

    goto :goto_7c
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lcom/bangcle/everisk/utils_l/a;
    .registers 13

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/bangcle/everisk/utils_l/a;

    invoke-direct {v7}, Lcom/bangcle/everisk/utils_l/a;-><init>()V

    const-string v0, "RiskStubShell.getRemote"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "URL: <"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_23
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_33} :catch_81

    if-eqz p1, :cond_ca

    const-string v1, "RiskStubShell.getRemote"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "dst file: <"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bangcle/everisk/utils_l/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v0, "RiskStubShell.getRemoteFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: MKDIR: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/bangcle/everisk/utils_l/a;->c(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    move-result-object v0

    :goto_80
    return-object v0

    :catch_81
    move-exception v0

    invoke-virtual {v7, v0}, Lcom/bangcle/everisk/utils_l/a;->c(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    move-result-object v0

    goto :goto_80

    :cond_87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_114

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_91
    const-string v8, "RiskStubShell.getRemoteFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FileOldSize: <"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v3, v1, v3

    if-eqz v3, :cond_c9

    const-string v3, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    move v1, v5

    :cond_ca
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_cf
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v4, v3, :cond_127

    const/16 v4, 0xce

    if-eq v4, v3, :cond_127

    const-string v0, "RiskStubShell.getRemoteFile"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DownLoad ERROR: HttpResponse: <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a0

    if-ne v0, v3, :cond_fe

    if-eqz v1, :cond_fe

    invoke-static {p1}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    :cond_fe
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/bangcle/everisk/utils_l/a;->b(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;
    :try_end_102
    .catch Ljava/io/EOFException; {:try_start_cf .. :try_end_102} :catch_20d
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_102} :catch_209
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_102} :catch_196

    move-object v0, v6

    :goto_103
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v0, :cond_10b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_10b
    invoke-virtual {v7}, Lcom/bangcle/everisk/utils_l/a;->z()Z

    move-result v0

    if-eqz v0, :cond_1a1

    move-object v0, v7

    goto/16 :goto_80

    :cond_114
    invoke-static {p1}, Lcom/bangcle/everisk/utils_l/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_212

    const-string v0, "RiskStubShell.download"

    const-string v1, "create file fail"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/bangcle/everisk/utils_l/a;->c(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    move-result-object v0

    goto/16 :goto_80

    :cond_127
    :try_start_127
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "RiskStubShell.getRemoteFile"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Protocal Content-Length: <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_157
    .catch Ljava/io/EOFException; {:try_start_127 .. :try_end_157} :catch_20d
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_157} :catch_209
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_157} :catch_196

    move-result-object v0

    const/16 v1, 0x400

    :try_start_15a
    new-array v1, v1, [B

    :goto_15c
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16d

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_167
    .catch Ljava/io/EOFException; {:try_start_15a .. :try_end_167} :catch_168
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_167} :catch_190
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_167} :catch_207

    goto :goto_15c

    :catch_168
    move-exception v1

    :goto_169
    invoke-virtual {v7, v1}, Lcom/bangcle/everisk/utils_l/a;->b(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    goto :goto_103

    :cond_16d
    :try_start_16d
    const-string v1, "RiskStubShell.getRemoteFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read All data: <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput v1, v7, Lcom/bangcle/everisk/utils_l/a;->T:I
    :try_end_18e
    .catch Ljava/io/EOFException; {:try_start_16d .. :try_end_18e} :catch_168
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_18e} :catch_190
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_18e} :catch_207

    goto/16 :goto_103

    :catch_190
    move-exception v1

    :goto_191
    invoke-virtual {v7, v1}, Lcom/bangcle/everisk/utils_l/a;->b(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    goto/16 :goto_103

    :catch_196
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_199
    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    invoke-virtual {v7, v6}, Lcom/bangcle/everisk/utils_l/a;->c(Ljava/lang/Exception;)Lcom/bangcle/everisk/utils_l/a;

    goto/16 :goto_103

    :cond_1a1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v7, Lcom/bangcle/everisk/utils_l/a;->U:[B

    iget-object v0, v7, Lcom/bangcle/everisk/utils_l/a;->U:[B

    array-length v0, v0

    if-nez v0, :cond_1af

    move-object v0, v7

    goto/16 :goto_80

    :cond_1af
    if-eqz p1, :cond_1e4

    const-string v0, "RiskStubShell.getRemoteFile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Append: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/bangcle/everisk/utils_l/a;->U:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, v7, Lcom/bangcle/everisk/utils_l/a;->U:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1e4
    const-string v0, "RiskStubShell.getRemoteFile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownLoad <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> ret_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/bangcle/everisk/utils_l/a;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto/16 :goto_80

    :catch_207
    move-exception v1

    goto :goto_199

    :catch_209
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_191

    :catch_20d
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_169

    :cond_212
    move-wide v1, v3

    goto/16 :goto_91
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_8

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    const-string v0, "RiskStubShell.File"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result v0

    :goto_1d
    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, "RiskStubShell.CopyFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Copy: <"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RiskStubShell.CopyFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "To: <"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_42

    :cond_41
    :goto_41
    return v0

    :cond_42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bangcle/everisk/utils_l/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5b} :catch_c4
    .catchall {:try_start_36 .. :try_end_5b} :catchall_a4

    :try_start_5b
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_c7
    .catchall {:try_start_5b .. :try_end_65} :catchall_bb

    const/16 v1, 0x400

    :try_start_67
    new-array v1, v1, [B

    :goto_69
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8a

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_74} :catch_75
    .catchall {:try_start_67 .. :try_end_74} :catchall_bd

    goto :goto_69

    :catch_75
    move-exception v1

    move-object v3, v4

    :goto_77
    :try_start_77
    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c0

    if-eqz v3, :cond_7f

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_9f

    :cond_7f
    :goto_7f
    if-eqz v2, :cond_41

    :try_start_81
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_41

    :catch_85
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_41

    :cond_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_75
    .catchall {:try_start_8a .. :try_end_8d} :catchall_bd

    const/4 v0, 0x1

    :try_start_8e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_9a

    :goto_91
    :try_start_91
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_41

    :catch_95
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_41

    :catch_9a
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_91

    :catch_9f
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_7f

    :catchall_a4
    move-exception v0

    move-object v4, v3

    :goto_a6
    if-eqz v4, :cond_ab

    :try_start_a8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_b1

    :cond_ab
    :goto_ab
    if-eqz v3, :cond_b0

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b6

    :cond_b0
    :goto_b0
    throw v0

    :catch_b1
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_ab

    :catch_b6
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_b0

    :catchall_bb
    move-exception v0

    goto :goto_a6

    :catchall_bd
    move-exception v0

    move-object v3, v2

    goto :goto_a6

    :catchall_c0
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_a6

    :catch_c4
    move-exception v1

    move-object v2, v3

    goto :goto_77

    :catch_c7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_77
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "RiskStubShell.ExtractZipFile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zfile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DstDir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_23
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    new-array v3, v3, [B

    :goto_31
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_d4

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_73

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_73
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_76} :catch_77

    goto :goto_31

    :catch_77
    move-exception v0

    const-string v2, "RiskStubShell.ExtractZipFile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    :goto_93
    return-object v1

    :cond_94
    :try_start_94
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9d

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_9d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v7, "RiskStubShell.ExtractZipFile"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ze.getName: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c1
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_cc

    const/4 v5, 0x0

    invoke-virtual {v6, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c1

    :cond_cc
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_31

    :cond_d4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_da} :catch_77

    goto :goto_93
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result v0

    goto :goto_c

    :catch_12
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :cond_10
    :goto_10
    return v0

    :cond_11
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    goto :goto_10

    :cond_19
    invoke-static {p0}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    move-result v0

    goto :goto_10

    :catch_24
    move-exception v1

    goto :goto_10
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/lib"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    :cond_20
    :goto_20
    return-object v2

    :cond_21
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lib/libRiskStub.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_112

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    :goto_44
    array-length v4, v3

    if-ge v0, v4, :cond_112

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d2

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DexHelper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d2

    new-instance v1, Ljava/io/File;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    :try_start_75
    new-instance v1, Lcom/bangcle/everisk/utils_l/c;

    invoke-direct {v1, v0}, Lcom/bangcle/everisk/utils_l/c;-><init>(Ljava/io/File;)V

    const-string v0, "RiskStubShell.ABI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ARCH: <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/c;->E()Lcom/bangcle/everisk/utils_l/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bangcle/everisk/utils_l/d;->F()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/c;->E()Lcom/bangcle/everisk/utils_l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/d;->F()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b3

    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/c;->E()Lcom/bangcle/everisk/utils_l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/d;->F()I

    move-result v0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_d6

    :cond_b3
    const-string v0, "x86"
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_b5} :catch_10c

    :goto_b5
    const-string v1, "RiskStubShell.ABI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABI: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_20

    :cond_d2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_44

    :cond_d6
    :try_start_d6
    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/c;->E()Lcom/bangcle/everisk/utils_l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/d;->F()I

    move-result v0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_f4

    const-string v0, "arm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_110

    const-string v0, "RiskStubShell.ABI"

    const-string v1, "SO is ARM, BUT CPU_ABI is x86. 1"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "armeabi"

    goto :goto_b5

    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "other:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/c;->E()Lcom/bangcle/everisk/utils_l/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bangcle/everisk/utils_l/d;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_10a} :catch_10c

    move-result-object v0

    goto :goto_b5

    :catch_10c
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    :cond_110
    move-object v0, v2

    goto :goto_b5

    :cond_112
    move-object v0, v1

    goto/16 :goto_6f
.end method
