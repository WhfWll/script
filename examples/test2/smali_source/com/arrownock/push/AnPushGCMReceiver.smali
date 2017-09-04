.class public Lcom/arrownock/push/AnPushGCMReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final MSG_ARRIVAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/AnPushGCMReceiver;

    const v1, 0xd6

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    sget-object v0, Lcom/arrownock/push/PushService;->ACTION_MSG_ARRIVAL:Ljava/lang/String;

    sput-object v0, Lcom/arrownock/push/AnPushGCMReceiver;->MSG_ARRIVAL:Ljava/lang/String;

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
