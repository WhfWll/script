.class public final Lcom/tl/uic/util/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/ReflectionUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/ReflectionUtil;

    const v1, 0x428

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static native getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static native getInstance()Lcom/tl/uic/util/ReflectionUtil;
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p0, "fromObject"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    .line 70
    :goto_d
    return-object v1

    .line 67
    :catch_e
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static varargs getStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p0, "fromClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move-object v2, v1

    .line 95
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .local v2, "method":Ljava/lang/reflect/Method;
    :goto_8
    return-object v2

    .line 90
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_17

    :goto_15
    move-object v2, v1

    .line 95
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_8

    .line 92
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_17
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
