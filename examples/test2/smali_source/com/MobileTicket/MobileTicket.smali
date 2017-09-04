.class public Lcom/MobileTicket/MobileTicket;
.super Lcom/worklight/androidgap/SSLWLDroidGap;
.source "MobileTicket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;
    }
.end annotation


# static fields
.field public static final HONEYCOMB:I = 0xb

.field public static final LASTUPDATETIME:Ljava/lang/String; = "lastUpdateTime"

.field private static final PAGE_FINISH_MA:I = 0x1

.field private static final PAGE_START_MA:I = 0x0

.field public static final PI:Ljava/lang/String; = "packageinfo"

.field private static final PLACEMENTID:Ljava/lang/String; = "16TLm30oApUDwNUIALmsZy2s"

.field private static final PUBLISHERID:Ljava/lang/String; = "56OJz4SIuNDdkwD4yB"

.field private static final PUBLISHER_ID_AD:Ljava/lang/String; = "56OJz4SIuNDdkwD4yB"

.field private static final SPLASH_FINISH_MA:I = 0x3

.field private static final SPLASH_START_MA:I = 0x2

.field private static final SplashPPID_AD:Ljava/lang/String; = "16TLm30oApUDwNU0ucjiVWli"

.field public static mDBoxManager:Lcn/dbox/ui/DBoxManager; = null

.field public static mDService:Lcn/domob/wall/core/DService; = null

.field public static final placementID_DBox:Ljava/lang/String; = "16TLm30oApUDwNU062W4ftVs"

.field public static final publisherID_DBOX:Ljava/lang/String; = "56OJz4SIuNDdkwD4yB"


# instance fields
.field isFirstFinish:Z

.field isFirstStart:Z

.field private isNeedJumpDetailMA:Z

.field private isPageFirstFinishMA:Z

.field private isPageFirstStartMA:Z

.field isSplashFinish:Z

.field private isSplashFinishMA:Z

.field private mContextMA:Landroid/content/Context;

.field private mWebViewHandlerMA:Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;

.field private mWebViewListenerMA:Lcom/bontai/mobiads/ads/splash/WebViewListenerMA;

.field private placementNo:Ljava/lang/String;

.field private splashAdMA:Lcom/bontai/mobiads/ads/splash/SplashAd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/MobileTicket;

    const v1, 0xc

    .line 282
    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-string v0, "checkcode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Lcom/worklight/androidgap/SSLWLDroidGap;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/MobileTicket/MobileTicket;->isSplashFinishMA:Z

    .line 43
    iput-boolean v1, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstFinishMA:Z

    .line 45
    iput-boolean v1, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstStartMA:Z

    .line 47
    iput-boolean v2, p0, Lcom/MobileTicket/MobileTicket;->isNeedJumpDetailMA:Z

    .line 67
    const-string v0, "0007"

    iput-object v0, p0, Lcom/MobileTicket/MobileTicket;->placementNo:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/MobileTicket/MobileTicket;->isFirstStart:Z

    .line 76
    iput-boolean v1, p0, Lcom/MobileTicket/MobileTicket;->isFirstFinish:Z

    .line 77
    iput-boolean v2, p0, Lcom/MobileTicket/MobileTicket;->isSplashFinish:Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/MobileTicket/MobileTicket;)V
    .registers 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/MobileTicket/MobileTicket;->initSplashAd()V

    return-void
.end method

.method static synthetic access$1(Lcom/MobileTicket/MobileTicket;)Lcom/bontai/mobiads/ads/splash/SplashAd;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/MobileTicket/MobileTicket;->splashAdMA:Lcom/bontai/mobiads/ads/splash/SplashAd;

    return-object v0
.end method

.method static synthetic access$10(Lcom/MobileTicket/MobileTicket;Z)V
    .registers 2

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstStartMA:Z

    return-void
.end method

.method static synthetic access$11(Lcom/MobileTicket/MobileTicket;)Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/MobileTicket/MobileTicket;->mWebViewHandlerMA:Lcom/MobileTicket/MobileTicket$MainWebViewHandlerMA;

    return-object v0
.end method

.method static synthetic access$12(Lcom/MobileTicket/MobileTicket;Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstFinishMA:Z

    return-void
.end method

.method static synthetic access$13(Lcom/MobileTicket/MobileTicket;Z)V
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/MobileTicket/MobileTicket;->isNeedJumpDetailMA:Z

    return-void
.end method

.method static synthetic access$2(Lcom/MobileTicket/MobileTicket;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/MobileTicket/MobileTicket;->mContextMA:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/MobileTicket/MobileTicket;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/MobileTicket/MobileTicket;->isNeedJumpDetailMA:Z

    return v0
.end method

.method static synthetic access$4(Lcom/MobileTicket/MobileTicket;Lcom/bontai/mobiads/ads/entity/AdDomain;)V
    .registers 2

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/MobileTicket/MobileTicket;->jumpDetail(Lcom/bontai/mobiads/ads/entity/AdDomain;)V

    return-void
.end method

.method static synthetic access$5(Lcom/MobileTicket/MobileTicket;)Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/MobileTicket/MobileTicket;->isSplashFinishMA:Z

    return v0
.end method

.method static synthetic access$6(Lcom/MobileTicket/MobileTicket;)V
    .registers 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/MobileTicket/MobileTicket;->closeSplashView()V

    return-void
.end method

.method static synthetic access$7(Lcom/MobileTicket/MobileTicket;)Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstFinishMA:Z

    return v0
.end method

.method static synthetic access$8(Lcom/MobileTicket/MobileTicket;Z)V
    .registers 2

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/MobileTicket/MobileTicket;->isSplashFinishMA:Z

    return-void
.end method

.method static synthetic access$9(Lcom/MobileTicket/MobileTicket;)Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/MobileTicket/MobileTicket;->isPageFirstStartMA:Z

    return v0
.end method

.method private native closeSplashView()V
.end method

.method private native initSplashAd()V
.end method

.method private native jumpDetail(Lcom/bontai/mobiads/ads/entity/AdDomain;)V
.end method

.method private native setWebViewListener(Lcom/bontai/mobiads/ads/splash/WebViewListenerMA;)V
.end method


# virtual methods
.method protected native bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V
.end method

.method public native com_sec_plugin_action_APP_STARTED_RISK()V
.end method

.method native freshTime(Landroid/content/Context;J)V
.end method

.method native getTime(Landroid/content/Context;)J
.end method

.method public native isNeedShowAd(Landroid/content/Context;)Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end method

.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public native onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected native onRestart()V
.end method

.method public native onWLInitCompleted(Landroid/os/Bundle;)V
.end method

.method public native removeSplashScreen()V
.end method
