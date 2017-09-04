.class public Lcom/worklight/androidgap/plugin/WLCustomDialog;
.super Lorg/apache/cordova/Notification;
.source "WLCustomDialog.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/WLCustomDialog;

    const v1, 0x472

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/Notification;-><init>()V

    return-void
.end method


# virtual methods
.method public native declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end method
