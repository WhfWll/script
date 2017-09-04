.class public Lcn/dbox/ui/common/e;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dbox/ui/common/e$b;,
        Lcn/dbox/ui/common/e$d;,
        Lcn/dbox/ui/common/e$c;,
        Lcn/dbox/ui/common/e$a;
    }
.end annotation


# static fields
.field private static f:Lcn/dbox/core/h/d;


# instance fields
.field a:Lcn/dbox/ui/common/e$b;

.field b:Lcn/dbox/ui/common/e$a;

.field c:Lcn/dbox/ui/common/e$c;

.field d:Lcn/dbox/ui/common/e$d;

.field e:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:Lcn/dbox/core/bean/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lcn/dbox/core/h/d;

    const-class v1, Lcn/dbox/ui/common/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/dbox/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/dbox/core/bean/d;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v0, p0, Lcn/dbox/ui/common/e;->g:Z

    .line 69
    iput-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    .line 77
    iput-object p1, p0, Lcn/dbox/ui/common/e;->e:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcn/dbox/ui/common/e;->i:Lcn/dbox/core/bean/d;

    .line 80
    invoke-direct {p0}, Lcn/dbox/ui/common/e;->b()V

    .line 81
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 83
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 85
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 88
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 89
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 91
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 92
    new-instance v0, Lcn/dbox/ui/common/e$1;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/e$1;-><init>(Lcn/dbox/ui/common/e;)V

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 159
    new-instance v0, Lcn/dbox/ui/common/e$2;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/e$2;-><init>(Lcn/dbox/ui/common/e;)V

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 173
    new-instance v0, Lcn/dbox/ui/common/e$3;

    invoke-direct {v0, p0}, Lcn/dbox/ui/common/e$3;-><init>(Lcn/dbox/ui/common/e;)V

    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 184
    return-void
.end method

.method static synthetic a()Lcn/dbox/core/h/d;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    return-object v0
.end method

.method static synthetic a(Lcn/dbox/ui/common/e;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcn/dbox/ui/common/e;->g:Z

    return v0
.end method

.method static synthetic a(Lcn/dbox/ui/common/e;Z)Z
    .registers 2

    .prologue
    .line 20
    iput-boolean p1, p0, Lcn/dbox/ui/common/e;->g:Z

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setHorizontalScrollBarEnabled(Z)V

    .line 188
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setHorizontalScrollbarOverlay(Z)V

    .line 189
    invoke-virtual {p0, v0}, Lcn/dbox/ui/common/e;->setVerticalScrollBarEnabled(Z)V

    .line 190
    invoke-virtual {p0, v2}, Lcn/dbox/ui/common/e;->setVerticalScrollbarOverlay(Z)V

    .line 191
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 192
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 193
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 194
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 196
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 197
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 199
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 202
    return-void
.end method

.method static synthetic b(Lcn/dbox/ui/common/e;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/dbox/ui/common/e;->d()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    if-eqz v0, :cond_17

    .line 206
    iget-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    if-nez v0, :cond_17

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    .line 208
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    invoke-interface {v0, p0}, Lcn/dbox/ui/common/e$c;->a(Lcn/dbox/ui/common/e;)V

    .line 212
    :cond_17
    return-void
.end method

.method static synthetic c(Lcn/dbox/ui/common/e;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/dbox/ui/common/e;->c()V

    return-void
.end method

.method static synthetic d(Lcn/dbox/ui/common/e;)Lcn/dbox/core/bean/d;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/dbox/ui/common/e;->i:Lcn/dbox/core/bean/d;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    if-eqz v0, :cond_17

    .line 216
    iget-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    if-nez v0, :cond_17

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    .line 218
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    invoke-interface {v0, p0}, Lcn/dbox/ui/common/e$c;->b(Lcn/dbox/ui/common/e;)V

    .line 222
    :cond_17
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    if-eqz v0, :cond_17

    .line 226
    iget-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    if-nez v0, :cond_17

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/dbox/ui/common/e;->h:Z

    .line 228
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    invoke-interface {v0, p0}, Lcn/dbox/ui/common/e$c;->c(Lcn/dbox/ui/common/e;)V

    .line 232
    :cond_17
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    .prologue
    .line 259
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public a(Lcn/dbox/ui/common/e$a;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lcn/dbox/ui/common/e;->b:Lcn/dbox/ui/common/e$a;

    .line 272
    return-void
.end method

.method public a(Lcn/dbox/ui/common/e$b;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcn/dbox/ui/common/e;->a:Lcn/dbox/ui/common/e$b;

    .line 301
    return-void
.end method

.method public a(Lcn/dbox/ui/common/e$c;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcn/dbox/ui/common/e;->c:Lcn/dbox/ui/common/e$c;

    .line 285
    return-void
.end method

.method protected a(Lcn/dbox/ui/common/e$d;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, Lcn/dbox/ui/common/e;->d:Lcn/dbox/ui/common/e$d;

    .line 289
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 240
    monitor-enter p0

    if-eqz p1, :cond_35

    .line 241
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    const-string v2, "EBaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcn/dbox/ui/common/e;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/dbox/ui/common/e$4;

    invoke-direct {v2, p0, v1}, Lcn/dbox/ui/common/e$4;-><init>(Lcn/dbox/ui/common/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 251
    :cond_35
    monitor-exit p0

    return-void

    .line 240
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 268
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 293
    sget-object v0, Lcn/dbox/ui/common/e;->f:Lcn/dbox/core/h/d;

    const-string v2, "loadData() is called with data = %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/dbox/core/h/d;->a(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    .line 295
    invoke-virtual/range {v0 .. v5}, Lcn/dbox/ui/common/e;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method
