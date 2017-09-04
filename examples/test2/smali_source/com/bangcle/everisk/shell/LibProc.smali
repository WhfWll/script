.class public Lcom/bangcle/everisk/shell/LibProc;
.super Ljava/lang/Object;


# static fields
.field public static A:Z

.field private static B:Landroid/content/SharedPreferences;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field public static y:Landroid/content/Context;

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->A:Z

    sput-object v1, Lcom/bangcle/everisk/shell/LibProc;->B:Landroid/content/SharedPreferences;

    const-string v0, "n_dl"

    sput-object v0, Lcom/bangcle/everisk/shell/LibProc;->C:Ljava/lang/String;

    const-string v0, "n_dl0"

    sput-object v0, Lcom/bangcle/everisk/shell/LibProc;->D:Ljava/lang/String;

    const-string v0, "n_dl1"

    sput-object v0, Lcom/bangcle/everisk/shell/LibProc;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/riskd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    :cond_13
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/riskd_notupdate"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->A:Z

    const-string v0, "RiskStub.update"

    const-string v1, "not need update by /data/local/tmp/riskd_notupdate"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    sget-object v0, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    sget-object v1, Lcom/bangcle/everisk/shell/LibProc;->C:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/LibProc;->B:Landroid/content/SharedPreferences;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_35
.end method

.method public static a(Ljava/lang/Exception;)V
    .registers 6

    const-string v1, "risk"

    :try_start_2
    sget-object v0, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-eqz v0, :cond_15

    const-string v0, "RiskStubShell.Debug"

    const-string v2, "begin debug"

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-string v0, "_no_msg_"

    :cond_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reason"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v3, "stack"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "loader_ver"

    const-string v3, "24"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extra"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/bangcle/everisk/shell/LibProc;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/bangcle/everisk/shell/LibProc;->E:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "RiskStub.Crash"

    const-string v1, "save loader crash"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7b} :catch_7c

    goto :goto_6

    :catch_7c
    move-exception v0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private static s()Ljava/lang/String;
    .registers 8

    const/16 v0, 0x400

    const-string v1, "/data/local/tmp/riskd_config"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v4, v0, [B

    const-string v0, ""

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_44

    const-string v5, "RiskStub.Init"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read config from local files:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_31
    const/4 v3, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_45

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3f} :catch_40

    goto :goto_31

    :catch_40
    move-exception v1

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    :cond_44
    :goto_44
    return-object v0

    :cond_45
    :try_start_45
    const-string v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_40

    move-result-object v0

    goto :goto_44
.end method


# virtual methods
.method public load_in(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    return-void
.end method

.method public final r()V
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    sget-object v0, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    sget-object v0, Lcom/bangcle/everisk/shell/LibProc;->B:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/bangcle/everisk/shell/LibProc;->D:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "RiskStub.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load from sharedp="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bangcle/everisk/shell/LibProc;->s()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_101

    const-string v2, "RiskStub.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load from file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "RiskStub.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load config "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RiskStub.loader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delay before json t1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/bangcle/everisk/shell/Conf;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tt2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/bangcle/everisk/shell/Conf;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8c} :catch_f8

    :try_start_8c
    const-string v0, "t1"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bangcle/everisk/shell/Conf;->h:I

    const-string v0, "t2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bangcle/everisk/shell/Conf;->i:I
    :try_end_9c
    .catch Lorg/json/JSONException; {:try_start_8c .. :try_end_9c} :catch_fd
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9c} :catch_f3

    :goto_9c
    :try_start_9c
    const-string v0, "RiskStub.loader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delay after json t1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/bangcle/everisk/shell/Conf;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tt2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/bangcle/everisk/shell/Conf;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_be} :catch_f8

    :cond_be
    :goto_be
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sget v0, Lcom/bangcle/everisk/shell/Conf;->i:I

    sget v3, Lcom/bangcle/everisk/shell/Conf;->h:I

    sub-int/2addr v0, v3

    if-gtz v0, :cond_cb

    move v0, v1

    :cond_cb
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v2, Lcom/bangcle/everisk/shell/Conf;->h:I

    add-int/2addr v0, v2

    const-string v2, "RiskStub.Final"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delay sleep:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-eqz v2, :cond_ff

    :goto_ea
    int-to-long v0, v1

    :try_start_eb
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ee
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ee} :catch_f0

    goto/16 :goto_5

    :catch_f0
    move-exception v0

    goto/16 :goto_5

    :catch_f3
    move-exception v0

    :try_start_f4
    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_9c

    :catch_f8
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_be

    :catch_fd
    move-exception v0

    goto :goto_9c

    :cond_ff
    move v1, v0

    goto :goto_ea

    :cond_101
    move-object v0, v2

    goto/16 :goto_44
.end method
