.class public Lcom/bangcle/everisk/shell/RiskStubShell;
.super Ljava/lang/Object;


# static fields
.field public static B:Landroid/content/SharedPreferences;

.field private static I:Z

.field private static J:Landroid/content/Context;

.field private static K:I

.field static L:Ljava/lang/String;

.field static M:Ljava/lang/String;

.field private static N:Lcom/bangcle/everisk/shell/a;

.field private static O:Lcom/bangcle/everisk/shell/a;

.field private static P:Lcom/bangcle/everisk/shell/a;

.field private static Q:Lcom/bangcle/everisk/shell/a;

.field private static R:Lcom/bangcle/everisk/shell/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v0, Lcom/bangcle/everisk/shell/RiskStubShell;->I:Z

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    sput v0, Lcom/bangcle/everisk/shell/RiskStubShell;->K:I

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetRiskSDKParam()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    const-string v2, "risk_sdk_param"

    sget-object v3, Lcom/bangcle/everisk/shell/Conf;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public static RiskSDK(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/bangcle/everisk/shell/b;->RiskSDK(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static c(Lcom/bangcle/everisk/shell/a;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "RiskStub"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bangcle/everisk/shell/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib/libRiskStub.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bangcle/everisk/shell/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_81

    const-string v1, "RiskStubShell.InitFirstTime"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: COPY inside cFile Failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bangcle/everisk/shell/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return v0

    :catch_65
    move-exception v1

    const-string v2, "RiskStubShell.ExtractDexFromResToStoragePath"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_64

    :catch_73
    move-exception v1

    const-string v2, "RiskStubShell.ExtractDexFromResToStoragePath"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_64

    :cond_81
    const/4 v0, 0x1

    goto :goto_64
.end method

.method public static x()V
    .registers 14

    const-wide/32 v12, 0x15180

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    sput-object v0, Lcom/bangcle/everisk/shell/LibProc;->y:Landroid/content/Context;

    new-instance v11, Lcom/bangcle/everisk/shell/LibProc;

    invoke-direct {v11}, Lcom/bangcle/everisk/shell/LibProc;-><init>()V

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    const-string v1, "RiskStubLoader"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    sget v0, Lcom/bangcle/everisk/shell/Conf;->f:I

    sget v1, Lcom/bangcle/everisk/shell/Conf;->g:I

    add-int/lit16 v1, v1, 0x1000

    if-ne v0, v1, :cond_3a

    const-string v0, "RiskStubShell.CheckEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: AgentID INVALID!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/bangcle/everisk/shell/Conf;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    :goto_37
    if-nez v0, :cond_11b

    :goto_39
    return-void

    :cond_3a
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    if-nez v0, :cond_47

    const-string v0, "RiskStubShell.CheckEnv"

    const-string v1, "ERROR: prefs is NULL!"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto :goto_37

    :cond_47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/bangcle/everisk/shell/RiskStubShell;->K:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_73

    const-string v0, "RiskStub.CheckEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdkVersion: {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/bangcle/everisk/shell/RiskStubShell;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} < {14"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto :goto_37

    :cond_73
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    invoke-static {v0}, Lcom/bangcle/everisk/utils_l/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string v0, "RiskStub.CheckEnv"

    const-string v1, "StoragePath error, is \"\""

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto :goto_37

    :cond_8a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-static {v0}, Lcom/bangcle/everisk/utils_l/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    const-string v0, "RiskStub.CheckEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abi error, is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_37

    :cond_d1
    const-string v0, "RiskStubShell.CheckEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StorageRoot: <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">, sdkVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bangcle/everisk/shell/RiskStubShell;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", abi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bangcle/everisk/utils_l/f;

    const-string v1, "start"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x384

    const-wide/16 v6, 0xe10

    invoke-direct/range {v0 .. v7}, Lcom/bangcle/everisk/utils_l/f;-><init>(Ljava/lang/String;JJJ)V

    :goto_10c
    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    invoke-static {v1}, Lcom/bangcle/everisk/shell/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_118

    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/f;->G()V

    goto :goto_10c

    :cond_118
    move v0, v8

    goto/16 :goto_37

    :cond_11b
    const/4 v10, 0x5

    const-string v0, "RiskStub.Final"

    const-string v1, "start by version: 24"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/bangcle/everisk/shell/LibProc;->r()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RiskStub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_264

    new-instance v1, Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    const-string v3, "ver_a"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    new-instance v1, Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    const-string v3, "ver_b"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v1}, Lcom/bangcle/everisk/shell/a;->h()Z

    move-result v1

    if-nez v1, :cond_258

    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v1}, Lcom/bangcle/everisk/shell/a;->h()Z

    move-result v1

    if-nez v1, :cond_258

    invoke-static {v0}, Lcom/bangcle/everisk/utils_l/e;->c(Ljava/lang/String;)Z

    :goto_17b
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    const-string v1, "inside_ver"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1af

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->B:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inside_ver"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/bangcle/everisk/shell/RiskStubShell;->y()Lcom/bangcle/everisk/shell/a;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0}, Lcom/bangcle/everisk/shell/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1a8

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v8}, Lcom/bangcle/everisk/shell/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_278

    :cond_1a8
    const-string v0, "RiskStubShell.InitFirstTime"

    const-string v1, "ERROR: ReadConfigFromRes Failed!"

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1af
    :goto_1af
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v9}, Lcom/bangcle/everisk/shell/a;->b(Z)Z

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v9}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;ZZ)Z

    sget-boolean v0, Lcom/bangcle/everisk/shell/LibProc;->z:Z

    if-nez v0, :cond_1d0

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    iget-boolean v0, v0, Lcom/bangcle/everisk/shell/a;->w:Z

    if-eqz v0, :cond_1cb

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    iget-boolean v0, v0, Lcom/bangcle/everisk/shell/a;->v:Z

    if-nez v0, :cond_1d0

    :cond_1cb
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0}, Lcom/bangcle/everisk/shell/a;->l()V

    :cond_1d0
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v9}, Lcom/bangcle/everisk/shell/a;->b(Z)Z

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sget-object v1, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v9}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;ZZ)Z

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    iget-boolean v0, v0, Lcom/bangcle/everisk/shell/a;->w:Z

    if-eqz v0, :cond_1e8

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    iget-boolean v0, v0, Lcom/bangcle/everisk/shell/a;->v:Z

    if-nez v0, :cond_1ed

    :cond_1e8
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0}, Lcom/bangcle/everisk/shell/a;->l()V

    :cond_1ed
    new-instance v0, Lcom/bangcle/everisk/utils_l/f;

    const-string v1, "loader"

    const-wide/16 v2, 0x708

    move-wide v4, v12

    move-wide v6, v12

    invoke-direct/range {v0 .. v7}, Lcom/bangcle/everisk/utils_l/f;-><init>(Ljava/lang/String;JJJ)V

    move v1, v10

    :goto_1f9
    if-lez v1, :cond_516

    :try_start_1fb
    invoke-static {}, Lcom/bangcle/everisk/shell/a;->c()Z

    move-result v2

    if-eqz v2, :cond_254

    invoke-static {}, Lcom/bangcle/everisk/shell/Conf;->b()Z

    move-result v2

    if-eqz v2, :cond_287

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    move v2, v8

    :goto_20c
    if-eqz v2, :cond_254

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    const-string v3, "VerA"

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    const-string v3, "VerB"

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Lcom/bangcle/everisk/shell/a;)Z

    move-result v2

    if-eqz v2, :cond_31d

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    :goto_22e
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->b(Lcom/bangcle/everisk/shell/a;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->g()Z

    move-result v2

    if-eqz v2, :cond_35c

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    :cond_241
    :goto_241
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    if-eqz v2, :cond_24d

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->g()Z

    move-result v2

    if-nez v2, :cond_4fb

    :cond_24d
    const-string v2, "RiskStubShell.Loader"

    const-string v3, "no available plugin to start, wait"

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_254} :catch_331

    :cond_254
    :goto_254
    invoke-virtual {v0}, Lcom/bangcle/everisk/utils_l/f;->G()V

    goto :goto_1f9

    :cond_258
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v8}, Lcom/bangcle/everisk/shell/a;->a(Z)Z

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v9}, Lcom/bangcle/everisk/shell/a;->a(Z)Z

    goto/16 :goto_17b

    :cond_264
    new-instance v0, Lcom/bangcle/everisk/shell/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    new-instance v0, Lcom/bangcle/everisk/shell/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    goto/16 :goto_17b

    :cond_278
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-static {v0}, Lcom/bangcle/everisk/shell/RiskStubShell;->c(Lcom/bangcle/everisk/shell/a;)Z

    move-result v0

    if-eqz v0, :cond_1af

    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v0, v8}, Lcom/bangcle/everisk/shell/a;->c(Z)V

    goto/16 :goto_1af

    :cond_287
    :try_start_287
    invoke-static {}, Lcom/bangcle/everisk/shell/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/plugin/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/bangcle/everisk/shell/Conf;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/version"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RiskStubShell.UpdateLib"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VersionURL: <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v2, v4}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f6

    const-string v2, "RiskStubShell.UpdateLib"

    const-string v4, "try getRemoteVersions by default"

    invoke-static {v2, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/plugin/version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f6

    const-string v2, "RiskStubShell.UpdateLib"

    const-string v3, "ERROR: getRemoteVersions Failed!"

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_20c

    :cond_2f6
    const-string v3, "RiskStubShell.UpdateLib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VersionsString from network: <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bangcle/everisk/shell/a;

    invoke-direct {v3, v2}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v3}, Lcom/bangcle/everisk/shell/a;->h()Z

    move-result v2

    goto/16 :goto_20c

    :cond_31d
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Lcom/bangcle/everisk/shell/a;)Z

    move-result v2

    if-eqz v2, :cond_339

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;
    :try_end_32f
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_32f} :catch_331

    goto/16 :goto_22e

    :catch_331
    move-exception v2

    invoke-static {v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_254

    :cond_339
    :try_start_339
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->m()Z

    move-result v2

    if-eqz v2, :cond_351

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->N:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Z)Z

    :goto_34b
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    goto/16 :goto_22e

    :cond_351
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->O:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Z)Z

    goto :goto_34b

    :cond_35c
    sget-boolean v2, Lcom/bangcle/everisk/shell/LibProc;->A:Z

    if-eqz v2, :cond_4ee

    invoke-static {}, Lcom/bangcle/everisk/shell/Conf;->b()Z

    move-result v2

    if-nez v2, :cond_4ee

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->n()Z

    move-result v2

    if-eqz v2, :cond_4ee

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    const-string v3, "before update"

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->q()V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    const-string v3, "ToUpdateVerion"

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/bangcle/everisk/shell/a;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/plugin/c/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/bangcle/everisk/shell/a;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/RiskStub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/plugin/java/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/bangcle/everisk/shell/a;->n:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/RiskStub"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RiskStubShell.UpdateLib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CLibUrl: <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "RiskStubShell.UpdateLib"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "JLibUrl: <"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/bangcle/everisk/shell/a;->v:Z

    if-eqz v5, :cond_433

    const-string v4, "RiskStub.Final"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "has Update C Lib to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/bangcle/everisk/shell/a;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_411
    iget-boolean v4, v2, Lcom/bangcle/everisk/shell/a;->w:Z

    if-eqz v4, :cond_474

    const-string v3, "RiskStub.Final"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "has Update J Lib to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/bangcle/everisk/shell/a;->n:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42b
    move v2, v8

    :goto_42c
    if-nez v2, :cond_4b2

    const/4 v2, 0x0

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    goto/16 :goto_241

    :cond_433
    const-string v5, "RiskStub.Final"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Begin update C Lib to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/bangcle/everisk/shell/a;->m:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->k()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    if-nez v4, :cond_411

    const-string v3, "RiskStubShell.UpdateLib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR: Download <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "> Failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto :goto_42c

    :cond_474
    const-string v4, "RiskStub.Final"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update Java Lib "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/bangcle/everisk/shell/a;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Lcom/bangcle/everisk/utils_l/e;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_42b

    const-string v2, "RiskStubShell.UpdateLib"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR: Download <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> Failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    goto/16 :goto_42c

    :cond_4b2
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->b(Z)Z

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->L:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/bangcle/everisk/shell/a;->a(Ljava/lang/String;ZZ)Z

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    iget-boolean v2, v2, Lcom/bangcle/everisk/shell/a;->w:Z

    if-eqz v2, :cond_4d5

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    iget-boolean v2, v2, Lcom/bangcle/everisk/shell/a;->v:Z

    if-eqz v2, :cond_4d5

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->p()Z

    move-result v2

    if-nez v2, :cond_4dc

    :cond_4d5
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->l()V

    goto/16 :goto_241

    :cond_4dc
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->c(Z)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/bangcle/everisk/shell/a;->c(Z)V

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->Q:Lcom/bangcle/everisk/shell/a;

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    goto/16 :goto_241

    :cond_4ee
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->R:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->o()Z

    move-result v2

    if-nez v2, :cond_241

    const/4 v2, 0x0

    sput-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    goto/16 :goto_241

    :cond_4fb
    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    sget-object v3, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v3}, Lcom/bangcle/everisk/shell/a;->i()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v4}, Lcom/bangcle/everisk/shell/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/bangcle/everisk/shell/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_516

    sget-object v2, Lcom/bangcle/everisk/shell/RiskStubShell;->P:Lcom/bangcle/everisk/shell/a;

    invoke-virtual {v2}, Lcom/bangcle/everisk/shell/a;->l()V
    :try_end_514
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_514} :catch_331

    goto/16 :goto_254

    :cond_516
    invoke-static {}, Lcom/bangcle/everisk/shell/b;->w()V

    goto/16 :goto_39
.end method

.method private static y()Lcom/bangcle/everisk/shell/a;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "RiskStub.version"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Lcom/bangcle/everisk/shell/a;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v4}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_20} :catch_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_2d

    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_23} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_33

    :goto_23
    if-nez v0, :cond_2c

    new-instance v0, Lcom/bangcle/everisk/shell/a;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bangcle/everisk/shell/a;-><init>(Ljava/lang/String;)V

    :cond_2c
    return-object v0

    :catch_2d
    move-exception v0

    :goto_2e
    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_23

    :catch_33
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2e

    :catch_38
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :catch_3b
    move-exception v1

    goto :goto_23
.end method


# virtual methods
.method public InitIAPSDK(Landroid/content/Context;)V
    .registers 4

    const-string v0, "RiskStubShell.SDKFee"

    const-string v1, "RiskStubShell called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/bangcle/everisk/shell/Conf;->a()V

    return-void
.end method

.method public InitIAPSDKFee(Landroid/content/Context;)V
    .registers 4

    const-string v0, "RiskStubShell.SDKFee"

    const-string v1, "InitIAPSDKFee  called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/bangcle/everisk/shell/RiskStubShell;->load_in(Landroid/content/Context;)V

    return-void
.end method

.method public SetKeyIAPSDK(Ljava/lang/String;)V
    .registers 5

    const-string v0, "RiskStubShell.SDKFee"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " SetKeyIAPSDK called, key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_19
    const-string v0, "type"

    const-string v2, "user_data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_2d

    :goto_25
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/b;->RiskSDK(Ljava/lang/String;)Z

    return-void

    :catch_2d
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_25
.end method

.method public load_in(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-class v1, Lcom/bangcle/everisk/shell/RiskStubShell;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_21

    :try_start_3
    sget-boolean v0, Lcom/bangcle/everisk/shell/RiskStubShell;->I:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bangcle/everisk/shell/RiskStubShell;->I:Z

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bangcle/everisk/shell/RiskStubShell;->J:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bangcle/everisk/shell/c;

    invoke-direct {v1, p0}, Lcom/bangcle/everisk/shell/c;-><init>(Lcom/bangcle/everisk/shell/RiskStubShell;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_8

    :catch_21
    move-exception v0

    goto :goto_8

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_21
.end method
