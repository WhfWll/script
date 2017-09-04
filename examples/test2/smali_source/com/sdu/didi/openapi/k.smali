.class Lcom/sdu/didi/openapi/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/sdu/didi/openapi/Methods;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/Methods;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/openapi/k;->b:Lcom/sdu/didi/openapi/Methods;

    iput-object p2, p0, Lcom/sdu/didi/openapi/k;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sdu/didi/openapi/k;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sdu/didi/openapi/k;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
