.class final Lds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arrownock/push/IAnPushRegistrationCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/arrownock/push/IAnPushRegistrationCallback;)V
    .registers 8

    iput-object p1, p0, Lds;->a:Ldf;

    iput-object p2, p0, Lds;->a:Ljava/lang/String;

    iput-object p3, p0, Lds;->b:Ljava/lang/String;

    iput-object p4, p0, Lds;->c:Ljava/lang/String;

    iput-object p5, p0, Lds;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lds;->a:Z

    iput-object p7, p0, Lds;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    :try_start_0
    iget-object v0, p0, Lds;->a:Ljava/lang/String;

    if-eqz v0, :cond_72

    const-string v0, ""

    iget-object v1, p0, Lds;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lds;->a:Ldf;

    const-string v1, "ANID"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lds;->b:Ljava/lang/String;

    const-string v1, "android-gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz v6, :cond_3e

    iget-object v0, p0, Lds;->a:Ldf;

    iget-object v1, p0, Lds;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lds;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lds;->a:Z

    iget-object v5, p0, Lds;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_34
    iget-object v0, p0, Lds;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lds;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v0, v6}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onSuccess(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v7, p0, Lds;->a:Ldf;

    iget-object v8, p0, Lds;->c:Ljava/lang/String;

    iget-object v9, p0, Lds;->a:Ljava/lang/String;

    iget-object v10, p0, Lds;->d:Ljava/lang/String;

    iget-boolean v11, p0, Lds;->a:Z

    iget-object v12, p0, Lds;->b:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_34

    :catch_4f
    move-exception v0

    iget-object v1, p0, Lds;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lds;->a:Lcom/arrownock/push/IAnPushRegistrationCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushRegistrationCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_3d

    :cond_5a
    :try_start_5a
    iget-object v7, p0, Lds;->a:Ldf;

    iget-object v8, p0, Lds;->c:Ljava/lang/String;

    iget-object v9, p0, Lds;->a:Ljava/lang/String;

    iget-object v10, p0, Lds;->d:Ljava/lang/String;

    iget-boolean v11, p0, Lds;->a:Z

    iget-object v12, p0, Lds;->b:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Ldf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lds;->a:Ldf;

    const-string v1, "ANID"

    invoke-virtual {v0, v1}, Ldf;->a(Ljava/lang/String;)V

    goto :goto_34

    :cond_72
    invoke-static {}, Lbk;->a()Lbk;

    move-result-object v0

    invoke-static {}, Ldf;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device Token is null."

    invoke-virtual {v0, v1, v2}, Lbk;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_5a .. :try_end_7f} :catch_4f

    goto :goto_3d
.end method
