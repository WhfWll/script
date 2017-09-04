.class public Lcom/tl/uic/webkit/UICWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "UICWebChromeClient.java"


# static fields
.field private static final PROGRESS_100_PERCENT:I = 0x64

.field private static final PROGRESS_CONVERTER_TO_100:I = 0x3e8


# instance fields
.field private final uicActivity:Lcom/tl/uic/app/UICActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/webkit/UICWebChromeClient;

    const v1, 0x431

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/app/UICActivity;)V
    .registers 2
    .param p1, "uicActivity"    # Lcom/tl/uic/app/UICActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/webkit/UICWebChromeClient;)Lcom/tl/uic/app/UICActivity;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    return-object v0
.end method


# virtual methods
.method public final native onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public final native onProgressChanged(Landroid/webkit/WebView;I)V
.end method
