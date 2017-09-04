.class Lcom/sdu/didi/openapi/h;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/h;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    new-instance v0, Lcom/sdu/didi/openapi/ss/b;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/sdu/didi/openapi/ss/b;->a(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const-string v0, "prompt ok"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/h;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/h;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0, p3, v1}, Lcom/sdu/didi/openapi/ss/g;->a(Ljava/lang/String;Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    const/4 v0, 0x1

    return v0
.end method
