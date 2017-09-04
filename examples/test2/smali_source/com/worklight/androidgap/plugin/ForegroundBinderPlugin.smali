.class public Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "ForegroundBinderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$2;,
        Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WLForegroundBinder"


# instance fields
.field private ctx:Landroid/content/Context;

.field private notificationIdentifier:Ljava/lang/Integer;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    const v1, 0x45c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)V
    .registers 1
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cancelNotification()V

    return-void
.end method

.method static synthetic access$102(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private native bindService(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method private native cancelNotification()V
.end method

.method private static native toAllCaps(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native unbindService(Lorg/apache/cordova/api/CallbackContext;)V
.end method


# virtual methods
.method public native execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public native onDestroy()V
.end method
