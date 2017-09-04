.class final Lcom/alipay/sdk/app/H5PayActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/H5PayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/H5PayActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/alipay/sdk/app/H5PayActivity$a;

    const v1, 0x71

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/H5PayActivity$a;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/H5PayActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/H5PayActivity$a;-><init>(Lcom/alipay/sdk/app/H5PayActivity;)V

    return-void
.end method


# virtual methods
.method public final native onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public final native onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public final native onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public final native onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public final native onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public final native shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
