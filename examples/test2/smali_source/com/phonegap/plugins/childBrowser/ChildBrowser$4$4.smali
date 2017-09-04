.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;
.super Landroid/webkit/WebChromeClient;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;

    const v1, 0x3cd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    .line 455
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method
