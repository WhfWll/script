.class public Lcom/secneo/apkwrapper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static CPU_ABI:Ljava/lang/String;

.field public static PKGNAME:Ljava/lang/String;

.field public static PPATH:Ljava/lang/String;

.field public static cl:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/secneo/apkwrapper/Helper;->PPATH:Ljava/lang/String;

    .line 25
    const-string v0, "com.MobileTicket"

    sput-object v0, Lcom/secneo/apkwrapper/Helper;->PKGNAME:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native attach(Landroid/app/Application;Landroid/content/Context;)V
.end method

.method public static getCPUABI()Ljava/lang/String;
    .registers 7

    .prologue
    .line 31
    sget-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 33
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 35
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .local v2, "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "abi":Ljava/lang/String;
    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 41
    const-string v5, "x86"

    sput-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_34

    .line 49
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :goto_2c
    sget-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;

    .line 51
    :goto_2e
    return-object v5

    .line 43
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2f
    :try_start_2f
    const-string v5, "arm"

    sput-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_34

    goto :goto_2c

    .line 46
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :catch_34
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "arm"

    sput-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;

    goto :goto_2c

    .line 51
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "process":Ljava/lang/Process;
    :cond_3a
    sget-object v5, Lcom/secneo/apkwrapper/Helper;->CPU_ABI:Ljava/lang/String;

    goto :goto_2e
.end method

.method public static getRelease()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_9

    .line 59
    const-string v0, "2.2"

    .line 61
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "4.0"

    goto :goto_8
.end method

.method public static installApplicationEx(Ljava/lang/String;)V
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/secneo/apkwrapper/Helper;

    invoke-static {p0, v0}, Lcom/secneo/apkwrapper/Helper;->installApplicationEx(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public static native installApplicationEx(Ljava/lang/String;Ljava/lang/Class;)V
.end method
