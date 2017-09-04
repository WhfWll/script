.class public Lcom/tl/uic/util/ScreenShotTask;
.super Landroid/os/AsyncTask;
.source "ScreenShotTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Landroid/view/View;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "arg"    # [Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    .local v1, "result":Ljava/lang/Boolean;
    const/4 v2, 0x0

    :try_start_6
    aget-object v2, p1, v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tl/uic/Tealeaf;->takeScreenShot(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_18

    move-result-object v1

    .line 23
    :goto_17
    return-object v1

    .line 20
    :catch_18
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/ScreenShotTask;->doInBackground([Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
