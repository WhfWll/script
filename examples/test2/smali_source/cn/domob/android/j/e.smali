.class public Lcn/domob/android/j/e;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/j/e$c;,
        Lcn/domob/android/j/e$b;,
        Lcn/domob/android/j/e$a;
    }
.end annotation


# static fields
.field private static c:Lcn/domob/android/i/f; = null

.field private static final i:I = 0x14


# instance fields
.field public a:Lcn/domob/android/j/e$a;

.field public b:Lcn/domob/android/j/e$b;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/j/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v2, p0, Lcn/domob/android/j/e;->e:Z

    .line 34
    iput-boolean v0, p0, Lcn/domob/android/j/e;->f:Z

    .line 35
    iput-boolean v0, p0, Lcn/domob/android/j/e;->g:Z

    .line 36
    iput-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    .line 43
    invoke-direct {p0}, Lcn/domob/android/j/e;->b()V

    .line 44
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 46
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 47
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 53
    const/16 v0, 0x14

    iput v0, p0, Lcn/domob/android/j/e;->d:I

    .line 55
    new-instance v0, Lcn/domob/android/j/e$1;

    invoke-direct {v0, p0}, Lcn/domob/android/j/e$1;-><init>(Lcn/domob/android/j/e;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/j/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    new-instance v0, Lcn/domob/android/j/e$2;

    invoke-direct {v0, p0}, Lcn/domob/android/j/e$2;-><init>(Lcn/domob/android/j/e;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/j/e;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 101
    return-void
.end method

.method static synthetic a()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/j/e;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcn/domob/android/j/e;->f:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/j/e;Z)Z
    .registers 2

    .prologue
    .line 14
    iput-boolean p1, p0, Lcn/domob/android/j/e;->g:Z

    return p1
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v1}, Lcn/domob/android/j/e;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcn/domob/android/j/e;->setHorizontalScrollbarOverlay(Z)V

    .line 106
    invoke-virtual {p0, v1}, Lcn/domob/android/j/e;->setVerticalScrollBarEnabled(Z)V

    .line 107
    invoke-virtual {p0, v1}, Lcn/domob/android/j/e;->setVerticalScrollbarOverlay(Z)V

    .line 108
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 109
    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/e;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/android/j/e;->d()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/j/e;Z)Z
    .registers 2

    .prologue
    .line 14
    iput-boolean p1, p0, Lcn/domob/android/j/e;->f:Z

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    if-eqz v0, :cond_17

    .line 154
    iget-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    if-nez v0, :cond_17

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    .line 156
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    invoke-interface {v0, p0}, Lcn/domob/android/j/e$b;->a(Lcn/domob/android/j/e;)V

    .line 160
    :cond_17
    return-void
.end method

.method static synthetic c(Lcn/domob/android/j/e;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/android/j/e;->c()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/j/e;)I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcn/domob/android/j/e;->d:I

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    if-eqz v0, :cond_17

    .line 164
    iget-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    if-nez v0, :cond_17

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    .line 166
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    invoke-interface {v0, p0}, Lcn/domob/android/j/e$b;->b(Lcn/domob/android/j/e;)V

    .line 170
    :cond_17
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    if-eqz v0, :cond_17

    .line 174
    iget-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    if-nez v0, :cond_17

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/j/e;->h:Z

    .line 176
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    invoke-interface {v0, p0}, Lcn/domob/android/j/e$b;->c(Lcn/domob/android/j/e;)V

    .line 180
    :cond_17
    return-void
.end method

.method static synthetic e(Lcn/domob/android/j/e;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcn/domob/android/j/e;->g:Z

    return v0
.end method

.method static synthetic f(Lcn/domob/android/j/e;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/android/j/e;->e()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/j/e;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcn/domob/android/j/e;->e:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 206
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 207
    iput p1, p0, Lcn/domob/android/j/e;->d:I

    .line 208
    return-void
.end method

.method public a(Lcn/domob/android/j/e$a;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcn/domob/android/j/e;->a:Lcn/domob/android/j/e$a;

    .line 226
    return-void
.end method

.method public a(Lcn/domob/android/j/e$b;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcn/domob/android/j/e;->b:Lcn/domob/android/j/e$b;

    .line 235
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 188
    monitor-enter p0

    if-eqz p1, :cond_35

    .line 189
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

    .line 190
    sget-object v0, Lcn/domob/android/j/e;->c:Lcn/domob/android/i/f;

    const-string v2, "DomobWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcn/domob/android/j/e;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/j/e$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/j/e$3;-><init>(Lcn/domob/android/j/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 198
    :cond_35
    monitor-exit p0

    return-void

    .line 188
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 216
    iput-boolean p1, p0, Lcn/domob/android/j/e;->e:Z

    .line 217
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    return-void
.end method
