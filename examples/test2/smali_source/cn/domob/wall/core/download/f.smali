.class Lcn/domob/wall/core/download/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/download/f$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/wall/core/h/d;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcn/domob/wall/core/download/e;

.field private k:Z

.field private l:J

.field private m:Lcn/domob/wall/core/download/f$a;

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/wall/core/download/e;Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    iput v1, p0, Lcn/domob/wall/core/download/f;->e:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/download/f;->h:I

    .line 24
    iput v1, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 25
    iput-object v2, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/wall/core/download/f;->l:J

    .line 30
    new-instance v0, Lcn/domob/wall/core/download/f$a;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/download/f$a;-><init>(Lcn/domob/wall/core/download/f;)V

    iput-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    .line 31
    iput-object v2, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcn/domob/wall/core/download/f;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/domob/wall/core/download/f;->c:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lcn/domob/wall/core/download/f;->l:J

    .line 39
    iput-object p5, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    .line 40
    iput-object p6, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    .line 41
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build DownloadTask url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    return v0
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    .line 145
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 47
    iget v0, p0, Lcn/domob/wall/core/download/f;->h:I

    new-array v12, v0, [Lcn/domob/wall/core/download/h;

    .line 49
    :try_start_5
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/wall/core/download/g;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_5e

    .line 54
    sget-object v1, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    const-string v3, "Use Proxy"

    invoke-virtual {v1, p0, v3}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 60
    :goto_21
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 62
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_6c

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_6c

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/download/f;->e:I

    .line 70
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total file size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/domob/wall/core/download/f;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    if-gtz v0, :cond_82

    .line 72
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V

    .line 136
    :cond_5d
    :goto_5d
    return-void

    .line 57
    :cond_5e
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    const-string v1, "Proxy is null"

    invoke-virtual {v0, p0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_21

    .line 65
    :cond_6c
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_73} :catch_74

    goto :goto_5d

    .line 131
    :catch_74
    move-exception v0

    .line 132
    sget-object v1, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    .line 133
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V

    goto :goto_5d

    .line 76
    :cond_82
    :try_start_82
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/wall/core/download/f;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadSizeMore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/wall/core/download/f;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    iget v1, p0, Lcn/domob/wall/core/download/f;->h:I

    div-int/2addr v0, v1

    iput v0, p0, Lcn/domob/wall/core/download/f;->f:I

    .line 82
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    iget v1, p0, Lcn/domob/wall/core/download/f;->h:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/domob/wall/core/download/f;->g:I

    .line 84
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v0, v11

    .line 85
    :goto_c4
    iget v1, p0, Lcn/domob/wall/core/download/f;->h:I

    if-ge v0, v1, :cond_133

    .line 87
    iget v1, p0, Lcn/domob/wall/core/download/f;->h:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_f7

    .line 88
    iget v1, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v1, v0

    int-to-long v4, v1

    iget-wide v6, p0, Lcn/domob/wall/core/download/f;->l:J

    add-long/2addr v4, v6

    .line 89
    add-int/lit8 v1, v0, 0x1

    iget v6, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v1

    .line 91
    new-instance v1, Lcn/domob/wall/core/download/h;

    iget-object v8, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-object v9, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    iget-object v10, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcn/domob/wall/core/download/h;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/wall/core/download/f$a;Lcn/domob/wall/core/download/e;Landroid/content/Context;)V

    .line 102
    :goto_e8
    invoke-virtual {v1}, Lcn/domob/wall/core/download/h;->a()Z

    move-result v4

    if-eqz v4, :cond_115

    .line 103
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(I)V

    goto/16 :goto_5d

    .line 94
    :cond_f7
    iget v1, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v1, v0

    int-to-long v4, v1

    iget-wide v6, p0, Lcn/domob/wall/core/download/f;->l:J

    add-long/2addr v4, v6

    .line 95
    add-int/lit8 v1, v0, 0x1

    iget v6, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    iget v6, p0, Lcn/domob/wall/core/download/f;->g:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    .line 97
    new-instance v1, Lcn/domob/wall/core/download/h;

    iget-object v8, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-object v9, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    iget-object v10, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcn/domob/wall/core/download/h;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/wall/core/download/f$a;Lcn/domob/wall/core/download/e;Landroid/content/Context;)V

    goto :goto_e8

    .line 106
    :cond_115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/wall/core/download/h;->setName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lcn/domob/wall/core/download/h;->start()V

    .line 108
    aput-object v1, v12, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 110
    :cond_133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    .line 111
    :goto_136
    iget-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-boolean v0, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    if-nez v0, :cond_5d

    .line 114
    iget v0, p0, Lcn/domob/wall/core/download/f;->g:I

    iput v0, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    move v0, v11

    .line 116
    :goto_148
    array-length v1, v12

    if-ge v0, v1, :cond_166

    .line 117
    iget v1, p0, Lcn/domob/wall/core/download/f;->i:I

    int-to-long v2, v1

    aget-object v1, v12, v0

    invoke-virtual {v1}, Lcn/domob/wall/core/download/h;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 118
    aget-object v1, v12, v0

    invoke-virtual {v1}, Lcn/domob/wall/core/download/h;->a()Z

    move-result v1

    if-nez v1, :cond_163

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/wall/core/download/f;->k:Z

    .line 116
    :cond_163
    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    .line 122
    :cond_166
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-boolean v0, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    if-nez v0, :cond_18a

    .line 123
    iget v0, p0, Lcn/domob/wall/core/download/f;->i:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L

    mul-double/2addr v0, v2

    iget v2, p0, Lcn/domob/wall/core/download/f;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    invoke-interface {v1, v0}, Lcn/domob/wall/core/download/e;->a(I)V

    .line 128
    :cond_18a
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/wall/core/download/f;->sleep(J)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_18f} :catch_74

    goto :goto_136
.end method
