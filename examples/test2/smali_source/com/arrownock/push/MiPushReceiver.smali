.class public Lcom/arrownock/push/MiPushReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_ARRIVAL:Ljava/lang/String;

.field static final PENDING_PUSH_NOTIFICATIONS:Ljava/lang/String; = "com.arrownock.push.PENDING_PUSH_NOTIFICATIONS"

.field static final PENDING_PUSH_STORAGE:Ljava/lang/String; = "com.arrownock.push.PENDING_PUSH_STORAGE"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/MiPushReceiver;

    const v1, 0xd7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    const-class v0, Lcom/arrownock/push/MiPushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arrownock/push/MiPushReceiver;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    sput-object v0, Lcom/arrownock/push/MiPushReceiver;->MSG_ARRIVAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public native onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
.end method

.method public native onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
.end method
