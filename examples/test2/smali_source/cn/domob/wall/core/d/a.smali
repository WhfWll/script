.class Lcn/domob/wall/core/d/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/d/a$d;,
        Lcn/domob/wall/core/d/a$c;,
        Lcn/domob/wall/core/d/a$b;,
        Lcn/domob/wall/core/d/a$a;
    }
.end annotation


# static fields
.field private static f:Lcn/domob/wall/core/h/d;


# instance fields
.field a:Lcn/domob/wall/core/d/a$b;

.field b:Lcn/domob/wall/core/d/a$a;

.field c:Lcn/domob/wall/core/d/a$c;

.field d:Lcn/domob/wall/core/d/a$d;

.field e:Landroid/content/Context;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/wall/core/h/d;

    const-class v1, Lcn/domob/wall/core/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/h/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Lcn/domob/wall/core/d/a;->g:Z

    .line 45
    iput-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    .line 52
    iput-object p1, p0, Lcn/domob/wall/core/d/a;->e:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcn/domob/wall/core/d/a;->b()V

    .line 55
    invoke-virtual {p0}, Lcn/domob/wall/core/d/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcn/domob/wall/core/d/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 58
    new-instance v0, Lcn/domob/wall/core/d/a$1;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/d/a$1;-><init>(Lcn/domob/wall/core/d/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    new-instance v0, Lcn/domob/wall/core/d/a$2;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/d/a$2;-><init>(Lcn/domob/wall/core/d/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/a;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 130
    return-void
.end method

.method static synthetic a()Lcn/domob/wall/core/h/d;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/d/a;)Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcn/domob/wall/core/d/a;->g:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/wall/core/d/a;Z)Z
    .registers 2

    .prologue
    .line 14
    iput-boolean p1, p0, Lcn/domob/wall/core/d/a;->g:Z

    return p1
.end method

.method private b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p0, v1}, Lcn/domob/wall/core/d/a;->setHorizontalScrollBarEnabled(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lcn/domob/wall/core/d/a;->setHorizontalScrollbarOverlay(Z)V

    .line 135
    invoke-virtual {p0, v1}, Lcn/domob/wall/core/d/a;->setVerticalScrollBarEnabled(Z)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/wall/core/d/a;->setVerticalScrollbarOverlay(Z)V

    .line 137
    invoke-virtual {p0}, Lcn/domob/wall/core/d/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 138
    return-void
.end method

.method static synthetic b(Lcn/domob/wall/core/d/a;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/wall/core/d/a;->d()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    if-eqz v0, :cond_17

    .line 142
    iget-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    if-nez v0, :cond_17

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    .line 144
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    invoke-interface {v0, p0}, Lcn/domob/wall/core/d/a$c;->a(Lcn/domob/wall/core/d/a;)V

    .line 148
    :cond_17
    return-void
.end method

.method static synthetic c(Lcn/domob/wall/core/d/a;)V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/domob/wall/core/d/a;->c()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    if-eqz v0, :cond_17

    .line 152
    iget-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    if-nez v0, :cond_17

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    .line 154
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    invoke-interface {v0, p0}, Lcn/domob/wall/core/d/a$c;->b(Lcn/domob/wall/core/d/a;)V

    .line 158
    :cond_17
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    if-eqz v0, :cond_17

    .line 162
    iget-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    if-nez v0, :cond_17

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/d/a;->h:Z

    .line 164
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    invoke-interface {v0, p0}, Lcn/domob/wall/core/d/a$c;->c(Lcn/domob/wall/core/d/a;)V

    .line 168
    :cond_17
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    .prologue
    .line 195
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected a(Lcn/domob/wall/core/d/a$a;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcn/domob/wall/core/d/a;->b:Lcn/domob/wall/core/d/a$a;

    .line 208
    return-void
.end method

.method protected a(Lcn/domob/wall/core/d/a$b;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcn/domob/wall/core/d/a;->a:Lcn/domob/wall/core/d/a$b;

    .line 212
    return-void
.end method

.method protected a(Lcn/domob/wall/core/d/a$c;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcn/domob/wall/core/d/a;->c:Lcn/domob/wall/core/d/a$c;

    .line 221
    return-void
.end method

.method protected a(Lcn/domob/wall/core/d/a$d;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcn/domob/wall/core/d/a;->d:Lcn/domob/wall/core/d/a$d;

    .line 225
    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 176
    monitor-enter p0

    if-eqz p1, :cond_35

    .line 177
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

    .line 178
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    const-string v2, "EBaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcn/domob/wall/core/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/wall/core/d/a$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/wall/core/d/a$3;-><init>(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 187
    :cond_35
    monitor-exit p0

    return-void

    .line 176
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 204
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 229
    sget-object v0, Lcn/domob/wall/core/d/a;->f:Lcn/domob/wall/core/h/d;

    const-string v2, "loadData() is called with data = %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/d/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method
