.class public final Lei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/arrownock/push/PushService;->a()Lji;

    move-result-object v0

    invoke-virtual {v0}, Lji;->a()V

    invoke-static {}, Lcom/arrownock/push/PushService;->b()Lji;

    return-void
.end method
