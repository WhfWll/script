.class public Lcom/tl/uic/util/PostTask;
.super Landroid/os/AsyncTask;
.source "PostTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/PostTask;

    const v1, 0x427

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private native logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method private native sendMessageFormat()Ljava/lang/Boolean;
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 25
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 28
    .local v1, "result":Ljava/lang/Boolean;
    :try_start_5
    invoke-direct {p0}, Lcom/tl/uic/util/PostTask;->sendMessageFormat()Ljava/lang/Boolean;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/tl/uic/TLFCache;->closePostTask()Ljava/lang/Boolean;

    .line 30
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v1

    .line 34
    :goto_11
    return-object v1

    .line 31
    :catch_12
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/PostTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final native flush()Ljava/lang/Boolean;
.end method
