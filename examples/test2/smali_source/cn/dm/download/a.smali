.class public Lcn/dm/download/a;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcn/dm/download/listener/a;


# static fields
.field private static j:Lcn/dm/download/util/b;


# instance fields
.field private g:Lcn/dm/download/db/c;

.field private i:Lcn/dm/download/listener/DownloadHelperListener;

.field private k:Lcn/dm/download/d;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private n:Lcn/dm/download/listener/a;

.field private o:Lcn/dm/download/bean/DownloadAppInfo;

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Lcn/dm/download/e;

.field private s:J

.field public t:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcn/dm/download/util/b;

    const-class v1, Lcn/dm/download/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dm/download/util/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    return-void
.end method

.method public constructor <init>(Lcn/dm/download/bean/DownloadAppInfo;Landroid/content/Context;Lcn/dm/download/listener/DownloadHelperListener;)V
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcn/dm/download/a;->p:J

    .line 35
    iput-wide v0, p0, Lcn/dm/download/a;->s:J

    .line 40
    iput-object p2, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcn/dm/download/d;

    invoke-direct {v0, p1, p0}, Lcn/dm/download/d;-><init>(Lcn/dm/download/bean/DownloadAppInfo;Lcn/dm/download/listener/a;)V

    iput-object v0, p0, Lcn/dm/download/a;->k:Lcn/dm/download/d;

    .line 42
    iput-object p0, p0, Lcn/dm/download/a;->n:Lcn/dm/download/listener/a;

    .line 43
    iput-object p3, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    .line 44
    iput-object p1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    .line 45
    new-instance v0, Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/dm/download/db/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    .line 46
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/a;->q:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a(Lcn/dm/download/a;)V
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, Lcn/dm/download/a;->q:Ljava/lang/String;

    iget-object v1, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/dm/download/util/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/dm/download/a;->p:J

    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    iget-wide v2, p0, Lcn/dm/download/a;->p:J

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setAppSize(J)V

    iget-object v0, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/util/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/a;->l:Ljava/lang/String;

    iget-object v0, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-static {v0, v1}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcn/dm/download/a;Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x1

    .line 141
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u51c6\u5907\u542f\u52a8\u6587\u4ef6\u4e0b\u8f7d\uff0c\u521d\u59cb\u5927\u5c0f\u548c\u6587\u4ef6\u5927\u5c0f\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/dm/download/a;->s:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcn/dm/download/a;->p:J

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcn/dm/download/e;

    iget-object v2, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcn/dm/download/a;->s:J

    iget-wide v6, p0, Lcn/dm/download/a;->p:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcn/dm/download/a;->n:Lcn/dm/download/listener/a;

    iget-object v9, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct/range {v1 .. v9}, Lcn/dm/download/e;-><init>(Landroid/content/Context;Ljava/io/File;JJLcn/dm/download/listener/a;Lcn/dm/download/bean/DownloadAppInfo;)V

    iput-object v1, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    invoke-virtual {v0}, Lcn/dm/download/e;->start()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x1

    .line 144
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u51c6\u5907\u542f\u52a8\u6587\u4ef6\u4e0b\u8f7d\uff0c\u521d\u59cb\u5927\u5c0f\u548c\u6587\u4ef6\u5927\u5c0f\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/dm/download/a;->s:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcn/dm/download/a;->p:J

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Lcn/dm/download/e;

    iget-object v2, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcn/dm/download/a;->s:J

    iget-wide v6, p0, Lcn/dm/download/a;->p:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcn/dm/download/a;->n:Lcn/dm/download/listener/a;

    iget-object v9, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-direct/range {v1 .. v9}, Lcn/dm/download/e;-><init>(Landroid/content/Context;Ljava/io/File;JJLcn/dm/download/listener/a;Lcn/dm/download/bean/DownloadAppInfo;)V

    iput-object v1, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    .line 147
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    invoke-virtual {v0}, Lcn/dm/download/e;->start()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    .line 151
    :goto_39
    return-void

    .line 148
    :catch_3a
    move-exception v0

    .line 149
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39
.end method

.method private a(Z)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 182
    const/4 v1, 0x0

    .line 184
    invoke-static {}, Lcn/dm/download/c;->k()I

    move-result v2

    sget v3, Lcn/dm/download/util/Constants;->MaxDownloadThread:I

    if-lt v2, v3, :cond_3f

    .line 185
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7ebf\u7a0b\u6c60\u4e2d\u540c\u65f6\u4e0b\u8f7d\u7ebf\u7a0b\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/dm/download/c;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u8d85\u51fa\u6700\u5927\u4e0b\u8f7d\u7ebf\u7a0b\uff0c\u7ec8\u6b62\u4e0b\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 189
    iput v0, p0, Lcn/dm/download/a;->t:I

    .line 197
    :goto_28
    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/dm/download/c;->a(Ljava/lang/Long;Lcn/dm/download/a;)V

    .line 199
    if-eqz p1, :cond_48

    iget-object v1, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v2, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1, v2}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 201
    :goto_3e
    return v0

    .line 192
    :cond_3f
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v4}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 193
    iput v4, p0, Lcn/dm/download/a;->t:I

    move v0, v1

    goto :goto_28

    .line 199
    :cond_48
    iget-object v1, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v2, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1, v2}, Lcn/dm/download/db/c;->g(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_3e
.end method

.method static synthetic b(Lcn/dm/download/a;)V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/db/c;->a(J)V

    iput-wide v4, p0, Lcn/dm/download/a;->s:J

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5c

    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-wide v4, p0, Lcn/dm/download/a;->s:J

    goto :goto_3b

    :cond_5c
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/dm/download/a;->s:J

    goto :goto_3b
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 211
    if-eqz p1, :cond_a

    .line 212
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 216
    :goto_9
    return-void

    .line 214
    :cond_a
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/db/c;->g(Lcn/dm/download/bean/DownloadAppInfo;)V

    goto :goto_9
.end method

.method static synthetic c(Lcn/dm/download/a;)Lcn/dm/download/d;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcn/dm/download/a;->k:Lcn/dm/download/d;

    return-object v0
.end method

.method static synthetic d(Lcn/dm/download/a;)J
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcn/dm/download/a;->p:J

    return-wide v0
.end method

.method private d()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcn/dm/download/a;->g()V

    .line 95
    return-void
.end method

.method static synthetic e(Lcn/dm/download/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcn/dm/download/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcn/dm/download/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 117
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 119
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/db/c;->a(J)V

    .line 120
    iput-wide v4, p0, Lcn/dm/download/a;->s:J

    .line 133
    :cond_3b
    :goto_3b
    return-void

    .line 121
    :cond_3c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 123
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getCurrentDownloadSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5c

    .line 125
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 127
    iput-wide v4, p0, Lcn/dm/download/a;->s:J

    goto :goto_3b

    .line 129
    :cond_5c
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/dm/download/a;->s:J

    goto :goto_3b
.end method

.method private g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    if-eqz v0, :cond_d

    .line 155
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    iput-boolean v1, v0, Lcn/dm/download/e;->G:Z

    .line 156
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    iput-boolean v1, v0, Lcn/dm/download/e;->H:Z

    .line 158
    :cond_d
    return-void
.end method

.method private static h()V
    .registers 4

    .prologue
    .line 165
    sget-object v0, Lcn/dm/download/c;->v:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 173
    :goto_10
    return-void

    .line 166
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dm/download/a;

    .line 167
    iget v2, v0, Lcn/dm/download/a;->t:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 168
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 169
    invoke-virtual {v0}, Lcn/dm/download/a;->b()V

    goto :goto_10
.end method

.method private init()V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcn/dm/download/a;->q:Ljava/lang/String;

    iget-object v1, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/dm/download/util/c;->a(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/dm/download/a;->p:J

    .line 53
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    iget-wide v2, p0, Lcn/dm/download/a;->p:J

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setAppSize(J)V

    .line 54
    iget-object v0, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/dm/download/util/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/a;->l:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcn/dm/download/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-static {v0, v1}, Lcn/dm/download/util/c;->a(Landroid/content/Context;Lcn/dm/download/bean/DownloadAppInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/dm/download/a;->m:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 4

    .prologue
    .line 293
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 296
    :try_start_2
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->a(Ljava/lang/Long;)V

    .line 298
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 299
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0, p1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1f
    .catchall {:try_start_2 .. :try_end_16} :catchall_2e

    .line 303
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 305
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 307
    :goto_1e
    return-void

    .line 300
    :catch_1f
    move-exception v0

    .line 301
    :try_start_20
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2e

    .line 303
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 305
    invoke-static {}, Lcn/dm/download/a;->h()V

    goto :goto_1e

    .line 302
    :catchall_2e
    move-exception v0

    .line 303
    iget-object v1, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadPause(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 305
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 306
    throw v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Lcn/dm/download/b;

    invoke-direct {v0, p0}, Lcn/dm/download/b;-><init>(Lcn/dm/download/a;)V

    .line 76
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 272
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDownloadSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :try_start_c
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->a(Ljava/lang/Long;)V

    .line 277
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 278
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0, v1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_31
    .catchall {:try_start_c .. :try_end_26} :catchall_42

    .line 282
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 284
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 286
    :goto_30
    return-void

    .line 279
    :catch_31
    move-exception v0

    .line 280
    :try_start_32
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_42

    .line 282
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 284
    invoke-static {}, Lcn/dm/download/a;->h()V

    goto :goto_30

    .line 281
    :catchall_42
    move-exception v0

    .line 282
    iget-object v1, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v2, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v1, v2}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadSuccess(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 284
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 285
    throw v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Lcn/dm/download/a;->g()V

    .line 84
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dm/download/e;->G:Z

    .line 87
    :cond_c
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 328
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDownloadCanceled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :try_start_c
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v0}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->a(Ljava/lang/Long;)V

    .line 333
    invoke-static {p1}, Lcn/dm/download/util/c;->s(Ljava/lang/String;)Z

    .line 334
    sget-object v0, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u88ab\u5220\u9664\u6587\u4ef6\u540d\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 337
    iget-object v0, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/bean/DownloadAppInfo;->setCurrentDownloadSize(J)V

    .line 339
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-virtual {v1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/dm/download/db/c;->a(J)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_4b
    .catchall {:try_start_c .. :try_end_40} :catchall_5c

    .line 343
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 345
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 347
    :goto_4a
    return-void

    .line 340
    :catch_4b
    move-exception v0

    .line 341
    :try_start_4c
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_5c

    .line 343
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v1, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v0, v1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 345
    invoke-static {}, Lcn/dm/download/a;->h()V

    goto :goto_4a

    .line 342
    :catchall_5c
    move-exception v0

    .line 343
    iget-object v1, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v2, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v1, v2}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadCancel(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 345
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 346
    throw v0
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 101
    invoke-direct {p0}, Lcn/dm/download/a;->g()V

    .line 102
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    if-eqz v0, :cond_c

    .line 103
    iget-object v0, p0, Lcn/dm/download/a;->r:Lcn/dm/download/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/dm/download/e;->H:Z

    .line 105
    :cond_c
    return-void
.end method

.method public final i()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 222
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcn/dm/download/a;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 231
    :goto_a
    return v0

    .line 226
    :cond_b
    iget-object v1, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v2, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v1, v2}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadStart(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    .line 227
    const/4 v0, 0x1

    goto :goto_a

    .line 228
    :catch_14
    move-exception v1

    .line 229
    sget-object v2, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_a
.end method

.method public final j()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    sget-object v2, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    .line 238
    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, v2}, Lcn/dm/download/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    :goto_b
    return v0

    .line 241
    :cond_c
    iget-object v2, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    iget-object v3, p0, Lcn/dm/download/a;->o:Lcn/dm/download/bean/DownloadAppInfo;

    invoke-interface {v2, v3}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadResume(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    move v0, v1

    .line 242
    goto :goto_b

    .line 243
    :catch_15
    move-exception v1

    .line 244
    sget-object v2, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_b
.end method

.method public final onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 5
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p1}, Lcn/dm/download/bean/DownloadAppInfo;->getAppId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/dm/download/c;->a(Ljava/lang/Long;)V

    .line 315
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/dm/download/bean/DownloadAppInfo;->setDownloadStatus(I)V

    .line 316
    iget-object v0, p0, Lcn/dm/download/a;->g:Lcn/dm/download/db/c;

    invoke-virtual {v0, p1}, Lcn/dm/download/db/c;->f(Lcn/dm/download/bean/DownloadAppInfo;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_1e
    .catchall {:try_start_0 .. :try_end_15} :catchall_38

    .line 320
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 322
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 324
    :goto_1d
    return-void

    .line 317
    :catch_1e
    move-exception v0

    .line 318
    :try_start_1f
    sget-object v1, Lcn/dm/download/a;->j:Lcn/dm/download/util/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_38

    .line 320
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 322
    invoke-static {}, Lcn/dm/download/a;->h()V

    goto :goto_1d

    .line 319
    :catchall_38
    move-exception v0

    .line 320
    iget-object v1, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v1, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onDownloadFailed(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 322
    invoke-static {}, Lcn/dm/download/a;->h()V

    .line 323
    throw v0
.end method

.method public final onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V
    .registers 3
    .param p1, "downloadAppInfo"    # Lcn/dm/download/bean/DownloadAppInfo;

    .prologue
    .line 262
    iget-object v0, p0, Lcn/dm/download/a;->i:Lcn/dm/download/listener/DownloadHelperListener;

    invoke-interface {v0, p1}, Lcn/dm/download/listener/DownloadHelperListener;->onProgressChange(Lcn/dm/download/bean/DownloadAppInfo;)V

    .line 263
    return-void
.end method
