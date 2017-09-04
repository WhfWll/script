.class Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;
.super Landroid/os/AsyncTask;
.source "WLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLDroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareClientAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

    const v1, 0x43f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .registers 2

    .prologue
    .line 712
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/WLDroidGap;Lcom/worklight/androidgap/WLDroidGap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/worklight/androidgap/WLDroidGap;
    .param p2, "x1"    # Lcom/worklight/androidgap/WLDroidGap$1;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;-><init>(Lcom/worklight/androidgap/WLDroidGap;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    # invokes: Lcom/worklight/androidgap/WLDroidGap;->doPrepareAssetsWork()V
    invoke-static {v0}, Lcom/worklight/androidgap/WLDroidGap;->access$500(Lcom/worklight/androidgap/WLDroidGap;)V

    .line 717
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 712
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected native onPostExecute(Landroid/os/Bundle;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 712
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
