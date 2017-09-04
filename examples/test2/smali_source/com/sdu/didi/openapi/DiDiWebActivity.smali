.class public Lcom/sdu/didi/openapi/DiDiWebActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/DiDiWebActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/sdu/didi/openapi/ss/e;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/sdu/didi/openapi/ss/g;

.field private d:Lcom/sdu/didi/openapi/gK/b;

.field private e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/sdu/didi/openapi/DiDiWebActivity;Lcom/sdu/didi/openapi/gK/b;)Lcom/sdu/didi/openapi/gK/b;
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->d:Lcom/sdu/didi/openapi/gK/b;

    return-object p1
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    if-nez v0, :cond_22

    new-instance v0, Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-static {}, Lcom/sdu/didi/openapi/utils/Utils;->b()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1b
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->e:Lcom/sdu/didi/openapi/DiDiWebActivity$a;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b
.end method

.method static synthetic b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/g;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/g;

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    const-string v1, "didi_webview"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_23

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_23

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    const-string v1, "didi_toolbar_back"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    const-string v1, "didi_webview_title"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    const-string v1, "didi_toolbar_close"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/e;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    new-instance v2, Lcom/sdu/didi/openapi/f;

    invoke-direct {v2, p0, v0}, Lcom/sdu/didi/openapi/f;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sdu/didi/openapi/g;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/g;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sdu/didi/openapi/ss/g;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/sdu/didi/openapi/ss/g;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->c:Lcom/sdu/didi/openapi/ss/g;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/h;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/h;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/i;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/i;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/sdu/didi/openapi/j;

    invoke-direct {v1, p0}, Lcom/sdu/didi/openapi/j;-><init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic c(Lcom/sdu/didi/openapi/DiDiWebActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/gK/b;
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->d:Lcom/sdu/didi/openapi/gK/b;

    return-object v0
.end method

.method public static registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "secrect"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Lcom/sdu/didi/openapi/DIOpenSDK;->registerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V
    .registers 1
    .param p0, "type"    # Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/sdu/didi/openapi/DIOpenSDK;->setMapSdkType(Lcom/sdu/didi/openapi/DIOpenSDK$MapLocationType;)V

    return-void
.end method

.method public static showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK;->showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sdu/didi/openapi/ss/e;

    invoke-direct {v0, p0}, Lcom/sdu/didi/openapi/ss/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->a:Lcom/sdu/didi/openapi/ss/e;

    const-string v1, "activity_di_di_web"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/ss/e;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_15

    :cond_26
    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_3c
    return-void
.end method

.method protected onPause()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_7

    array-length v4, p3

    move v3, v2

    move v0, v2

    :goto_f
    if-ge v3, v4, :cond_19

    aget v0, p3, v3

    const/4 v5, -0x1

    if-ne v0, v5, :cond_28

    move v0, v1

    :goto_17
    if-eqz v0, :cond_2a

    :cond_19
    if-eqz v0, :cond_2d

    const-string v0, "\u8bf7\u7ed9\u4e88\u7a0b\u5e8f\u5fc5\u8981\u7684\u6743\u9650"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->finish()V

    goto :goto_7

    :cond_28
    move v0, v2

    goto :goto_17

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2d
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/sdu/didi/openapi/DiDiWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .registers 6

    const/4 v4, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Lcom/sdu/didi/openapi/DiDiWebActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v4, :cond_25

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    if-ne v2, v4, :cond_2c

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-ne v3, v4, :cond_33

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x271a

    invoke-virtual {p0, v0, v1}, Lcom/sdu/didi/openapi/DiDiWebActivity;->requestPermissions([Ljava/lang/String;I)V

    :goto_4a
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_4e
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_4a

    :cond_52
    invoke-direct {p0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->a()V

    goto :goto_4a
.end method
