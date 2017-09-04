.class public abstract Lcn/domob/android/ads/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a$c;,
        Lcn/domob/android/ads/a$b;,
        Lcn/domob/android/ads/a$a;
    }
.end annotation


# static fields
.field public static final c:I = -0x1

.field private static d:Lcn/domob/android/i/f; = null

.field private static final o:I = 0x14


# instance fields
.field public a:Lcn/domob/android/ads/a$a;

.field public b:Lcn/domob/android/ads/a$b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private p:Ljava/lang/String;

.field private q:Lcn/domob/android/f/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->k:Z

    .line 46
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->l:Z

    .line 47
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->m:Z

    .line 48
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    .line 56
    invoke-direct {p0}, Lcn/domob/android/ads/a;->c()V

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 59
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 60
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 66
    const/16 v0, 0x14

    iput v0, p0, Lcn/domob/android/ads/a;->j:I

    .line 68
    if-eq p2, v3, :cond_46

    .line 69
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "Init WebView with custom background color."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/a;->setBackgroundColor(I)V

    .line 73
    :cond_46
    new-instance v0, Lcn/domob/android/ads/a$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$1;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 110
    new-instance v0, Lcn/domob/android/ads/a$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$2;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->l:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->m:Z

    return p1
.end method

.method static synthetic b()Lcn/domob/android/i/f;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 383
    if-nez v1, :cond_2d

    .line 384
    const-string v0, ""
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 421
    :cond_23
    :goto_23
    return-object v0

    .line 385
    :catch_24
    move-exception v0

    .line 386
    sget-object v1, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 387
    const-string v0, ""

    goto :goto_23

    .line 391
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4f} :catch_7a

    move-result-object v0

    .line 396
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    :try_start_55
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_5a} :catch_83

    .line 404
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 406
    :goto_5e
    :try_start_5e
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_87

    .line 407
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_69} :catch_6a
    .catchall {:try_start_5e .. :try_end_69} :catchall_94

    goto :goto_5e

    .line 409
    :catch_6a
    move-exception v0

    .line 410
    :try_start_6b
    const-string v0, ""
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_94

    .line 413
    if-eqz v1, :cond_23

    if-eqz v3, :cond_23

    .line 414
    :try_start_71
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 415
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_78

    goto :goto_23

    .line 417
    :catch_78
    move-exception v1

    goto :goto_23

    .line 392
    :catch_7a
    move-exception v0

    .line 393
    sget-object v1, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    .line 394
    const-string v0, ""

    goto :goto_23

    .line 400
    :catch_83
    move-exception v0

    .line 401
    const-string v0, ""

    goto :goto_23

    .line 413
    :cond_87
    if-eqz v1, :cond_23

    if-eqz v3, :cond_23

    .line 414
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 415
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_92

    goto :goto_23

    .line 417
    :catch_92
    move-exception v1

    goto :goto_23

    .line 412
    :catchall_94
    move-exception v0

    .line 413
    if-eqz v1, :cond_9f

    if-eqz v3, :cond_9f

    .line 414
    :try_start_99
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 415
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_a0

    .line 418
    :cond_9f
    :goto_9f
    throw v0

    .line 417
    :catch_a0
    move-exception v1

    goto :goto_9f
.end method

.method static synthetic b(Lcn/domob/android/ads/a;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/domob/android/ads/a;->e()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/a;Z)Z
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->l:Z

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setHorizontalScrollBarEnabled(Z)V

    .line 123
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setHorizontalScrollbarOverlay(Z)V

    .line 124
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setVerticalScrollBarEnabled(Z)V

    .line 125
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setVerticalScrollbarOverlay(Z)V

    .line 126
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 127
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/a;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/domob/android/ads/a;->d()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/a;)I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcn/domob/android/ads/a;->j:I

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_17

    .line 167
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    if-nez v0, :cond_17

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    .line 169
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->a(Lcn/domob/android/ads/a;)V

    .line 173
    :cond_17
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_17

    .line 177
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    if-nez v0, :cond_17

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    .line 179
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->b(Lcn/domob/android/ads/a;)V

    .line 183
    :cond_17
    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/a;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->m:Z

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_17

    .line 187
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    if-nez v0, :cond_17

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->n:Z

    .line 189
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->c(Lcn/domob/android/ads/a;)V

    .line 193
    :cond_17
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/a;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/domob/android/ads/a;->f()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/ads/a;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->k:Z

    return v0
.end method

.method static synthetic h(Lcn/domob/android/ads/a;)Lcn/domob/android/f/g;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/a;->q:Lcn/domob/android/f/g;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/ads/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/a;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 359
    if-eqz p2, :cond_72

    array-length v0, p2

    if-eqz v0, :cond_72

    .line 360
    array-length v1, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_72

    aget-object v2, p2, v0

    .line 361
    sget-object v3, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert js file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcn/domob/android/ads/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    sget-object v3, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JS file path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 370
    :cond_72
    return-object p1
.end method

.method public a()V
    .registers 7

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/android/ads/a;->e:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/domob/android/ads/a;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/domob/android/ads/a;->g:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/domob/android/ads/a;->h:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcn/domob/android/ads/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 344
    :cond_14
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 345
    iget-object v1, p0, Lcn/domob/android/ads/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/a;->f:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/a;->h:Ljava/lang/String;

    iget-object v5, p0, Lcn/domob/android/ads/a;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_2a
    return-void
.end method

.method public a(I)V
    .registers 5

    .prologue
    .line 219
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

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

    .line 220
    iput p1, p0, Lcn/domob/android/ads/a;->j:I

    .line 221
    return-void
.end method

.method public a(Lcn/domob/android/ads/a$a;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    .line 239
    return-void
.end method

.method public a(Lcn/domob/android/ads/a$b;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    .line 248
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 201
    monitor-enter p0

    if-eqz p1, :cond_35

    .line 202
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

    .line 203
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v2, "BaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/a$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/a$3;-><init>(Lcn/domob/android/ads/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_37

    .line 211
    :cond_35
    monitor-exit p0

    return-void

    .line 201
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v3, "Load WebView with url = %s and data = %s."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcn/domob/android/ads/a$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$c;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/a$c;->start()V

    .line 262
    invoke-static {p1}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v1

    .line 263
    :goto_23
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    move v3, v1

    .line 265
    :goto_2a
    if-eqz v0, :cond_36

    if-nez v3, :cond_36

    .line 266
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 275
    :goto_31
    return-void

    :cond_32
    move v0, v2

    .line 262
    goto :goto_23

    :cond_34
    move v3, v2

    .line 263
    goto :goto_2a

    .line 267
    :cond_36
    if-nez v0, :cond_42

    if-eqz v3, :cond_42

    .line 268
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p2, v0, v1}, Lcn/domob/android/ads/a;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 269
    :cond_42
    if-eqz v0, :cond_64

    if-eqz v3, :cond_64

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 272
    :cond_64
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v3, "Error happened when loading WebView with URL = %s and data = %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 229
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->k:Z

    .line 230
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 319
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p2}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 328
    iput-object p1, p0, Lcn/domob/android/ads/a;->e:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcn/domob/android/ads/a;->f:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lcn/domob/android/ads/a;->g:Ljava/lang/String;

    .line 331
    iput-object p4, p0, Lcn/domob/android/ads/a;->h:Ljava/lang/String;

    .line 332
    iput-object p5, p0, Lcn/domob/android/ads/a;->i:Ljava/lang/String;

    .line 333
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_18
    return-void

    .line 335
    :cond_19
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "Data is null or empty while calling \'loadDataWithBaseURL\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcn/domob/android/ads/a;->p:Ljava/lang/String;

    .line 285
    :try_start_2
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 286
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 314
    :goto_d
    return-void

    .line 288
    :cond_e
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/i/f;

    const-string v1, "loadUrl() is called with url = %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->a(Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcn/domob/android/ads/a$4;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$4;-><init>(Lcn/domob/android/ads/a;)V

    iput-object v0, p0, Lcn/domob/android/ads/a;->q:Lcn/domob/android/f/g;

    .line 309
    invoke-static {}, Lcn/domob/android/f/c;->a()Lcn/domob/android/f/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/domob/android/ads/a;->q:Lcn/domob/android/f/g;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcn/domob/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/f/f;Lcn/domob/android/f/g;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_d

    .line 312
    :catch_35
    move-exception v0

    goto :goto_d
.end method
