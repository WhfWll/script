.class final Ls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMPushBindingCallback;)V
    .registers 5

    iput-object p1, p0, Ls;->a:Lf;

    iput-object p2, p0, Ls;->a:Ljava/lang/String;

    iput-object p3, p0, Ls;->b:Ljava/lang/String;

    iput-object p4, p0, Ls;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Ls;->a:Lf;

    iget-object v1, p0, Ls;->a:Ljava/lang/String;

    iget-object v2, p0, Ls;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Ls;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ls;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-interface {v0}, Lcom/arrownock/im/callback/IAnIMPushBindingCallback;->onSuccess()V
    :try_end_16
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    iget-object v1, p0, Ls;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    if-eqz v1, :cond_16

    iget-object v1, p0, Ls;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMPushBindingCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_16
.end method
