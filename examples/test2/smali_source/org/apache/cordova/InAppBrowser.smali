.class public Lorg/apache/cordova/InAppBrowser;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;,
        Lorg/apache/cordova/InAppBrowser$InAppChromeClient;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SYSTEM:Ljava/lang/String; = "_system"


# instance fields
.field private MAX_QUOTA:J

.field private buttonLabel:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private inAppWebView:Landroid/webkit/WebView;

.field private showLocationBar:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 77
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 84
    const-string v0, "Done"

    iput-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    .line 588
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/InAppBrowser;)J
    .registers 3
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/apache/cordova/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .registers 4
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    .registers 3
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/InAppBrowser;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/InAppBrowser;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/cordova/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/apache/cordova/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/cordova/InAppBrowser;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/InAppBrowser;)V
    .registers 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/cordova/InAppBrowser;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method private closeDialog()V
    .registers 5

    .prologue
    .line 252
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/InAppBrowser$3;

    invoke-direct {v3, p0}, Lorg/apache/cordova/InAppBrowser$3;-><init>(Lorg/apache/cordova/InAppBrowser;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1e} :catch_1f

    .line 269
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_1e
    return-void

    .line 266
    :catch_1f
    move-exception v0

    .line 267
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private getShowLocationBar()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 276
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 278
    :cond_d
    return-void
.end method

.method private goForward()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 285
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 287
    :cond_d
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 296
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 299
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 300
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    :goto_40
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 305
    return-void

    .line 302
    :cond_46
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_40
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 205
    const/4 v2, 0x0

    .line 222
    :cond_9
    return-object v2

    .line 207
    :cond_a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_16
    :goto_16
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 213
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "key":Ljava/lang/String;
    const-string v5, "closebuttoncaption"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 215
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    goto :goto_16

    .line 217
    :cond_40
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 218
    .local v4, "value":Ljava/lang/Boolean;
    :goto_4e
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 217
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_52
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4e
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .registers 4
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 526
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    .line 527
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .registers 6
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 535
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 536
    .local v0, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 537
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 538
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .registers 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v16, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 96
    .local v16, "status":Lorg/apache/cordova/api/PluginResult$Status;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 99
    :try_start_8
    const-string v2, "open"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 100
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "url":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, "t":Ljava/lang/String;
    if-eqz v17, :cond_36

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "null"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 103
    :cond_36
    const-string v17, "_self"

    .line 105
    :cond_38
    move-object/from16 v4, v17

    .line 106
    .local v4, "target":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/cordova/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 108
    .local v6, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v2, "InAppBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v18

    new-instance v2, Lorg/apache/cordova/InAppBrowser$1;

    move-object/from16 v3, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/cordova/InAppBrowser$1;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/api/CallbackContext;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v17    # "t":Ljava/lang/String;
    :goto_75
    new-instance v13, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v13, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 189
    .local v13, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v13}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 194
    .end local v13    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_87
    const/4 v2, 0x1

    return v2

    .line 157
    :cond_89
    const-string v2, "close"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 158
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    .line 160
    new-instance v13, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v13, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 161
    .restart local v13    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v13}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_a8} :catch_a9

    goto :goto_75

    .line 191
    .end local v13    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :catch_a9
    move-exception v8

    .line 192
    .local v8, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_87

    .line 164
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_b9
    :try_start_b9
    const-string v2, "injectScriptCode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 167
    .local v15, "source":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .local v10, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, "jsonRepr":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "jsonSourceString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function(d){var c=d.createElement(\'script\');c.type=\'text/javascript\';c.innerText="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";d.getElementsByTagName(\'head\')[0].appendChild(c);})(document)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "scriptEnclosure":Ljava/lang/String;
    move-object v9, v14

    .line 175
    .local v9, "finalScriptEnclosure":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/InAppBrowser$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v9, v1}, Lorg/apache/cordova/InAppBrowser$2;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_75

    .line 186
    .end local v9    # "finalScriptEnclosure":Ljava/lang/String;
    .end local v10    # "jsonEsc":Lorg/json/JSONArray;
    .end local v11    # "jsonRepr":Ljava/lang/String;
    .end local v12    # "jsonSourceString":Ljava/lang/String;
    .end local v14    # "scriptEnclosure":Ljava/lang/String;
    .end local v15    # "source":Ljava/lang/String;
    :cond_111
    sget-object v16, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;
    :try_end_113
    .catch Lorg/json/JSONException; {:try_start_b9 .. :try_end_113} :catch_a9

    goto/16 :goto_75
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_8} :catch_1b

    .line 239
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 241
    const-string v3, ""
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_1a} :catch_47

    .line 244
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1a
    return-object v3

    .line 242
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1b
    move-exception v0

    .line 243
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1c
    const-string v3, "InAppBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppBrowser: Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    .line 242
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_47
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1c
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 326
    if-eqz p2, :cond_15

    .line 327
    const-string v3, "location"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 328
    .local v1, "show":Ljava/lang/Boolean;
    if-eqz v1, :cond_15

    .line 329
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 333
    .end local v1    # "show":Ljava/lang/Boolean;
    :cond_15
    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 336
    .local v2, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v0, Lorg/apache/cordova/InAppBrowser$4;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/cordova/InAppBrowser$4;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 516
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 517
    const-string v3, ""

    return-object v3
.end method
