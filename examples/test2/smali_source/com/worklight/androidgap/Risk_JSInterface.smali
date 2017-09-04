.class public Lcom/worklight/androidgap/Risk_JSInterface;
.super Ljava/lang/Object;
.source "Risk_JSInterface.java"


# static fields
.field static cur_code:Ljava/lang/String;

.field static def_code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/Risk_JSInterface;

    const v1, 0x435

    .line 11
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-string v0, "javascript:void(0)"

    sput-object v0, Lcom/worklight/androidgap/Risk_JSInterface;->def_code:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/androidgap/Risk_JSInterface;->cur_code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native OnFinish(Landroid/webkit/WebView;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end method

.method public static native addJS(Landroid/webkit/WebView;)V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation
.end method


# virtual methods
.method public native setRiskUserInfo(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method
