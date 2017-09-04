.class public Lcom/bangcle/everisk/shell/a;
.super Ljava/lang/Object;


# instance fields
.field private k:Lorg/json/JSONObject;

.field private l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, ""

    iput-object v1, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    iput v0, p0, Lcom/bangcle/everisk/shell/a;->m:I

    iput v0, p0, Lcom/bangcle/everisk/shell/a;->n:I

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->t:Z

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->u:Z

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->v:Z

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->w:Z

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->x:Z

    :try_start_1f
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_27
    return-void

    :cond_28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "update_pct_1000"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "update_pct_1000"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_41
    iput v1, p0, Lcom/bangcle/everisk/shell/a;->o:I

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "must_newest"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "must_newest"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_55
    iput v1, p0, Lcom/bangcle/everisk/shell/a;->p:I

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "c_ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bangcle/everisk/shell/a;->m:I

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "java_ver"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bangcle/everisk/shell/a;->n:I

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v2, "is_use"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, "is_use"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_7d
    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->t:Z

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    iput-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_93} :catch_94

    goto :goto_27

    :catch_94
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_27

    :cond_99
    move v1, v0

    goto :goto_41

    :cond_9b
    const/4 v1, 0x1

    goto :goto_55

    :cond_9d
    :try_start_9d
    const-string v0, "init"
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9f} :catch_94

    goto :goto_91
.end method

.method private static a(I)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNetworkClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_32} :catch_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_34

    move-result v0

    :goto_33
    return v0

    :catch_34
    move-exception v1

    goto :goto_33

    :catch_36
    move-exception v1

    goto :goto_33
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shell ConnectivityManager is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    const-string v1, "RiskStubShell.NWUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2c

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Shell NetworkInfo infos[] is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    const-string v0, "wifi"

    goto :goto_1d

    :cond_44
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Lcom/bangcle/everisk/shell/a;->a(I)I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :pswitch_58
    const-string v0, "3g"
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5a} :catch_12

    goto :goto_1d

    :pswitch_5b
    const-string v0, "4g"

    goto :goto_1d

    :pswitch_data_5e
    .packed-switch 0x2
        :pswitch_58
        :pswitch_5b
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :cond_10
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1a
    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_4e

    move-result-object v2

    const-string v1, ""

    :goto_26
    array-length v3, v2

    if-ge v0, v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :catch_4e
    move-exception v0

    const-string v1, ""

    :cond_51
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/bangcle/everisk/shell/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "4g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public static c()Z
    .registers 3

    const/4 v0, 0x1

    sget-object v1, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-static {}, Lcom/bangcle/everisk/shell/a;->d()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/bangcle/everisk/shell/a;->e()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/bangcle/everisk/shell/a;->d()Z

    move-result v0

    goto :goto_15

    :cond_27
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static d()Z
    .registers 10

    const-wide/16 v8, 0x0

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ip1"

    sget-object v3, Lcom/bangcle/everisk/shell/Conf;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ip2"

    sget-object v4, Lcom/bangcle/everisk/shell/Conf;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_last_available_tm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_last_available_tm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    cmp-long v4, v4, v6

    if-ltz v4, :cond_101

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "RiskStub.loader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HostMgr:try_ips: host= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/bangcle/everisk/shell/Conf;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    :try_start_a0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "srv_addr"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    const-string v3, "down_addr"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    const-string v3, "RiskStub.loader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HostMgr: get srvHost = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RiskStub.loader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HostMgr: get dldHost = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_last_available_tm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ff} :catch_109

    const/4 v0, 0x1

    :goto_100
    return v0

    :cond_101
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    :catch_109
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto/16 :goto_59

    :cond_10f
    const/4 v0, 0x0

    goto :goto_100
.end method

.method private static e()Z
    .registers 4

    sget-object v0, Lcom/bangcle/everisk/shell/Conf;->a:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "RiskStub.loader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HostMgr: get standby ip = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ip1"

    const-string v3, "ip1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ip2"

    const-string v3, "ip2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_44} :catch_46

    const/4 v0, 0x1

    :goto_45
    return v0

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    const-string v0, "RiskStub.loader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HostMgr: DownloadHost = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/bangcle/everisk/shell/Conf;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    if-nez v0, :cond_23

    const-string v0, "null"

    :goto_6
    const-string v1, "RiskStub.Version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_6

    :catch_2b
    move-exception v0

    goto :goto_22
.end method

.method public a(Lcom/bangcle/everisk/shell/a;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/bangcle/everisk/shell/a;->m:I

    iget v2, p1, Lcom/bangcle/everisk/shell/a;->m:I

    if-ne v1, v2, :cond_10

    iget v1, p0, Lcom/bangcle/everisk/shell/a;->n:I

    iget v2, p1, Lcom/bangcle/everisk/shell/a;->n:I

    if-eq v1, v2, :cond_3

    :cond_10
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public a(Ljava/lang/String;ZZ)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->v:Z

    iput-boolean p3, p0, Lcom/bangcle/everisk/shell/a;->x:Z

    if-eqz p3, :cond_e

    :try_start_9
    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    :goto_b
    if-nez v2, :cond_11

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_81

    goto :goto_b

    :cond_11
    :try_start_11
    invoke-static {v2}, Lcom/bangcle/everisk/shell/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "md5_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object v5, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v6, "md5_armeabi"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    :cond_3e
    const-string v4, "RiskStubShell.CheckMd5"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MD5 Check: <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> OK!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bangcle/everisk/shell/a;->v:Z

    move v0, v1

    goto :goto_d

    :cond_5d
    const-string v1, "RiskStubShell.CheckMd5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR: MD5 Check: <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_77} :catch_a5

    :goto_77
    if-eqz p2, :cond_d

    invoke-static {v2}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    if-eqz p3, :cond_a1

    iput-object v3, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    goto :goto_d

    :catch_81
    move-exception v1

    move-object v2, v3

    :goto_83
    const-string v4, "RiskStubShell.CheckMd5"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: get MD5, <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_77

    :cond_a1
    iput-object v3, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    goto/16 :goto_d

    :catch_a5
    move-exception v1

    goto :goto_83
.end method

.method public a(Z)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "RiskStubShell.Version"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_2a

    move v0, v1

    :goto_29
    return v0

    :cond_2a
    iput-boolean p1, p0, Lcom/bangcle/everisk/shell/a;->u:Z

    if-eqz p1, :cond_82

    const-string v0, "A"

    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/RiskStub/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/J/RiskStub.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bangcle/everisk/utils_l/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v0, "RiskStubShell.Version"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: MKDIR: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    move v0, v1

    goto :goto_29

    :cond_82
    const-string v0, "B"

    goto :goto_30

    :cond_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/RiskStub/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/C/RiskStub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/RiskStub/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/C/libRiskStub.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bangcle/everisk/utils_l/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f9

    const-string v0, "RiskStubShell.Version"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: MKDIR: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_29

    :cond_f9
    const/4 v0, 0x1

    goto/16 :goto_29
.end method

.method public b(Lcom/bangcle/everisk/shell/a;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_2
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "md5_armeabi-v7a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "md5_x86"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "md5_armeabi"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "md5_java"

    aput-object v3, v1, v2

    :goto_18
    array-length v2, v1

    if-ge v0, v2, :cond_2e

    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    aget-object v3, v1, v0

    iget-object v4, p1, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catch_2d
    move-exception v0

    :cond_2e
    return-void
.end method

.method public b(Z)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->w:Z

    :try_start_4
    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-static {v2}, Lcom/bangcle/everisk/shell/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v4, "md5_java"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "RiskStubShell.CheckMd5"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MD5 Check: <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> OK!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bangcle/everisk/shell/a;->w:Z

    move v0, v1

    goto :goto_8

    :cond_3e
    const-string v1, "RiskStubShell.CheckMd5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: MD5 Check: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_65

    :goto_5a
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    goto :goto_8

    :catch_65
    move-exception v1

    const-string v2, "RiskStubShell.CheckMd5"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: get MD5, <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_5a
.end method

.method public c(Z)V
    .registers 4

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    if-eqz p1, :cond_13

    const-string v0, "ok"

    iput-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    :cond_13
    iput-boolean p1, p0, Lcom/bangcle/everisk/shell/a;->t:Z

    invoke-virtual {p0}, Lcom/bangcle/everisk/shell/a;->q()V

    goto :goto_c
.end method

.method g()Z
    .registers 3

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .registers 2

    const-string v0, "init"

    iput-object v0, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bangcle/everisk/shell/a;->q()V

    return-void
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->t:Z

    return v0
.end method

.method public n()Z
    .registers 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-string v1, "RiskStub.Shell"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update when"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bangcle/everisk/shell/a;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must_newest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bangcle/everisk/shell/a;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/bangcle/everisk/shell/a;->o:I

    if-ge v0, v1, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public o()Z
    .registers 2

    iget v0, p0, Lcom/bangcle/everisk/shell/a;->p:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public p()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->x:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->v:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bangcle/everisk/utils_l/e;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    invoke-static {v3}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    iput-object v5, p0, Lcom/bangcle/everisk/shell/a;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v1, :cond_2f

    iput-object v5, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    move v0, v2

    goto :goto_c

    :cond_2f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "libRiskStub.so"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iput-object v5, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    move v0, v2

    goto :goto_c

    :cond_41
    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/bangcle/everisk/shell/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_47
    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "md5_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5d} :catch_5f

    :goto_5d
    move v0, v1

    goto :goto_c

    :catch_5f
    move-exception v0

    goto :goto_5d
.end method

.method q()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, "status"

    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    const-string v1, "is_use"

    iget-boolean v2, p0, Lcom/bangcle/everisk/shell/a;->t:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/bangcle/everisk/shell/a;->u:Z

    if-eqz v0, :cond_2c

    const-string v0, "ver_a"

    :goto_18
    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/bangcle/everisk/shell/a;->k:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "ver_b"
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_18

    :catch_2f
    move-exception v0

    goto :goto_2b
.end method
