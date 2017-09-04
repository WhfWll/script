.class Lcom/worklight/androidgap/plugin/WLCustomDialog$1;
.super Ljava/lang/Object;
.source "WLCustomDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/WLCustomDialog;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WLCustomDialog;

.field final synthetic val$buttonLabels:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field final synthetic val$cordova:Lorg/apache/cordova/api/CordovaInterface;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;

    const v1, 0x471

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/WLCustomDialog;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .registers 7

    .prologue
    .line 34
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->this$0:Lcom/worklight/androidgap/plugin/WLCustomDialog;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p6, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
