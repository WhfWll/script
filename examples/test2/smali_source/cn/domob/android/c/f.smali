.class Lcn/domob/android/c/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/c/f$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/android/i/f;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcn/domob/android/c/c;

.field private k:Z

.field private l:J

.field private m:Lcn/domob/android/c/f$a;

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/android/c/c;Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput v1, p0, Lcn/domob/android/c/f;->e:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/c/f;->h:I

    .line 22
    iput v1, p0, Lcn/domob/android/c/f;->i:I

    .line 23
    iput-object v2, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/c/f;->l:J

    .line 28
    new-instance v0, Lcn/domob/android/c/f$a;

    invoke-direct {v0, p0}, Lcn/domob/android/c/f$a;-><init>(Lcn/domob/android/c/f;)V

    iput-object v0, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    .line 29
    iput-object v2, p0, Lcn/domob/android/c/f;->n:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcn/domob/android/c/f;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcn/domob/android/c/f;->c:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcn/domob/android/c/f;->l:J

    .line 37
    iput-object p5, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    .line 38
    iput-object p6, p0, Lcn/domob/android/c/f;->n:Landroid/content/Context;

    .line 39
    sget-object v0, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/f;

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

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcn/domob/android/c/f;->k:Z

    return v0
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/android/c/f$a;->a:Z

    .line 143
    return-void
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v11, 0x0

    .line 45
    iget v0, p0, Lcn/domob/android/c/f;->h:I

    new-array v12, v0, [Lcn/domob/android/c/g;

    .line 47
    :try_start_5
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcn/domob/android/c/f;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcn/domob/android/c/f;->n:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/c/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_5e

    .line 52
    sget-object v1, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    const-string v3, "Use Proxy"

    invoke-virtual {v1, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 58
    :goto_21
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 60
    const/16 v3, 0xc8

    if-lt v1, v3, :cond_6c

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_6c

    .line 67
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcn/domob/android/c/f;->e:I

    .line 68
    sget-object v0, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total file size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/domob/android/c/f;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcn/domob/android/c/f;->e:I

    if-gtz v0, :cond_82

    .line 70
    iget-object v0, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V

    .line 134
    :cond_5d
    :goto_5d
    return-void

    .line 55
    :cond_5e
    sget-object v0, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    const-string v1, "Proxy is null"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_21

    .line 63
    :cond_6c
    iget-object v0, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_73} :catch_74

    goto :goto_5d

    .line 129
    :catch_74
    move-exception v0

    .line 130
    sget-object v1, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(Ljava/lang/String;)V

    goto :goto_5d

    .line 74
    :cond_82
    :try_start_82
    sget-object v0, Lcn/domob/android/c/f;->d:Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/android/c/f;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadSizeMore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/android/c/f;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcn/domob/android/c/f;->e:I

    iget v1, p0, Lcn/domob/android/c/f;->h:I

    div-int/2addr v0, v1

    iput v0, p0, Lcn/domob/android/c/f;->f:I

    .line 80
    iget v0, p0, Lcn/domob/android/c/f;->e:I

    iget v1, p0, Lcn/domob/android/c/f;->h:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcn/domob/android/c/f;->g:I

    .line 82
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcn/domob/android/c/f;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v0, v11

    .line 83
    :goto_c4
    iget v1, p0, Lcn/domob/android/c/f;->h:I

    if-ge v0, v1, :cond_133

    .line 85
    iget v1, p0, Lcn/domob/android/c/f;->h:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_f7

    .line 86
    iget v1, p0, Lcn/domob/android/c/f;->f:I

    mul-int/2addr v1, v0

    int-to-long v4, v1

    iget-wide v6, p0, Lcn/domob/android/c/f;->l:J

    add-long/2addr v4, v6

    .line 87
    add-int/lit8 v1, v0, 0x1

    iget v6, p0, Lcn/domob/android/c/f;->f:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v1

    .line 89
    new-instance v1, Lcn/domob/android/c/g;

    iget-object v8, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    iget-object v9, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    iget-object v10, p0, Lcn/domob/android/c/f;->n:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcn/domob/android/c/g;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/android/c/f$a;Lcn/domob/android/c/c;Landroid/content/Context;)V

    .line 100
    :goto_e8
    invoke-virtual {v1}, Lcn/domob/android/c/g;->a()Z

    move-result v4

    if-eqz v4, :cond_115

    .line 101
    iget-object v0, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcn/domob/android/c/c;->a(I)V

    goto/16 :goto_5d

    .line 92
    :cond_f7
    iget v1, p0, Lcn/domob/android/c/f;->f:I

    mul-int/2addr v1, v0

    int-to-long v4, v1

    iget-wide v6, p0, Lcn/domob/android/c/f;->l:J

    add-long/2addr v4, v6

    .line 93
    add-int/lit8 v1, v0, 0x1

    iget v6, p0, Lcn/domob/android/c/f;->f:I

    mul-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x1

    iget v6, p0, Lcn/domob/android/c/f;->g:I

    add-int/2addr v1, v6

    int-to-long v6, v1

    .line 95
    new-instance v1, Lcn/domob/android/c/g;

    iget-object v8, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    iget-object v9, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    iget-object v10, p0, Lcn/domob/android/c/f;->n:Landroid/content/Context;

    invoke-direct/range {v1 .. v10}, Lcn/domob/android/c/g;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/android/c/f$a;Lcn/domob/android/c/c;Landroid/content/Context;)V

    goto :goto_e8

    .line 104
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

    invoke-virtual {v1, v4}, Lcn/domob/android/c/g;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lcn/domob/android/c/g;->start()V

    .line 106
    aput-object v1, v12, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 108
    :cond_133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/c/f;->k:Z

    .line 109
    :goto_136
    iget-boolean v0, p0, Lcn/domob/android/c/f;->k:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    iget-boolean v0, v0, Lcn/domob/android/c/f$a;->a:Z

    if-nez v0, :cond_5d

    .line 112
    iget v0, p0, Lcn/domob/android/c/f;->g:I

    iput v0, p0, Lcn/domob/android/c/f;->i:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/c/f;->k:Z

    move v0, v11

    .line 114
    :goto_148
    array-length v1, v12

    if-ge v0, v1, :cond_166

    .line 115
    iget v1, p0, Lcn/domob/android/c/f;->i:I

    int-to-long v2, v1

    aget-object v1, v12, v0

    invoke-virtual {v1}, Lcn/domob/android/c/g;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcn/domob/android/c/f;->i:I

    .line 116
    aget-object v1, v12, v0

    invoke-virtual {v1}, Lcn/domob/android/c/g;->a()Z

    move-result v1

    if-nez v1, :cond_163

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/c/f;->k:Z

    .line 114
    :cond_163
    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    .line 120
    :cond_166
    iget-object v0, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcn/domob/android/c/f;->m:Lcn/domob/android/c/f$a;

    iget-boolean v0, v0, Lcn/domob/android/c/f$a;->a:Z

    if-nez v0, :cond_18a

    .line 121
    iget v0, p0, Lcn/domob/android/c/f;->i:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L

    mul-double/2addr v0, v2

    iget v2, p0, Lcn/domob/android/c/f;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcn/domob/android/c/f;->j:Lcn/domob/android/c/c;

    invoke-interface {v1, v0}, Lcn/domob/android/c/c;->a(I)V

    .line 126
    :cond_18a
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/c/f;->sleep(J)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_18f} :catch_74

    goto :goto_136
.end method
