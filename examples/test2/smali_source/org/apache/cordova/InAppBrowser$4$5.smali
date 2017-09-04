.class Lorg/apache/cordova/InAppBrowser$4$5;
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
    .line 447
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$4$5;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$4$5;->this$1:Lorg/apache/cordova/InAppBrowser$4;

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    # invokes: Lorg/apache/cordova/InAppBrowser;->closeDialog()V
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$800(Lorg/apache/cordova/InAppBrowser;)V

    .line 450
    return-void
.end method
