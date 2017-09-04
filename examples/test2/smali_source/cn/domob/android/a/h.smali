.class Lcn/domob/android/a/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String; = null

.field static b:Ljava/lang/String; = null

.field protected static final c:Ljava/lang/String; = ".temp"

.field static final d:I = 0x200000

.field static final e:I = 0x500000

.field private static f:Lcn/domob/android/offerwall/m; = null

.field private static final i:Ljava/lang/String; = "/DomobOfferWallAppDownload/"


# instance fields
.field private g:Lcn/domob/android/a/i;

.field private h:Landroid/content/Context;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    const-string v0, "sd\u5361"

    sput-object v0, Lcn/domob/android/a/h;->a:Ljava/lang/String;

    const-string v0, "\u5185\u5b58\u5361"

    sput-object v0, Lcn/domob/android/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/a/i;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    iput-object v0, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/a/h;->j:J

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    const-string v0, ".apk"

    iput-object v0, p0, Lcn/domob/android/a/h;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/a/h;->n:Z

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    iput-object p4, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    iput-object p1, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    iput-object p3, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_13
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_31

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_31

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    :goto_29
    return-wide v0

    :cond_2a
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_13

    :cond_31
    const-wide/16 v0, -0x1

    goto :goto_29
.end method

.method private b()V
    .registers 2

    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcn/domob/android/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6
.end method

.method private b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    invoke-interface {v1, p1}, Lcn/domob/android/a/i;->a(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_86

    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u3000download size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "softSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/domob/android/a/h;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcn/domob/android/a/h;->n:Z

    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/a/i;->b(Ljava/lang/String;)V

    goto :goto_2e

    :cond_86
    move v0, v1

    goto :goto_2e
.end method

.method private c()Z
    .registers 13

    const/4 v1, 0x1

    const/4 v8, 0x0

    const-string v0, ""

    const-wide/16 v4, 0x0

    :try_start_6
    iget-object v2, p0, Lcn/domob/android/a/h;->o:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/domob/android/a/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/domob/android/a/h;->j:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_ba

    invoke-static {}, Lcn/domob/android/a/h;->e()Z

    move-result v2

    if-eqz v2, :cond_143

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v4, v2

    sget-object v2, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sd availaSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "softsize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcn/domob/android/a/h;->j:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/domob/android/a/h;->j:J

    const-wide/32 v6, 0x200000

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_143

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DomobOfferWallAppDownload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/a/h;->c(Ljava/lang/String;)Z

    move v2, v1

    :goto_75
    if-nez v2, :cond_10e

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v6, v2

    sget-object v0, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/domob/android/a/h;->j:J

    const-wide/32 v10, 0x500000

    add-long/2addr v2, v10

    cmp-long v0, v6, v2

    if-gez v0, :cond_c4

    iget-object v1, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    iget-wide v2, p0, Lcn/domob/android/a/h;->j:J

    invoke-interface/range {v1 .. v7}, Lcn/domob/android/a/i;->a(JJJ)V

    move v0, v8

    :goto_b9
    return v0

    :catch_ba
    move-exception v0

    iget-object v0, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    const-string v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/a/i;->d(Ljava/lang/String;)V

    move v0, v8

    goto :goto_b9

    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/DomobOfferWallAppDownload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/a/h;->c(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    :try_start_104
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10b} :catch_135
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_10b} :catch_13c

    move-result v2

    if-nez v2, :cond_12e

    :cond_10e
    :goto_10e
    iget-object v2, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/domob/android/a/i;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_b9

    :cond_12e
    :try_start_12e
    iget-object v2, p0, Lcn/domob/android/a/h;->g:Lcn/domob/android/a/i;

    invoke-interface {v2}, Lcn/domob/android/a/i;->a()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_133} :catch_135
    .catch Ljava/lang/InterruptedException; {:try_start_12e .. :try_end_133} :catch_13c

    move v0, v8

    goto :goto_b9

    :catch_135
    move-exception v2

    sget-object v3, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    invoke-virtual {v3, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_10e

    :catch_13c
    move-exception v2

    sget-object v3, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    invoke-virtual {v3, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_10e

    :cond_143
    move v2, v8

    goto/16 :goto_75
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private d()Z
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DomobOfferWallAppDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_42
    :goto_42
    return v0

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/h;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DomobOfferWallAppDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/a/h;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static e()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcn/domob/android/a/h;->f:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/domob/android/a/h;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/domob/android/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcn/domob/android/a/h;->n:Z

    if-eqz v1, :cond_3a

    :cond_39
    :goto_39
    return-object v0

    :cond_3a
    iget-object v0, p0, Lcn/domob/android/a/h;->l:Ljava/lang/String;

    goto :goto_39
.end method

.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcn/domob/android/a/h;->b()V

    return-void
.end method
