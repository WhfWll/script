.class public Lcom/tl/uic/util/TLUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "TLUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/TLUncaughtExceptionHandler;

    const v1, 0x42a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/util/TLUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    return-void
.end method


# virtual methods
.method public final native setDefaultUncaughtExceptionHandler()V
.end method

.method public final native uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method
