.class public Lcn/domob/android/c/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f; = null

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

.field private j:Lcn/domob/android/c/f$a;

.field private k:Lcn/domob/android/c/c;

.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/android/c/f$a;Lcn/domob/android/c/c;Landroid/content/Context;)V
    .registers 15

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/c/g;->h:Z

    .line 33
    iput-wide v2, p0, Lcn/domob/android/c/g;->i:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/c/g;->o:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    .line 53
    iput-object p2, p0, Lcn/domob/android/c/g;->d:Ljava/io/File;

    .line 55
    iput-wide p3, p0, Lcn/domob/android/c/g;->e:J

    .line 57
    iput-wide p3, p0, Lcn/domob/android/c/g;->g:J

    .line 59
    iput-wide p5, p0, Lcn/domob/android/c/g;->f:J

    .line 61
    iput-object p7, p0, Lcn/domob/android/c/g;->j:Lcn/domob/android/c/f$a;

    .line 63
    iput-object p8, p0, Lcn/domob/android/c/g;->k:Lcn/domob/android/c/c;

    .line 65
    iput-wide p3, p0, Lcn/domob/android/c/g;->i:J

    .line 67
    iput-object p9, p0, Lcn/domob/android/c/g;->o:Landroid/content/Context;

    .line 69
    cmp-long v0, p3, p5

    if-lez v0, :cond_31

    cmp-long v0, p5, v2

    if-lez v0, :cond_31

    .line 70
    sget-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v1, "Start postition is larger than end position, set finished to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/c/g;->h:Z

    .line 74
    :cond_31
    sget-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

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

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 197
    iget-boolean v0, p0, Lcn/domob/android/c/g;->h:Z

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 203
    iget-wide v0, p0, Lcn/domob/android/c/g;->i:J

    return-wide v0
.end method

.method public run()V
    .registers 13

    .prologue
    const/16 v0, 0x2800

    const-wide/16 v6, 0x0

    .line 81
    .line 85
    new-array v1, v0, [B

    .line 91
    :try_start_6
    iget-object v0, p0, Lcn/domob/android/c/g;->o:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/c/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_d8

    .line 94
    sget-object v2, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v3, "Proxy exists"

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 100
    :goto_1d
    const v2, 0x9c40

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 106
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/c/g;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/domob/android/c/g;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/domob/android/c/g;->d:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcn/domob/android/c/g;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 113
    sget-object v3, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download in rom change chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/c/g;->d:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/c/g;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 118
    :cond_ac
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_e9

    .line 119
    sget-object v3, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v4, "support range parameter,continue to download"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-wide v4, p0, Lcn/domob/android/c/g;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 131
    :goto_c0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    :goto_c9
    iget-wide v4, p0, Lcn/domob/android/c/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/c/g;->f:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_131

    .line 136
    iget-object v0, p0, Lcn/domob/android/c/g;->j:Lcn/domob/android/c/f$a;

    iget-boolean v0, v0, Lcn/domob/android/c/f$a;->a:Z

    if-eqz v0, :cond_127

    .line 193
    :goto_d7
    return-void

    .line 97
    :cond_d8
    sget-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v2, "Proxy is null"

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_1d

    .line 123
    :cond_e9
    iget-wide v4, p0, Lcn/domob/android/c/g;->e:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_f6

    .line 124
    sget-object v3, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v4, "don\'t support range parameter,download from beginning"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_f6
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 127
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/domob/android/c/g;->i:J

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcn/domob/android/c/g;->g:J
    :try_end_103
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_103} :catch_104
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_103} :catch_155
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_103} :catch_1c5

    goto :goto_c0

    .line 179
    :catch_104
    move-exception v0

    .line 180
    sget-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    const-string v1, "download SocketTimeoutException "

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcn/domob/android/c/g;->k:Lcn/domob/android/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38  download url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V

    goto :goto_d7

    .line 140
    :cond_127
    const/4 v0, 0x0

    const/16 v4, 0x2800

    :try_start_12a
    invoke-virtual {v3, v1, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 142
    const/4 v4, -0x1

    if-ne v0, v4, :cond_18e

    .line 169
    :cond_131
    sget-object v0, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total downloadsize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcn/domob/android/c/g;->i:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/c/g;->h:Z

    .line 175
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_154
    .catch Ljava/net/SocketTimeoutException; {:try_start_12a .. :try_end_154} :catch_104
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_154} :catch_155
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_154} :catch_1c5

    goto :goto_d7

    .line 182
    :catch_155
    move-exception v0

    .line 183
    sget-object v1, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

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

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/c/g;->k:Lcn/domob/android/c/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e382  download url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V

    goto/16 :goto_d7

    .line 148
    :cond_18e
    const/4 v4, 0x0

    :try_start_18f
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 150
    iget-wide v4, p0, Lcn/domob/android/c/g;->g:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/c/g;->g:J

    .line 152
    iget-wide v4, p0, Lcn/domob/android/c/g;->g:J

    iget-wide v6, p0, Lcn/domob/android/c/g;->f:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_203

    .line 153
    iget-wide v4, p0, Lcn/domob/android/c/g;->i:J

    int-to-long v6, v0

    iget-wide v8, p0, Lcn/domob/android/c/g;->g:J

    iget-wide v10, p0, Lcn/domob/android/c/g;->f:J

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/c/g;->i:J
    :try_end_1af
    .catch Ljava/net/SocketTimeoutException; {:try_start_18f .. :try_end_1af} :catch_104
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1af} :catch_155
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1af} :catch_1c5

    .line 162
    :goto_1af
    const-wide/16 v4, 0x1e

    :try_start_1b1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b4
    .catch Ljava/lang/InterruptedException; {:try_start_1b1 .. :try_end_1b4} :catch_1b6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b1 .. :try_end_1b4} :catch_104
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1b4} :catch_155
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b4} :catch_1c5

    goto/16 :goto_c9

    .line 163
    :catch_1b6
    move-exception v0

    .line 164
    :try_start_1b7
    sget-object v4, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    invoke-virtual {v4, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 165
    iget-object v0, p0, Lcn/domob/android/c/g;->k:Lcn/domob/android/c/c;

    const-string v4, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e381"

    invoke-interface {v0, v4}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V
    :try_end_1c3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b7 .. :try_end_1c3} :catch_104
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1c3} :catch_155
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1c3} :catch_1c5

    goto/16 :goto_c9

    .line 187
    :catch_1c5
    move-exception v0

    .line 188
    sget-object v1, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

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

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcn/domob/android/c/g;->k:Lcn/domob/android/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e383  download url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/g;->c:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcn/domob/android/c/g;->a:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_d7

    .line 155
    :cond_203
    :try_start_203
    iget-wide v4, p0, Lcn/domob/android/c/g;->i:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/domob/android/c/g;->i:J
    :try_end_209
    .catch Ljava/net/SocketTimeoutException; {:try_start_203 .. :try_end_209} :catch_104
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_209} :catch_155
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_209} :catch_1c5

    goto :goto_1af
.end method
