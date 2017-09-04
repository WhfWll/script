.class Lcom/tl/uic/webkit/UICWebChromeClient$1$1;
.super Ljava/lang/Object;
.source "UICWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/webkit/UICWebChromeClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tl/uic/webkit/UICWebChromeClient$1;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/webkit/UICWebChromeClient$1$1;

    const v1, 0x42f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/tl/uic/webkit/UICWebChromeClient$1;Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1$1;->this$1:Lcom/tl/uic/webkit/UICWebChromeClient$1;

    iput-object p2, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1$1;->val$view:Landroid/webkit/WebView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
