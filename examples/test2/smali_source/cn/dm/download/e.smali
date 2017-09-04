.class public Lcn/dm/download/e;
.super Ljava/lang/Thread;
.source "FileDownloadThread.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2800

.field private static j:Lcn/dm/download/util/b;


# instance fields
.field private A:J

.field private B:J

.field private final C:I

.field private final D:I

.field private final E:I

.field private F:Ljava/lang/String;

.field public G:Z

.field public H:Z

.field private file:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private n:Lcn/dm/download/listener/a;

.field private o:Lcn/dm/download/bean/DownloadAppInfo;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;JJLcn/dm/download/listener/a;Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 12

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/dm/download/e;->B:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcn/dm/download/e;->F:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcn/dm/download/e;->mContext:Landroid/content/Context;

    .line 51
    iput-object p7, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    .line 52
    iput-object p8, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    .line 53
    iput-object p2, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    .line 54
    iput-wide p3, p0, Lcn/dm/download/e;->y:J

    .line 55
    iput-wide p3, p0, Lcn/dm/download/e;->A:J

    .line 56
    iput-wide p5, p0, Lcn/dm/download/e;->z:J

    .line 57
    iput-wide p3, p0, Lcn/dm/download/e;->B:J

    .line 58
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/e;->F:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .registers 5

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-object v1, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 187
    :cond_24
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v0, 0x2800

    const-wide/16 v6, 0x0

    .line 63
    .line 65
    new-array v4, v0, [B

    .line 68
    :try_start_6
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcn/dm/download/e;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/dm/download/util/c;->f(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_8f

    .line 72
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 76
    :goto_1f
    const v1, 0x9c40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 77
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 79
    sget-object v1, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u6587\u4ef6\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v5, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/dm/download/e;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 90
    :cond_80
    iget-wide v2, p0, Lcn/dm/download/e;->y:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_96

    .line 91
    iget-object v1, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    invoke-interface {v1}, Lcn/dm/download/listener/a;->i()Z

    move-result v1

    if-nez v1, :cond_c0

    .line 171
    :cond_8e
    :goto_8e
    return-void

    .line 74
    :cond_8f
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1f

    .line 95
    :cond_96
    iget-object v1, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    invoke-interface {v1}, Lcn/dm/download/listener/a;->j()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 98
    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcn/dm/download/e;->y:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcn/dm/download/e;->z:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_c0
    sget-object v1, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7dResponseCode\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_141

    .line 103
    iget-wide v2, p0, Lcn/dm/download/e;->y:J

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    :goto_dd
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    :cond_ea
    :goto_ea
    iget-wide v2, p0, Lcn/dm/download/e;->A:J

    iget-wide v8, p0, Lcn/dm/download/e;->z:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_169

    .line 154
    :cond_f2
    iget-object v0, p0, Lcn/dm/download/e;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_118

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 155
    :cond_118
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->F:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->b(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 162
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_125
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_125} :catch_127
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_125} :catch_14f

    goto/16 :goto_8e

    .line 164
    :catch_127
    move-exception v0

    .line 165
    sget-object v1, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_8e

    .line 105
    :cond_141
    const-wide/16 v2, 0x0

    :try_start_143
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/dm/download/e;->B:J

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/dm/download/e;->A:J
    :try_end_14e
    .catch Ljava/net/SocketTimeoutException; {:try_start_143 .. :try_end_14e} :catch_127
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14e} :catch_14f

    goto :goto_dd

    .line 167
    :catch_14f
    move-exception v0

    .line 168
    sget-object v1, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto/16 :goto_8e

    .line 116
    :cond_169
    :try_start_169
    iget-boolean v2, p0, Lcn/dm/download/e;->G:Z

    if-nez v2, :cond_171

    iget-boolean v2, p0, Lcn/dm/download/e;->H:Z

    if-eqz v2, :cond_18f

    .line 117
    :cond_171
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 118
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 119
    iget-boolean v0, p0, Lcn/dm/download/e;->G:Z

    if-eqz v0, :cond_182

    .line 120
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->a(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 122
    :cond_182
    iget-boolean v0, p0, Lcn/dm/download/e;->H:Z

    if-eqz v0, :cond_8e

    .line 123
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->F:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->c(Ljava/lang/String;)V

    goto/16 :goto_8e

    .line 128
    :cond_18f
    const/4 v2, 0x0

    const/16 v3, 0x2800

    invoke-virtual {v6, v4, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .line 129
    const/4 v3, -0x1

    if-eq v2, v3, :cond_f2

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v5, v4, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 134
    iget-wide v8, p0, Lcn/dm/download/e;->A:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcn/dm/download/e;->A:J

    .line 135
    iget-wide v8, p0, Lcn/dm/download/e;->A:J

    iget-wide v10, p0, Lcn/dm/download/e;->z:J

    cmp-long v3, v8, v10

    if-lez v3, :cond_1e5

    .line 136
    iget-wide v8, p0, Lcn/dm/download/e;->B:J

    int-to-long v2, v2

    iget-wide v10, p0, Lcn/dm/download/e;->A:J

    iget-wide v12, p0, Lcn/dm/download/e;->z:J

    sub-long/2addr v10, v12

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcn/dm/download/e;->B:J

    .line 144
    :goto_1ba
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 145
    sub-long v8, v2, v0

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_ea

    .line 147
    sget-object v0, Lcn/dm/download/e;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u4e0b\u8f7d\u5927\u5c0f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcn/dm/download/e;->B:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    iget-object v0, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    iget-wide v8, p0, Lcn/dm/download/e;->B:J

    invoke-virtual {v0, v8, v9}, Lcn/dm/download/bean/DownloadAppInfo;->setCurrentDownloadSize(J)V

    .line 149
    iget-object v0, p0, Lcn/dm/download/e;->n:Lcn/dm/download/listener/a;

    iget-object v1, p0, Lcn/dm/download/e;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/a;->onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V

    move-wide v0, v2

    goto/16 :goto_ea

    .line 138
    :cond_1e5
    iget-wide v8, p0, Lcn/dm/download/e;->B:J

    int-to-long v2, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcn/dm/download/e;->B:J
    :try_end_1eb
    .catch Ljava/net/SocketTimeoutException; {:try_start_169 .. :try_end_1eb} :catch_127
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1eb} :catch_14f

    goto :goto_1ba
.end method
