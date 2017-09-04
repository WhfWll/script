.class public Lcom/arrownock/push/PushNotificationFetcher;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/push/PushNotificationFetcher;

    const v1, 0xd9

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/Context;ILeg;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/arrownock/push/PushNotificationFetcher;->b(Ljava/lang/String;Landroid/content/Context;ILeg;)V

    return-void
.end method

.method private static native b(Ljava/lang/String;Landroid/content/Context;ILeg;)V
.end method


# virtual methods
.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
