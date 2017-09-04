.class public Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;,
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;,
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;
    }
.end annotation


# static fields
.field private static final CONFIGURATIONUTIL_CLASS:Ljava/lang/String; = "com.tl.uic.util.ConfigurationUtil"

.field private static final CONFIGURATIONUTIL_CLASS_METHOD_GETSTRING:Ljava/lang/String; = "getString"

.field private static final CONFIGURATIONUTIL_CLASS_METHOD_SETPROPERTY:Ljava/lang/String; = "setProperty"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TEALEAF_CLASS:Ljava/lang/String; = "com.tl.uic.Tealeaf"

.field private static final TEALEAF_CLASS_METHOD_DISABLE:Ljava/lang/String; = "disable"

.field private static final TEALEAF_CLASS_METHOD_ENABLE:Ljava/lang/String; = "enable"

.field private static final TEALEAF_CLASS_METHOD_GETADDITIONALCOOKIE:Ljava/lang/String; = "getAdditionalCookie"

.field private static final TEALEAF_CLASS_METHOD_GETADDITIONALHEADERS:Ljava/lang/String; = "getAdditionalHeaders"

.field private static final TEALEAF_CLASS_METHOD_ISENABLED:Ljava/lang/String; = "isEnabled"

.field private static final TEALEAF_CLASS_METHOD_REQUESTMANUALSERVERPOST:Ljava/lang/String; = "requestManualServerPost"

.field private static final TEALEAF_CLASS_METHOD_SETADDITIONALCOOKIE:Ljava/lang/String; = "setAdditionalCookie"

.field private static final TEALEAF_CLASS_METHOD_SETADDITIONALHEADERS:Ljava/lang/String; = "setAdditionalHeaders"

.field private static final TEALEAF_CONFIGURABLE_ITEMS_KEY_POSTMESSAGEURL:Ljava/lang/String; = "PostMessageUrl"

.field private static final X_WL_TLT_FORWARD_COOKIES_HEADER:Ljava/lang/String; = "x-wl-tlt-forward-cookies"

.field protected static droidGap:Lorg/apache/cordova/DroidGap;

.field protected static prefs:Landroid/content/SharedPreferences;

.field private static wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    const v1, 0x457

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 71
    const/4 v1, 0x0

    .line 0
    const-class v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;

    sput-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    sput-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;)Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    .prologue
    .line 38
    sput-object p0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    return-object p0
.end method

.method public static native setDroidGapObject(Lorg/apache/cordova/DroidGap;)V
.end method


# virtual methods
.method public native enable()V
.end method

.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native isEnabledSharedPref()Z
.end method
