.class public Lkm;
.super Ljava/lang/Object;

# interfaces
.implements Lkl;


# instance fields
.field private a:I

.field private a:J

.field private a:Ljava/io/ByteArrayOutputStream;

.field private a:Ljava/io/DataOutputStream;

.field private a:Ljava/io/File;

.field private a:Ljava/io/FileOutputStream;

.field private a:Ljava/util/Properties;

.field private a:Z

.field private b:I

.field private b:Ljava/io/File;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lkm;->a:Z

    iput v0, p0, Lkm;->c:I

    iput v0, p0, Lkm;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkm;->a:J

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lkm;->a:Ljava/util/Properties;

    const-string v0, "org.eclipse.paho.client.mqttv3.trace"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mqtt-trace.properties"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lkm;->a:Ljava/io/File;

    :goto_2c
    invoke-direct {p0}, Lkm;->a()Z

    return-void

    :cond_30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lkm;->a:Ljava/io/File;

    goto :goto_2c
.end method

.method private a()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lkm;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_d

    :try_start_6
    iget-object v0, p0, Lkm;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_44

    :goto_b
    iput-object v5, p0, Lkm;->a:Ljava/io/FileOutputStream;

    :cond_d
    iput v4, p0, Lkm;->d:I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lkm;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mqtt-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lkm;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".trc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_36
    :try_start_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lkm;->a:Ljava/io/FileOutputStream;
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    iput-boolean v4, p0, Lkm;->a:Z

    iput-object v5, p0, Lkm;->a:Ljava/io/FileOutputStream;

    goto :goto_3d

    :catch_44
    move-exception v0

    goto :goto_b
.end method

.method private a()Z
    .registers 9

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lkm;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lkm;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lkm;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a3

    :try_start_18
    iget-object v2, p0, Lkm;->a:Ljava/util/Properties;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lkm;->a:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    iget-object v2, p0, Lkm;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lkm;->a:J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_53

    iget-object v2, p0, Lkm;->a:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.outputName"

    const-string v4, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lkm;->b:Ljava/io/File;

    iget-object v2, p0, Lkm;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, Lkm;->a:J

    iput-boolean v0, p0, Lkm;->a:Z

    :goto_52
    return v0

    :catch_53
    move-exception v1

    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, Lkm;->a:J

    iput-boolean v0, p0, Lkm;->a:Z

    goto :goto_52

    :cond_5e
    iget-object v2, p0, Lkm;->a:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.count"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lkm;->a:I

    iget-object v2, p0, Lkm;->a:Ljava/util/Properties;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.limit"

    const-string v4, "5000000"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lkm;->b:I

    invoke-direct {p0}, Lkm;->a()V

    iget-object v2, p0, Lkm;->a:Ljava/io/FileOutputStream;

    if-nez v2, :cond_8f

    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, Lkm;->a:J

    iput-boolean v0, p0, Lkm;->a:Z

    goto :goto_52

    :cond_8f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iput-boolean v1, p0, Lkm;->a:Z

    move v0, v1

    goto :goto_52

    :cond_a3
    iget-boolean v0, p0, Lkm;->a:Z

    goto :goto_52

    :cond_a6
    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    iput-wide v6, p0, Lkm;->a:J

    iput-boolean v0, p0, Lkm;->a:Z

    goto :goto_52
.end method


# virtual methods
.method public final declared-synchronized a(Lkn;)V
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-short v2, p1, Lkn;->a:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-wide v2, p1, Lkn;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-byte v1, p1, Lkn;->a:B

    iget-object v2, p1, Lkn;->a:[Ljava/lang/Object;

    if-eqz v2, :cond_1e

    iget-object v2, p1, Lkn;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-lez v2, :cond_1e

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    :cond_1e
    iget-object v2, p1, Lkn;->a:Ljava/lang/Throwable;

    if-eqz v2, :cond_25

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    :cond_25
    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v1, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-short v2, p1, Lkn;->b:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v1, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-object v2, p1, Lkn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p1, Lkn;->a:[Ljava/lang/Object;

    if-eqz v1, :cond_73

    iget-object v1, p1, Lkn;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_73

    iget-object v1, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-object v2, p1, Lkn;->a:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v1, v0

    :goto_4a
    iget-object v2, p1, Lkn;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_73

    iget-object v2, p1, Lkn;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_65

    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lkn;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_65
    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6c} :catch_6d
    .catchall {:try_start_2 .. :try_end_6c} :catchall_e6

    goto :goto_62

    :catch_6d
    move-exception v0

    const/4 v0, 0x0

    :try_start_6f
    iput-boolean v0, p0, Lkm;->a:Z
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_e6

    :goto_71
    monitor-exit p0

    return-void

    :cond_73
    :try_start_73
    iget-object v1, p1, Lkn;->a:Ljava/lang/Throwable;

    if-eqz v1, :cond_a1

    iget-object v1, p1, Lkn;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    iget-object v3, p1, Lkn;->a:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_90
    array-length v2, v1

    if-ge v0, v2, :cond_a1

    iget-object v2, p0, Lkm;->a:Ljava/io/DataOutputStream;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :cond_a1
    iget v0, p0, Lkm;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_c5

    iget v0, p0, Lkm;->d:I

    iget-object v1, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lkm;->b:I

    if-le v0, v1, :cond_c5

    iget v0, p0, Lkm;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkm;->c:I

    iget v0, p0, Lkm;->c:I

    iget v1, p0, Lkm;->a:I

    if-ne v0, v1, :cond_c2

    const/4 v0, 0x0

    iput v0, p0, Lkm;->c:I

    :cond_c2
    invoke-direct {p0}, Lkm;->a()V

    :cond_c5
    iget-object v0, p0, Lkm;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_e0

    iget v0, p0, Lkm;->d:I

    iget-object v1, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkm;->d:I

    iget-object v0, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lkm;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lkm;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    :cond_e0
    iget-object v0, p0, Lkm;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_e5} :catch_6d
    .catchall {:try_start_73 .. :try_end_e5} :catchall_e6

    goto :goto_71

    :catchall_e6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    iget-boolean v0, p0, Lkm;->a:Z

    if-eqz v0, :cond_39

    const-string v0, "on"

    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    const-string v2, "org.eclipse.paho.client.mqttv3.trace.client.*.status"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "on"

    iget-object v1, p0, Lkm;->a:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "org.eclipse.paho.client.mqttv3.trace.client."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_37
    const/4 v0, 0x1

    :goto_38
    return v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method
