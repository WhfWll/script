.class Lcom/worklight/common/Logger$LogUploadTask;
.super Landroid/os/AsyncTask;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogUploadTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1028
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1058
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/common/Logger$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/worklight/common/Logger$1;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/worklight/common/Logger$LogUploadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1028
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/common/Logger$LogUploadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1051
    new-instance v0, Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v2, p1, v3

    invoke-direct {v0, v1, v2}, Lcom/worklight/common/Logger$LogUploadTask$LogUploadThread;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 1054
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1055
    const/4 v1, 0x0

    return-object v1
.end method
