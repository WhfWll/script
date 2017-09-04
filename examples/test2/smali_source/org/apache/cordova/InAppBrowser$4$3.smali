.class Lorg/apache/cordova/InAppBrowser$4$3;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/InAppBrowser$4;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser$4;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$4$3;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$4$3;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    # invokes: Lorg/apache/cordova/InAppBrowser;->goForward()V
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$400(Lorg/apache/cordova/InAppBrowser;)V

    .line 413
    return-void
.end method
