.class final Ldr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/arrownock/push/IAnPushCallback;)V
    .registers 8

    iput-object p1, p0, Ldr;->a:Ldf;

    iput-object p2, p0, Ldr;->a:Ljava/lang/String;

    iput-object p3, p0, Ldr;->b:Ljava/lang/String;

    iput-object p4, p0, Ldr;->c:Ljava/lang/String;

    iput-object p5, p0, Ldr;->d:Ljava/lang/String;

    iput-boolean p6, p0, Ldr;->a:Z

    iput-object p7, p0, Ldr;->a:Lcom/arrownock/push/IAnPushCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Ldr;->a:Ljava/lang/String;

    if-eqz v0, :cond_75

    const-string v0, ""

    iget-object v1, p0, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Ldr;->b:Ljava/lang/String;

    const-string v1, "android-gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Ldr;->a:Ldf;

    const-string v1, "ANID"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_40

    iget-object v0, p0, Ldr;->a:Ldf;

    iget-object v1, p0, Ldr;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ldr;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldr;->a:Z

    iget-object v5, p0, Ldr;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_34
    iget-object v0, p0, Ldr;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Ldr;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->unregister(ZLcom/arrownock/exception/ArrownockException;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Ldr;->a:Ldf;

    iget-object v1, p0, Ldr;->c:Ljava/lang/String;

    iget-object v2, p0, Ldr;->a:Ljava/lang/String;

    iget-object v3, p0, Ldr;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldr;->a:Z

    iget-object v5, p0, Ldr;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_34

    :catch_51
    move-exception v0

    iget-object v1, p0, Ldr;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ldr;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/arrownock/push/IAnPushCallback;->unregister(ZLcom/arrownock/exception/ArrownockException;)V

    goto :goto_3f

    :cond_5d
    :try_start_5d
    iget-object v0, p0, Ldr;->a:Ldf;

    iget-object v1, p0, Ldr;->c:Ljava/lang/String;

    iget-object v2, p0, Ldr;->a:Ljava/lang/String;

    iget-object v3, p0, Ldr;->d:Ljava/lang/String;

    iget-boolean v4, p0, Ldr;->a:Z

    iget-object v5, p0, Ldr;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldr;->a:Ldf;

    const-string v1, "ANID"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)V

    goto :goto_34

    :cond_75
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device Token is null."

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_5d .. :try_end_82} :catch_51

    goto :goto_3f
.end method
