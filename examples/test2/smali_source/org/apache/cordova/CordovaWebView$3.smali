.class Lorg/apache/cordova/CordovaWebView$3;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaWebView;

.field final synthetic val$currentLoadUrlTimeout:I

.field final synthetic val$loadError:Ljava/lang/Runnable;

.field final synthetic val$loadUrlTimeoutValue:I

.field final synthetic val$me:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaWebView;ILorg/apache/cordova/CordovaWebView;ILjava/lang/Runnable;)V
    .registers 6

    .prologue
    .line 428
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView$3;->this$0:Lorg/apache/cordova/CordovaWebView;

    iput p2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadUrlTimeoutValue:I

    iput-object p3, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    iput p4, p0, Lorg/apache/cordova/CordovaWebView$3;->val$currentLoadUrlTimeout:I

    iput-object p5, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadError:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 431
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_23

    .line 432
    :try_start_1
    iget v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadUrlTimeoutValue:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 433
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_20

    .line 439
    :goto_8
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    iget v1, v1, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    iget v2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$currentLoadUrlTimeout:I

    if-ne v1, v2, :cond_1f

    .line 440
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView$3;->val$me:Lorg/apache/cordova/CordovaWebView;

    # getter for: Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;
    invoke-static {v1}, Lorg/apache/cordova/CordovaWebView;->access$100(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView$3;->val$loadError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    :cond_1f
    return-void

    .line 433
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    .line 434
    :catch_23
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8
.end method
