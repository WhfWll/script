.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionDispatcherRunnable"
.end annotation


# instance fields
.field private args:Lorg/json/JSONArray;

.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private context:Lorg/apache/cordova/api/CordovaInterface;

.field private dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;

    const v1, 0x487

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 6
    .param p2, "dispatcher"    # Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;
    .param p3, "args"    # Lorg/json/JSONArray;
    .param p4, "context"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p5, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->args:Lorg/json/JSONArray;

    .line 103
    iput-object p5, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 104
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->context:Lorg/apache/cordova/api/CordovaInterface;

    .line 105
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
    .param p2, "x1"    # Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;
    .param p3, "x2"    # Lorg/json/JSONArray;
    .param p4, "x3"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p5, "x4"    # Lorg/apache/cordova/api/CallbackContext;
    .param p6, "x5"    # Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;-><init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
