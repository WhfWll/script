.class public Lcn/domob/ui/main/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DrwUi"

.field public static final PT_LEVEL:I = -0x1

.field public static final PT_LOG_TAG:Ljava/lang/String; = "DrwUiPT"

.field private static final mIsLoggable:Z

.field public static newtime:J

.field public static oldtime:J


# instance fields
.field private mClassSimpleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 7
    sput-wide v0, Lcn/domob/ui/main/Logger;->oldtime:J

    .line 8
    sput-wide v0, Lcn/domob/ui/main/Logger;->newtime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "classSimpleName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/domob/ui/main/Logger;->mClassSimpleName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 52
    return-void
.end method


# virtual methods
.method public debugLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcn/domob/ui/main/Logger;->debugLog(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public debugLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public errorLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 95
    return-void
.end method

.method public infoLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lcn/domob/ui/main/Logger;->infoLog(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public infoLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    return-void
.end method

.method public ptLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public verboseLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcn/domob/ui/main/Logger;->verboseLog(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public verboseLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public warnLog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lcn/domob/ui/main/Logger;->warnLog(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public warnLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcn/domob/ui/main/Logger;->log(Ljava/lang/String;I)V

    .line 91
    return-void
.end method
