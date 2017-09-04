.class public final Lcom/bangcle/everisk/shell/b;
.super Ljava/lang/Object;


# static fields
.field private static F:Ldalvik/system/DexClassLoader;

.field private static G:Z

.field private static H:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bangcle/everisk/shell/b;->G:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bangcle/everisk/shell/b;->H:Ljava/util/LinkedList;

    return-void
.end method

.method public static RiskSDK(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    const-string v0, "RiskStub.Final"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive RiskSDK="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/bangcle/everisk/shell/b;->G:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    if-eqz v1, :cond_26

    invoke-static {v0}, Lcom/bangcle/everisk/shell/b;->a(Lorg/json/JSONObject;)Z

    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    sget-object v0, Lcom/bangcle/everisk/shell/b;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_24

    :catch_2c
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "RiskStub"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "RiskStubShell.CallRiskStubInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dexOutputDir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, p1, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    const-string v2, "com.bangcle.everisk.infs.LibProc"

    invoke-virtual {v3, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "load_out"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Lorg/json/JSONObject;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "RiskStubShell.CallRiskStubInit"

    const-string v5, "getMethod: LibProc<load_out> OK!"

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "agent_id"

    sget v6, Lcom/bangcle/everisk/shell/Conf;->f:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "libpath"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "url_root"

    const-string v6, "RiskStub.loader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HostMgr: SrvHost = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/bangcle/everisk/shell/Conf;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "RiskStubShell.CallRiskStubInit"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "begin Call LibProc<load_out>:\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RiskStubShell.CallRiskStubInit"

    const-string v3, "Call LibProc<load_out> OK"

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_b2} :catch_b3

    :goto_b2
    return v0

    :catch_b3
    move-exception v0

    const-string v2, "RiskStubShell.CallRiskStubInit"

    const-string v3, "Call LibProc<load_out> ERROR, RESET!"

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_b2
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    const-string v3, "com.bangcle.everisk.infs.LibProc"

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "risk_sdk"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/json/JSONObject;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "RiskStub.CallRiskSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Call com.bangcle.everisk.infs.LibProc.risk_sdk() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    :goto_3e
    return v0

    :catch_3f
    move-exception v0

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_3e
.end method

.method private static t()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()V
    .registers 4

    sget-object v0, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    const-string v1, "com.bangcle.everisk.stub.Action"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Ins"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AfterMsg"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "RiskStub.afterMsg"

    const-string v3, "Call com.bangcle.everisk.stub.Action.AfterMsg() : "

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    goto :goto_4

    :catch_35
    move-exception v0

    invoke-static {}, Lcom/bangcle/everisk/shell/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public static v()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    sget-object v0, Lcom/bangcle/everisk/shell/b;->F:Ldalvik/system/DexClassLoader;

    const-string v2, "com.bangcle.everisk.stub.Action"

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Ins"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "GetMsg"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "RiskStub.getMsg"

    const-string v4, "Call com.bangcle.everisk.stub.Action.GetMsg() : "

    invoke-static {v3, v4}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_6

    :catch_3a
    move-exception v0

    invoke-static {}, Lcom/bangcle/everisk/shell/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_6
.end method

.method public static w()V
    .registers 5

    :goto_0
    sget-object v0, Lcom/bangcle/everisk/shell/b;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/bangcle/everisk/shell/b;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/b;->a(Lorg/json/JSONObject;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_0

    :catch_19
    move-exception v1

    const-string v2, "RiskStubShell.UpdateAndLoad"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new JSONObject ERROR, String x: <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bangcle/everisk/shell/LibProc;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bangcle/everisk/shell/b;->G:Z

    return-void
.end method
