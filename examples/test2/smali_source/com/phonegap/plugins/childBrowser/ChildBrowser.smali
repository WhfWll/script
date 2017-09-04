.class public Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.super Lorg/apache/cordova/api/Plugin;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$AlipayResult;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$GeoClient;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;
    }
.end annotation


# static fields
.field private static final ALIPAY_ORDER_FLAG_1:Ljava/lang/String; = "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

.field private static final ALIPAY_ORDER_FLAG_2:Ljava/lang/String; = "https://mclient.alipay.com/home/exterfaceAssign.htm?"

.field private static final ALIPAY_ORDER_FLAG_3:Ljava/lang/String; = "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

.field private static final ALIPAY_ORDER_FLAG_4:Ljava/lang/String; = "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

.field private static final ALIPAY_RETURN_URL:Ljava/lang/String; = "&return_url="

.field private static CLOSE_EVENT:I = 0x0

.field private static DIALOGOK_EVENT:I = 0x0

.field private static LOCATION_CHANGED_EVENT:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "ChildBrowser"

.field private static ORDERCOMPLETE_EVENT:I

.field private static ORDERLIST_EVENT:I

.field private static event_flag:I


# instance fields
.field private aDialog:Landroid/app/AlertDialog;

.field private adsView:Landroid/widget/RelativeLayout;

.field private appId:Ljava/lang/String;

.field private browserCallbackId:Ljava/lang/String;

.field private counterMsg:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private interfaceName:Ljava/lang/String;

.field private interfaceVersion:Ljava/lang/String;

.field private mAlipayResult:Ljava/lang/String;

.field private merSignMsg:Ljava/lang/String;

.field private spinnerDialog:Landroid/app/ProgressDialog;

.field private textView:Landroid/widget/TextView;

.field private tranData:Ljava/lang/String;

.field private transType:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    .line 60
    const v1, 0x3dd

    .line 65
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 66
    const/4 v1, 0x0

    .line 0
    sput v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    .line 68
    sput v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    .line 92
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERLIST_EVENT:I

    const/4 v0, 0x3

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERCOMPLETE_EVENT:I

    const/4 v0, 0x4

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->DIALOGOK_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->counterMsg:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mAlipayResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mAlipayResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$11(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$12()I
    .registers 1

    .prologue
    .line 65
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    return v0
.end method

.method static synthetic access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$14(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$16(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(I)V
    .registers 1

    .prologue
    .line 65
    sput p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    return-void
.end method

.method static synthetic access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .registers 1

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$24(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->spinnerDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERCOMPLETE_EVENT:I

    return v0
.end method

.method static synthetic access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lorg/json/JSONObject;Z)V
    .registers 3

    .prologue
    .line 953
    invoke-direct {p0, p1, p2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$5()I
    .registers 1

    .prologue
    .line 66
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERLIST_EVENT:I

    return v0
.end method

.method static synthetic access$6()I
    .registers 1

    .prologue
    .line 60
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    return v0
.end method

.method static synthetic access$7(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->DIALOGOK_EVENT:I

    return v0
.end method

.method static synthetic access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method private native closeDialog()V
.end method

.method private native sendUpdate(Lorg/json/JSONObject;Z)V
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
.end method

.method public native openDialog(Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public native openExternal(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public native replaceAdUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public native sendTicketInfo(Ljava/lang/String;)V
.end method

.method public native showAdsWebPage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public native showAndroidDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public native showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native showErrorDialog()V
.end method

.method public native showTaoBaoView(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public native showTpcWebView(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public native showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method public native updateDialog(Ljava/lang/String;)Ljava/lang/String;
.end method
