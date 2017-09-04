.class public Lcom/arrownock/push/PushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_ARRIVAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/PushBroadcastReceiver;

    const v1, 0xbd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/arrownock/push/PushBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/PushBroadcastReceiver;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    sput-object v0, Lcom/arrownock/push/PushBroadcastReceiver;->MSG_ARRIVAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public native showNotification(Landroid/content/Context;Lorg/json/JSONObject;)V
.end method

.method public native showNotification(Landroid/content/Context;Lorg/json/JSONObject;I)V
.end method
