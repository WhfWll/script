.class public Lcom/sdu/didi/uuid/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/uuid/l$a;
    }
.end annotation


# static fields
.field private static b:Lcom/sdu/didi/uuid/l;

.field private static c:Landroid/app/Activity;


# instance fields
.field private final a:J

.field private d:[I

.field private e:[I

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/sdu/didi/uuid/l;->a:J

    new-array v0, v2, [I

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/sdu/didi/uuid/l;->d:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/sdu/didi/uuid/l;->e:[I

    new-instance v0, Lcom/sdu/didi/uuid/m;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sdu/didi/uuid/m;-><init>(Lcom/sdu/didi/uuid/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sdu/didi/uuid/l;->f:Landroid/os/Handler;

    sput-object p1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    return-void

    :array_24
    .array-data 4
        0xe7
        0x104
        0xfb
    .end array-data

    :array_2e
    .array-data 4
        0xc1
        0xf0
        0xe8
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/l;
    .registers 3

    const-class v1, Lcom/sdu/didi/uuid/l;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdu/didi/uuid/l;->b:Lcom/sdu/didi/uuid/l;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sdu/didi/uuid/l;

    invoke-direct {v0, p0}, Lcom/sdu/didi/uuid/l;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/sdu/didi/uuid/l;->b:Lcom/sdu/didi/uuid/l;

    :cond_e
    sget-object v0, Lcom/sdu/didi/uuid/l;->b:Lcom/sdu/didi/uuid/l;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/sdu/didi/uuid/l$a;)V
    .registers 6

    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Lcom/sdu/didi/uuid/l$a;->a()V

    :goto_9
    return-void

    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sdu/didi/uuid/l$a;->a(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_30

    goto :goto_9

    :catch_30
    move-exception v0

    invoke-interface {p1}, Lcom/sdu/didi/uuid/l$a;->a()V

    goto :goto_9
.end method

.method static synthetic a(Lcom/sdu/didi/uuid/l;Lcom/sdu/didi/uuid/l$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdu/didi/uuid/l;->a(Lcom/sdu/didi/uuid/l$a;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    return-void
.end method

.method private a([B)V
    .registers 8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_70

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_70

    :cond_6d
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_70
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-static {v3, p1}, Lcom/sdu/didi/uuid/n;->a(Ljava/lang/String;[B)V

    :cond_7b
    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_d2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_d5

    :cond_d2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_d5
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-static {v3, p1}, Lcom/sdu/didi/uuid/n;->a(Ljava/lang/String;[B)V

    :cond_e0
    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_112

    :goto_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v1, v2}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sdu/didi/uuid/n;->a(Ljava/lang/String;[B)V

    goto/16 :goto_e

    :cond_112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ee
.end method

.method private declared-synchronized b()[Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-static {v1}, Lcom/sdu/didi/uuid/n;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/sdu/didi/uuid/n;->a([B)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    instance-of v1, v2, Lcom/sdu/didi/uuid/ed;

    if-eqz v1, :cond_45

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v5, v1, Lcom/sdu/didi/uuid/ed;->a:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v1, v1, Lcom/sdu/didi/uuid/ed;->b:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Lcom/sdu/didi/uuid/ed;

    move-object v1, v0

    iget-object v1, v1, Lcom/sdu/didi/uuid/ed;->c:Ljava/lang/String;

    check-cast v2, Lcom/sdu/didi/uuid/ed;

    iget-object v1, v2, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v5, v3, v2

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->e()I

    move-result v1

    if-ne v1, v6, :cond_42

    invoke-direct {p0, v4}, Lcom/sdu/didi/uuid/l;->a([B)V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_4f

    :cond_42
    move-object v1, v3

    :goto_43
    monitor-exit p0

    return-object v1

    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->c()[Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_4a
    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->c()[Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4f

    move-result-object v1

    goto :goto_43

    :catchall_4f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private c()[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/n;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sdu/didi/uuid/ed;

    invoke-direct {v4}, Lcom/sdu/didi/uuid/ed;-><init>()V

    iput-object v1, v4, Lcom/sdu/didi/uuid/ed;->a:Ljava/lang/String;

    iput-object v2, v4, Lcom/sdu/didi/uuid/ed;->b:Ljava/lang/String;

    iput-object v3, v4, Lcom/sdu/didi/uuid/ed;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdu/didi/uuid/n;->a(Ljava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, v4, Lcom/sdu/didi/uuid/ed;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-direct {p0, v2}, Lcom/sdu/didi/uuid/l;->a([B)V

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v0, v2

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v0, v2

    goto :goto_10

    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_159

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_70

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_73

    :cond_70
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_73
    :goto_73
    if-eqz v4, :cond_156

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_156

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_80
    if-eqz v1, :cond_88

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_152

    :cond_88
    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v3, v5}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v3, v6}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_df

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_e2

    :cond_df
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_e2
    if-eqz v4, :cond_152

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_152

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    :goto_f2
    if-eqz v3, :cond_fa

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14f

    :cond_fa
    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_137

    :goto_108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v1, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_134

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_134
    move-object v0, v2

    goto/16 :goto_10

    :cond_137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    :cond_14f
    move-object v0, v1

    goto/16 :goto_10

    :cond_152
    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_f2

    :cond_156
    move-object v1, v2

    goto/16 :goto_80

    :cond_159
    move-object v4, v2

    goto/16 :goto_73
.end method

.method private e()I
    .registers 6

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v0, 0x1

    :cond_69
    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam2(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v3, v4}, Lcom/sdu/didi/uuid/SigLib;->getParam1(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_bc

    add-int/lit8 v0, v0, 0x1

    :cond_bc
    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->e:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_100

    :goto_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sdu/didi/uuid/l;->d:[I

    invoke-static {v2, v3}, Lcom/sdu/didi/uuid/SigLib;->getParam(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ca
.end method

.method private f()Lorg/json/JSONObject;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->b()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    :try_start_b
    const-string v2, "suuid"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gqid"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {p0, v0, v2, v1}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v1, "imei"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imsi"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model"

    invoke-static {}, Lcom/sdu/didi/uuid/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sdu/didi/uuid/n;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-static {}, Lcom/sdu/didi/uuid/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string v2, "SimOperatorName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mobile_ip"

    invoke-static {}, Lcom/sdu/didi/uuid/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    const-string v1, "net"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/n;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v1, "wifi_name"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifi_ip"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wifi_mac"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    const-string v1, "wifi_mac"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CGI"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sdu/didi/uuid/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sdu/didi/uuid/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root"

    invoke-static {}, Lcom/sdu/didi/uuid/n;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/n;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_install_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sdu/didi/uuid/n;->l(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_type"

    sget-object v2, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sdu/didi/uuid/a;->a(Lorg/json/JSONObject;)V
    :try_end_12b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_12b} :catch_12c

    :goto_12b
    return-object v0

    :catch_12c
    move-exception v1

    goto :goto_12b
.end method

.method private g()Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->f()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "sig"

    sget-object v4, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sdu/didi/uuid/SigLib;->getSig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v0

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdu/didi/uuid/a;->a()V

    const-wide/16 v0, 0x1388

    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_18

    :goto_f
    invoke-direct {p0}, Lcom/sdu/didi/uuid/l;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, ""

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f

    :cond_1d
    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    new-array v2, v3, [B

    :try_start_26
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26 .. :try_end_2b} :catch_4a

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [B

    invoke-virtual {v1, v0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    sget-object v1, Lcom/sdu/didi/uuid/l;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sdu/didi/uuid/a;->a(Landroid/app/Activity;)Lcom/sdu/didi/uuid/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdu/didi/uuid/a;->b()V

    invoke-static {v2, v3, v0, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_17
.end method
