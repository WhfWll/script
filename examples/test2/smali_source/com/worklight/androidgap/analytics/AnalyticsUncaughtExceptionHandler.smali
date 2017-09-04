.class public Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "AnalyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final wlConfig:Lcom/worklight/common/WLConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    const v1, 0x442

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/common/WLConfig;)V
    .registers 3
    .param p1, "config"    # Lcom/worklight/common/WLConfig;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-object p1, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 33
    return-void
.end method


# virtual methods
.method public native setDefaultUncaughtExceptionHandler()V
.end method

.method public native uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end method
