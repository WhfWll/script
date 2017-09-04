.class Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;
.super Ljava/lang/Thread;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger$LogUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogUploadThread"
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;

    const v1, 0x4a9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "_uri"    # Ljava/lang/String;
    .param p2, "_file"    # Ljava/lang/String;

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1064
    iput-object p1, p0, Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;->uri:Ljava/lang/String;

    .line 1065
    iput-object p2, p0, Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;->file:Ljava/lang/String;

    .line 1066
    return-void
.end method

.method private native processResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public native run()V
.end method
