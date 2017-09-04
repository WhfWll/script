.class public Lcom/sdu/didi/openapi/ss/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sdu/didi/openapi/ss/f;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:[B


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/f;->b:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sdu/didi/openapi/ss/f;->c:[B

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/sdu/didi/openapi/ss/f;
    .registers 3

    const-class v1, Lcom/sdu/didi/openapi/ss/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdu/didi/openapi/ss/f;->a:Lcom/sdu/didi/openapi/ss/f;

    if-nez v0, :cond_e

    new-instance v0, Lcom/sdu/didi/openapi/ss/f;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/ss/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdu/didi/openapi/ss/f;->a:Lcom/sdu/didi/openapi/ss/f;

    :cond_e
    sget-object v0, Lcom/sdu/didi/openapi/ss/f;->a:Lcom/sdu/didi/openapi/ss/f;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/ss/f;->c()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private b()Ljava/io/FileInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/ss/f;->c()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c()Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/sysdata/config/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3f
    new-instance v0, Ljava/io/File;

    const-string v2, "sys.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_4f
    :goto_4f
    return-object v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/f;->c:[B

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/f;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, p1, v2}, Lcom/sdu/didi/openapi/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/openapi/ss/f;->b()Ljava/io/FileInputStream;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string v2, ""
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_3e

    if-eqz v0, :cond_26

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_26
    const-string v0, ""

    monitor-exit v1

    goto :goto_12

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3e

    if-eqz v0, :cond_3a

    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_3a
    const-string v0, ""

    monitor-exit v1

    goto :goto_12

    :catchall_3e
    move-exception v2

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_44
    const-string v0, ""

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_2a

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sdu/didi/openapi/ss/f;->c:[B

    monitor-enter v3

    :try_start_4
    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/f;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sdu/didi/openapi/utils/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_42

    const/4 v0, 0x0

    :try_start_a
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0}, Lcom/sdu/didi/openapi/ss/f;->b()Ljava/io/FileInputStream;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_56

    move-result-object v1

    if-nez v1, :cond_21

    if-eqz v2, :cond_1a

    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1a
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_42

    :goto_20
    return-void

    :cond_21
    :try_start_21
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v4, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-virtual {v4, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/ss/f;->a()Ljava/io/FileOutputStream;
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_63

    move-result-object v2

    if-nez v2, :cond_45

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3b
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_40
    monitor-exit v3

    goto :goto_20

    :catchall_42
    move-exception v0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    :try_start_45
    const-string v0, ""

    invoke-virtual {v4, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_63

    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4f
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_54
    monitor-exit v3

    goto :goto_20

    :catchall_56
    move-exception v0

    move-object v1, v2

    :goto_58
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_5d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_62
    throw v0
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_42

    :catchall_63
    move-exception v0

    goto :goto_58
.end method
