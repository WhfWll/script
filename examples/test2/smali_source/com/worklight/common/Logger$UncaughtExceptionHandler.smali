.class Lcom/worklight/common/Logger$UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtExceptionHandler"
.end annotation


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$UncaughtExceptionHandler;

    const v1, 0x4aa

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/common/Logger$UncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/common/Logger$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/worklight/common/Logger$1;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/worklight/common/Logger$UncaughtExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final native uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method
