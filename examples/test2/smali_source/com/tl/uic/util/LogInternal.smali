.class public final Lcom/tl/uic/util/LogInternal;
.super Ljava/lang/Object;
.source "LogInternal.java"


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x3

.field public static final VERBOSE:I = 0x5

.field public static final WARNING:I = 0x4

.field private static _isDEBUG:Z

.field private static volatile _myInstance:Lcom/tl/uic/util/LogInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/LogInternal;

    const v1, 0x426

    .line 16
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tl/uic/util/LogInternal;->_isDEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static native getExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getExceptionString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getInstance()Lcom/tl/uic/util/LogInternal;
.end method

.method public static native getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public static native getTLLibErrorExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getTLLibErrorExceptionString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native isDEBUG()Z
.end method

.method public static native log(Ljava/lang/String;)V
.end method

.method public static native log(Ljava/lang/String;I)V
.end method

.method public static native logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public static native logException(Ljava/lang/Throwable;)V
.end method

.method public static native setIsDEBUG(Z)V
.end method
