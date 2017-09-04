.class Lcom/tl/uic/webkit/UICWebChromeClient$1;
.super Ljava/lang/Thread;
.source "UICWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/webkit/UICWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/webkit/UICWebChromeClient$1;

    const v1, 0x430

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/webkit/UICWebChromeClient;Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

    iput-object p2, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/webkit/UICWebChromeClient$1;)Lcom/tl/uic/webkit/UICWebChromeClient;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

    return-object v0
.end method


# virtual methods
.method public native run()V
.end method
