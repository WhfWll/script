.class Lcom/sdu/didi/openapi/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/sdu/didi/openapi/f;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    iput-object p2, p0, Lcom/sdu/didi/openapi/f;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/f;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sdu/didi/openapi/f;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sdu/didi/openapi/f;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/f;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/sdu/didi/openapi/f;->b:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->finish()V

    goto :goto_23
.end method
