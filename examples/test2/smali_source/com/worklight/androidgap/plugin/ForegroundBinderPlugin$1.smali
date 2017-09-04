.class Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;
.super Ljava/lang/Object;
.source "ForegroundBinderPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->bindService(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

.field final synthetic val$activityClass:Ljava/lang/Class;

.field final synthetic val$explainText:Ljava/lang/String;

.field final synthetic val$iconId:I

.field final synthetic val$notificationId:I

.field final synthetic val$popupText:Ljava/lang/String;

.field final synthetic val$titleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;

    const v1, 0x45b

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 140
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    iput p2, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$iconId:I

    iput-object p3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$popupText:Ljava/lang/String;

    iput-object p4, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$activityClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$titleText:Ljava/lang/String;

    iput-object p6, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$explainText:Ljava/lang/String;

    iput p7, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public native onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
