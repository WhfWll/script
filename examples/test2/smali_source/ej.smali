.class public final Lej;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/arrownock/push/PushService;


# direct methods
.method public constructor <init>(Lcom/arrownock/push/PushService;)V
    .registers 2

    iput-object p1, p0, Lej;->a:Lcom/arrownock/push/PushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    iget-object v0, p0, Lej;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->a(Lcom/arrownock/push/PushService;)V

    iget-object v0, p0, Lej;->a:Lcom/arrownock/push/PushService;

    invoke-static {v0}, Lcom/arrownock/push/PushService;->b(Lcom/arrownock/push/PushService;)V

    return-void
.end method
