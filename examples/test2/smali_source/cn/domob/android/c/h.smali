.class Lcn/domob/android/c/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "/DomobResDownload/"

.field static b:Ljava/lang/String; = null

.field static c:Ljava/lang/String; = null

.field protected static final d:Ljava/lang/String; = ".temp"

.field static final e:I = 0x200000

.field static final f:I = 0x500000

.field private static g:Lcn/domob/android/i/f; = null

.field private static final k:Ljava/lang/String; = "/DomobAppDownload/"


# instance fields
.field private h:Lcn/domob/android/c/i;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/c/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    .line 23
    const-string v0, "sd\u5361"

    sput-object v0, Lcn/domob/android/c/h;->b:Ljava/lang/String;

    .line 24
    const-string v0, "\u5185\u5b58\u5361"

    sput-object v0, Lcn/domob/android/c/h;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    iput-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    .line 18
    iput-object v0, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    .line 19
    const-string v0, "/DomobAppDownload/"

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/c/h;->l:J

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 27
    const-string v0, ".apk"

    iput-object v0, p0, Lcn/domob/android/c/h;->o:Ljava/lang/String;

    .line 28
    iput-boolean v4, p0, Lcn/domob/android/c/h;->p:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    .line 31
    iput-boolean v5, p0, Lcn/domob/android/c/h;->r:Z

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 40
    iput-object p6, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    .line 41
    iput-object p1, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    if-ne p5, v0, :cond_6a

    .line 44
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 45
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 46
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 47
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 48
    iput-boolean v4, p0, Lcn/domob/android/c/h;->r:Z

    .line 61
    :cond_53
    :goto_53
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    const-string v1, "download path currentDownloadPath:%s storageName:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 62
    return-void

    .line 52
    :cond_6a
    if-eqz p4, :cond_75

    .line 53
    iput-object p2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 54
    const-string v0, "/DomobResDownload/"

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 55
    iput-boolean v4, p0, Lcn/domob/android/c/h;->r:Z

    goto :goto_53

    .line 57
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 58
    const-string v0, "/DomobAppDownload/"

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 59
    iput-boolean v5, p0, Lcn/domob/android/c/h;->r:Z

    goto :goto_53
.end method

.method private b()V
    .registers 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/domob/android/c/h;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/c/h;->l:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_f

    .line 103
    :goto_8
    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    :cond_e
    :goto_e
    return-void

    .line 99
    :catch_f
    move-exception v0

    .line 100
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 106
    :cond_16
    invoke-direct {p0}, Lcn/domob/android/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_e
.end method

.method private b(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 255
    const/4 v1, 0x0

    .line 256
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
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

    .line 259
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 261
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    if-eqz v1, :cond_2e

    .line 262
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v1, p1}, Lcn/domob/android/c/i;->a(Ljava/lang/String;)V

    .line 275
    :cond_2e
    :goto_2e
    return v0

    .line 265
    :cond_2f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 267
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

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

    iget-wide v4, p0, Lcn/domob/android/c/h;->l:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-boolean v0, p0, Lcn/domob/android/c/h;->p:Z

    .line 271
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    if-eqz v1, :cond_2e

    .line 272
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/c/i;->b(Ljava/lang/String;)V

    goto :goto_2e

    :cond_86
    move v0, v1

    goto :goto_2e
.end method

.method private c()Z
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 121
    const-string v0, ""

    .line 126
    :try_start_6
    iget-object v2, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/domob/android/c/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/domob/android/c/h;->l:J

    .line 128
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    .line 129
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    const-string v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u4fe1\u606f\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/i;->d(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    .line 210
    :goto_1d
    return v8

    .line 133
    :catch_1e
    move-exception v0

    .line 134
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    const-string v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/i;->d(Ljava/lang/String;)V

    goto :goto_1d

    .line 139
    :cond_27
    invoke-static {}, Lcn/domob/android/c/h;->e()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 140
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    .line 146
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 148
    mul-long/2addr v4, v2

    .line 150
    sget-object v2, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sd availaSize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "softsize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcn/domob/android/c/h;->l:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/32 v10, 0x200000

    add-long/2addr v2, v10

    cmp-long v2, v4, v2

    if-lez v2, :cond_db

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcn/domob/android/c/h;->c(Ljava/lang/String;)Z

    move-object v2, v0

    move v0, v1

    :goto_8f
    move v12, v0

    move-object v0, v2

    move v2, v12

    .line 170
    :goto_92
    if-nez v2, :cond_13d

    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-eqz v2, :cond_13d

    .line 172
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 173
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    .line 175
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    .line 176
    mul-long/2addr v6, v2

    .line 177
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/32 v10, 0x500000

    add-long/2addr v2, v10

    cmp-long v0, v6, v2

    if-gez v0, :cond_f3

    .line 181
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    invoke-interface/range {v1 .. v7}, Lcn/domob/android/c/i;->a(JJJ)V

    goto/16 :goto_1d

    .line 160
    :cond_db
    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-nez v2, :cond_177

    .line 161
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    invoke-interface/range {v1 .. v7}, Lcn/domob/android/c/i;->a(JJJ)V

    goto/16 :goto_1d

    .line 164
    :cond_e8
    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-nez v2, :cond_173

    .line 165
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v0}, Lcn/domob/android/c/i;->b()V

    goto/16 :goto_1d

    .line 184
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcn/domob/android/c/h;->c(Ljava/lang/String;)Z

    .line 187
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
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

    .line 189
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 192
    :try_start_133
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_13a} :catch_165
    .catch Ljava/lang/InterruptedException; {:try_start_133 .. :try_end_13a} :catch_16c

    move-result v2

    .line 194
    if-nez v2, :cond_15e

    .line 209
    :cond_13d
    :goto_13d
    iget-object v2, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/domob/android/c/i;->c(Ljava/lang/String;)V

    move v8, v1

    .line 210
    goto/16 :goto_1d

    .line 197
    :cond_15e
    :try_start_15e
    iget-object v2, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v2}, Lcn/domob/android/c/i;->a()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_163} :catch_165
    .catch Ljava/lang/InterruptedException; {:try_start_15e .. :try_end_163} :catch_16c

    goto/16 :goto_1d

    .line 201
    :catch_165
    move-exception v2

    .line 202
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13d

    .line 203
    :catch_16c
    move-exception v2

    .line 204
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_13d

    :cond_173
    move-wide v4, v6

    move v2, v8

    goto/16 :goto_92

    :cond_177
    move-object v2, v0

    move v0, v8

    goto/16 :goto_8f
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    .line 286
    const-class v2, Lcn/domob/android/c/h;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to create a directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_94

    .line 288
    :try_start_1c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_74

    .line 290
    const/4 v4, 0x3

    move v0, v1

    .line 292
    :goto_29
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_52

    if-gt v0, v4, :cond_52

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_52

    .line 293
    sget-object v5, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    const-string v6, "the %d time to create a directory failed, %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/i/f;->d(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 296
    :cond_52
    if-le v0, v4, :cond_72

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_72

    .line 297
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    const-string v4, "hava tried %d times to create a directory failed, %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_72} :catch_8d
    .catchall {:try_start_1c .. :try_end_72} :catchall_94

    .line 305
    :cond_72
    :goto_72
    monitor-exit v2

    return v1

    .line 300
    :cond_74
    :try_start_74
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the directory is exist, so no need to create again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8c} :catch_8d
    .catchall {:try_start_74 .. :try_end_8c} :catchall_94

    goto :goto_72

    .line 302
    :catch_8d
    move-exception v0

    .line 303
    :try_start_8e
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_94

    goto :goto_72

    .line 286
    :catchall_94
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private d()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 216
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 219
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/c/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 221
    if-eqz v1, :cond_43

    .line 234
    :cond_42
    :goto_42
    return v0

    .line 225
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/c/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 228
    if-nez v1, :cond_42

    .line 231
    if-nez v1, :cond_79

    .line 232
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    const-string v1, "Local test results are not downloaded resources"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 234
    :cond_79
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static e()Z
    .registers 2

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 66
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->s:J

    invoke-interface {v0, v2, v3}, Lcn/domob/android/c/i;->a(J)V

    .line 67
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 90
    :goto_11
    return-wide v0

    .line 69
    :cond_12
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/c/d;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_47

    .line 74
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 79
    :goto_25
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 81
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4e

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_4e

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 89
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->s:J

    invoke-interface {v0, v2, v3}, Lcn/domob/android/c/i;->a(J)V

    .line 90
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    goto :goto_11

    .line 76
    :cond_47
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_25

    .line 85
    :cond_4e
    const-wide/16 v0, -0x1

    goto :goto_11
.end method

.method protected a()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 240
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/i/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/domob/android/c/h;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 243
    iget-boolean v1, p0, Lcn/domob/android/c/h;->p:Z

    if-eqz v1, :cond_3a

    .line 249
    :cond_39
    :goto_39
    return-object v0

    .line 246
    :cond_3a
    iget-object v0, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    goto :goto_39
.end method

.method public final run()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcn/domob/android/c/h;->b()V

    .line 118
    return-void
.end method
