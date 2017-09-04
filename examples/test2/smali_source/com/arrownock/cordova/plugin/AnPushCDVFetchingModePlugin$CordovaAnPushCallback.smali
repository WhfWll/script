.class Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin$CordovaAnPushCallback;
.super Lcom/arrownock/push/AnPushCallbackAdapter;
.source "AnPushCDVFetchingModePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CordovaAnPushCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin$CordovaAnPushCallback;

    const v1, 0xbb

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;)V
    .registers 2

    .prologue
    .line 767
    iput-object p1, p0, Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin$CordovaAnPushCallback;->this$0:Lcom/arrownock/cordova/plugin/AnPushCDVFetchingModePlugin;

    invoke-direct {p0}, Lcom/arrownock/push/AnPushCallbackAdapter;-><init>()V

    return-void
.end method

.method private native generateErrorJSON(Lcom/arrownock/exception/ArrownockException;)Ljava/lang/String;
.end method


# virtual methods
.method public native clearMute(ZLcom/arrownock/exception/ArrownockException;)V
.end method

.method public native clearSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V
.end method

.method public native register(ZLjava/lang/String;Lcom/arrownock/exception/ArrownockException;)V
.end method

.method public native setMute(ZLcom/arrownock/exception/ArrownockException;)V
.end method

.method public native setScheduledMute(ZLcom/arrownock/exception/ArrownockException;)V
.end method

.method public native setSilentPeriod(ZLcom/arrownock/exception/ArrownockException;)V
.end method

.method public native statusChanged(Lcom/arrownock/push/AnPushStatus;Lcom/arrownock/exception/ArrownockException;)V
.end method

.method public native unregister(ZLcom/arrownock/exception/ArrownockException;)V
.end method
