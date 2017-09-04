.class public Lcom/tl/uic/webkit/UICWebView;
.super Landroid/webkit/WebView;
.source "UICWebView.java"


# instance fields
.field private connectionInitFromSession:J

.field private endLoad:Ljava/util/Date;

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private initTime:Ljava/util/Date;

.field private responseTime:J

.field private startLoad:Ljava/util/Date;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/webkit/UICWebView;

    const v1, 0x432

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 55
    return-void
.end method

.method private native init()V
.end method


# virtual methods
.method public final native getEndLoad()Ljava/util/Date;
.end method

.method public final native getHttpResponse()Lorg/apache/http/HttpResponse;
.end method

.method public final native getInitTime()Ljava/util/Date;
.end method

.method public final native getResponseTime()J
.end method

.method public final native getStartLoad()Ljava/util/Date;
.end method

.method public native loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native loadUrl(Ljava/lang/String;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public final native loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final native logConnection()V
.end method

.method public final native setEndLoad(Ljava/util/Date;)V
.end method

.method public final native setHttpResponse(Lorg/apache/http/HttpResponse;)V
.end method

.method public final native setInitTime(Ljava/util/Date;)V
.end method

.method public final native setResponseTime(J)V
.end method

.method public final native setStartLoad(Ljava/util/Date;)V
.end method
