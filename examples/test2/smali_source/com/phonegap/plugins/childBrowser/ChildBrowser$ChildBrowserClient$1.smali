.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient$1;

    const v1, 0x3d8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient$1;->val$view:Landroid/webkit/WebView;

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
