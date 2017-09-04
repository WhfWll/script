.class public Lcom/worklight/androidgap/push/WLGCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "WLGCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    }
.end annotation


# static fields
.field public static final GCM_ERROR:Ljava/lang/String; = ".C2DM_ERROR"

.field public static final GCM_EXTRA_ALERT:Ljava/lang/String; = "alert"

.field public static final GCM_EXTRA_BADGE:Ljava/lang/String; = "badge"

.field public static final GCM_EXTRA_ERROR_ID:Ljava/lang/String; = "errorId"

.field public static final GCM_EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final GCM_EXTRA_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final GCM_EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registrationId"

.field public static final GCM_EXTRA_SOUND:Ljava/lang/String; = "sound"

.field public static final GCM_MESSAGE:Ljava/lang/String; = ".C2DM_MESSAGE"

.field public static final GCM_NOTIFICATION:Ljava/lang/String; = ".NOTIFICATION"

.field public static final GCM_REGISTERED:Ljava/lang/String; = ".C2DM_REGISTERED"

.field public static final GCM_UNREGISTERED:Ljava/lang/String; = ".C2DM_UNREGISTERED"

.field private static RES_PUSH_NOTIFICATION_ICON:I

.field private static RES_PUSH_NOTIFICATION_TITLE:I


# instance fields
.field private resultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/push/WLGCMIntentService;

    .line 42
    const v1, 0x6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const/4 v0, -0x1

    .line 0
    sput v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    sput v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_TITLE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 126
    new-instance v0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/push/WLGCMIntentService$1;-><init>(Lcom/worklight/androidgap/push/WLGCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/push/WLGCMIntentService$1;-><init>(Lcom/worklight/androidgap/push/WLGCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private native generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
.end method

.method private native playNotificationSound(Landroid/content/Context;Ljava/lang/String;)V
.end method


# virtual methods
.method protected native getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public native notify(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public native notify(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
.end method

.method public native onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected native onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected native onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public native onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected native onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected native onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected native setBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method protected native setNotificationIcon(I)V
.end method

.method protected native setResources()V
.end method
