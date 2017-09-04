.class public Lcom/tl/uic/util/LoadUrlTask;
.super Landroid/os/AsyncTask;
.source "LoadUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlToLoad:Ljava/lang/String;

.field private final webView:Lcom/tl/uic/webkit/UICWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/LoadUrlTask;

    const v1, 0x425

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/webkit/UICWebView;Ljava/util/Map;)V
    .registers 5
    .param p1, "webView"    # Lcom/tl/uic/webkit/UICWebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tl/uic/webkit/UICWebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/util/LoadUrlTask;->extraHeaders:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tl/uic/webkit/UICWebView;->setInitTime(Ljava/util/Date;)V

    .line 46
    return-void
.end method

.method private native doRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/LoadUrlTask;->doInBackground([Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 3
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->urlToLoad:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->urlToLoad:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tl/uic/util/LoadUrlTask;->doRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/LoadUrlTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected final native onPostExecute(Lorg/apache/http/HttpResponse;)V
.end method
