.class public Lcn/domob/android/a/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/offerwall/m; = null

.field private static final b:I = 0x2800

.field private static final l:I = 0x9c40

.field private static final m:I = 0xea60

.field private static final n:I = 0x1e


# instance fields
.field private c:Ljava/net/URL;

.field private d:Ljava/io/File;

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:Lcn/domob/android/a/f$a;

.field private k:Lcn/domob/android/a/d;

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/android/a/f$a;Lcn/domob/android/a/d;Landroid/content/Context;)V
    .registers 15

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    iput-wide v2, p0, Lcn/domob/android/a/g;->i:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    iput-object p1, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    iput-object p2, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    iput-wide p3, p0, Lcn/domob/android/a/g;->e:J

    iput-wide p3, p0, Lcn/domob/android/a/g;->g:J

    iput-wide p5, p0, Lcn/domob/android/a/g;->f:J

    iput-object p7, p0, Lcn/domob/android/a/g;->j:Lcn/domob/android/a/f$a;

    iput-object p8, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    iput-wide p3, p0, Lcn/domob/android/a/g;->i:J

    iput-object p9, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    cmp-long v0, p3, p5

    if-lez v0, :cond_31

    cmp-long v0, p5, v2

    if-lez v0, :cond_31

    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Start postition is larger than end position, set finished to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    :cond_31
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download st:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcn/domob/android/a/g;->i:J

    return-wide v0
.end method

.method public run()V
    .registers 13

    const/16 v0, 0x2800

    const-wide/16 v6, 0x0

    new-array v1, v0, [B

    :try_start_6
    iget-object v0, p0, Lcn/domob/android/a/g;->o:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_d8

    sget-object v2, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v3, "Proxy exists"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_1d
    const v2, 0x9c40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/a/g;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/a/g;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download in rom change chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/a/g;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    :cond_ac
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_e9

    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v4, "support range parameter,continue to download"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/domob/android/a/g;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_c0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_c9
    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/a/g;->f:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_11e

    iget-object v0, p0, Lcn/domob/android/a/g;->j:Lcn/domob/android/a/f$a;

    iget-boolean v0, v0, Lcn/domob/android/a/f$a;->a:Z

    if-eqz v0, :cond_114

    :goto_d7
    return-void

    :cond_d8
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v2, "Proxy is null"

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/a/g;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    :cond_e9
    iget-wide v4, p0, Lcn/domob/android/a/g;->e:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_f6

    sget-object v3, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v4, "don\'t support range parameter,download from beginning"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f6
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/domob/android/a/g;->i:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/domob/android/a/g;->g:J
    :try_end_103
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_103} :catch_104
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_103} :catch_142
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_103} :catch_19f

    goto :goto_c0

    :catch_104
    move-exception v0

    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "download SocketTimeoutException "

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v1}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    goto :goto_d7

    :cond_114
    const/4 v0, 0x0

    const/16 v4, 0x2800

    :try_start_117
    invoke-virtual {v3, v1, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_168

    :cond_11e
    sget-object v0, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total downloadsize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/a/g;->h:Z

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_141
    .catch Ljava/net/SocketTimeoutException; {:try_start_117 .. :try_end_141} :catch_104
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_141} :catch_142
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_141} :catch_19f

    goto :goto_d7

    :catch_142
    move-exception v0

    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v1}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    goto/16 :goto_d7

    :cond_168
    const/4 v4, 0x0

    :try_start_169
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v4, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/a/g;->f:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1ca

    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    int-to-long v6, v0

    iget-wide v8, p0, Lcn/domob/android/a/g;->g:J

    iget-wide v10, p0, Lcn/domob/android/a/g;->f:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->i:J
    :try_end_189
    .catch Ljava/net/SocketTimeoutException; {:try_start_169 .. :try_end_189} :catch_104
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_189} :catch_142
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_189} :catch_19f

    :goto_189
    const-wide/16 v4, 0x1e

    :try_start_18b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18e
    .catch Ljava/lang/InterruptedException; {:try_start_18b .. :try_end_18e} :catch_190
    .catch Ljava/net/SocketTimeoutException; {:try_start_18b .. :try_end_18e} :catch_104
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_18e} :catch_142
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_19f

    goto/16 :goto_c9

    :catch_190
    move-exception v0

    :try_start_191
    sget-object v4, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v4, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v4, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v0, v4}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/net/SocketTimeoutException; {:try_start_191 .. :try_end_19d} :catch_104
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_19d} :catch_142
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19d} :catch_19f

    goto/16 :goto_c9

    :catch_19f
    move-exception v0

    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/a/g;->k:Lcn/domob/android/a/d;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-interface {v1, v2}, Lcn/domob/android/a/d;->a(Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/a/g;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_d7

    :cond_1ca
    :try_start_1ca
    iget-wide v4, p0, Lcn/domob/android/a/g;->i:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/a/g;->i:J
    :try_end_1d0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1ca .. :try_end_1d0} :catch_104
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1d0} :catch_142
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1d0} :catch_19f

    goto :goto_189
.end method
