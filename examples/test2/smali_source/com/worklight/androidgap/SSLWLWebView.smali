.class public Lcom/worklight/androidgap/SSLWLWebView;
.super Lorg/apache/cordova/CordovaWebView;
.source "SSLWLWebView.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/SSLWLWebView;

    const v1, 0x438

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lcom/worklight/androidgap/SSLWLWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 34
    .local v1, "settings":Landroid/webkit/WebSettings;
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 36
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "databasePath":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 40
    :cond_29
    return-void
.end method


# virtual methods
.method public native onKeyDown(ILandroid/view/KeyEvent;)Z
.end method
