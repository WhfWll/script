.class Lcom/worklight/androidgap/plugin/WifiPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;->scanWifi(Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;

    const v1, 0x47b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 3

    .prologue
    .line 146
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
