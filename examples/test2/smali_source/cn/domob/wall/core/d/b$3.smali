.class Lcn/domob/wall/core/d/b$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/b;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/b;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcn/domob/wall/core/d/b$3;->a:Lcn/domob/wall/core/d/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 60
    iget-object v0, p0, Lcn/domob/wall/core/d/b$3;->a:Lcn/domob/wall/core/d/b;

    iget-object v0, v0, Lcn/domob/wall/core/d/b;->c:Lcn/domob/wall/core/d/c;

    invoke-virtual {v0, p2}, Lcn/domob/wall/core/d/c;->a(I)V

    .line 61
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 62
    return-void
.end method
