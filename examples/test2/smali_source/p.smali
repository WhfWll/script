.class final Lp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/arrownock/im/callback/IAnIMPushBindingCallback;)V
    .registers 8

    iput-object p1, p0, Lp;->a:Lf;

    iput-object p2, p0, Lp;->a:Ljava/lang/String;

    iput-object p3, p0, Lp;->b:Ljava/lang/String;

    iput-object p4, p0, Lp;->c:Ljava/lang/String;

    iput-object p5, p0, Lp;->d:Ljava/lang/String;

    iput-object p6, p0, Lp;->e:Ljava/lang/String;

    iput-object p7, p0, Lp;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lp;->a:Lf;

    iget-object v1, p0, Lp;->a:Ljava/lang/String;

    iget-object v2, p0, Lp;->b:Ljava/lang/String;

    iget-object v3, p0, Lp;->c:Ljava/lang/String;

    iget-object v4, p0, Lp;->d:Ljava/lang/String;

    iget-object v5, p0, Lp;->e:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lp;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lp;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-interface {v0}, Lcom/arrownock/im/callback/IAnIMPushBindingCallback;->onSuccess()V
    :try_end_19
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    iget-object v1, p0, Lp;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lp;->a:Lcom/arrownock/im/callback/IAnIMPushBindingCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMPushBindingCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_19
.end method
