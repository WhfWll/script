.class Lcom/worklight/androidgap/plugin/Push$2;
.super Landroid/content/BroadcastReceiver;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Push;->subscribe(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Push;

.field final synthetic val$ctx:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/Push$2;

    const v1, 0x464

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/Push;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/Push$2;->val$ctx:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
