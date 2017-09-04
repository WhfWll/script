.class public Lcom/sdu/didi/uuid/SigLib;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "didi_secure"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native generateAddress(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native generateParam(Landroid/content/Context;[I)Ljava/lang/String;
.end method

.method private static native generateParam1(Landroid/content/Context;[I)Ljava/lang/String;
.end method

.method private static native generateParam2(Landroid/content/Context;[I)Ljava/lang/String;
.end method

.method private static native generateSig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static getAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/sdu/didi/uuid/SigLib;->generateAddress(Landroid/content/Context;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method static getParam(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # [I

    .prologue
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/sdu/didi/uuid/SigLib;->generateParam(Landroid/content/Context;[I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method static getParam1(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # [I

    .prologue
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/sdu/didi/uuid/SigLib;->generateParam1(Landroid/content/Context;[I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method static getParam2(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "data"    # [I

    .prologue
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/sdu/didi/uuid/SigLib;->generateParam2(Landroid/content/Context;[I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method static getSig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x800

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_e
    :try_start_e
    invoke-static {p0, p1}, Lcom/sdu/didi/uuid/SigLib;->generateSig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_11} :catch_1f

    move-result-object v0

    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_1e
    return-object v1

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move-object v0, v1

    goto :goto_12
.end method
