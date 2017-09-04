.class Lcom/worklight/common/Logger$FileLogger$ClientLogFormatter;
.super Ljava/util/logging/Formatter;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger$FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientLogFormatter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$FileLogger$ClientLogFormatter;

    const v1, 0x4a7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/common/Logger$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/worklight/common/Logger$1;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/worklight/common/Logger$FileLogger$ClientLogFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public native format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
.end method
