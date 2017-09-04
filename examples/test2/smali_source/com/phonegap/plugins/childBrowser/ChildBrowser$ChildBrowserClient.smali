.class public Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;
.super Landroid/webkit/WebViewClient;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildBrowserClient"
.end annotation


# instance fields
.field edittext:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;

    const v1, 0x3d9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V
    .registers 3
    .param p2, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 987
    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;->edittext:Landroid/widget/EditText;

    .line 988
    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    .registers 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    return-object v0
.end method


# virtual methods
.method public native onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public native onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public native onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public native shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
