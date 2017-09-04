.class final Ldv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushCallback;)V
    .registers 8

    iput-object p1, p0, Ldv;->a:Ldf;

    iput-object p2, p0, Ldv;->a:Ljava/lang/String;

    iput-object p3, p0, Ldv;->b:Ljava/lang/String;

    iput p4, p0, Ldv;->a:I

    iput p5, p0, Ldv;->b:I

    iput p6, p0, Ldv;->c:I

    iput-object p7, p0, Ldv;->a:Lcom/arrownock/push/IAnPushCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Ldv;->a:Ldf;

    iget-object v1, p0, Ldv;->a:Ljava/lang/String;

    iget-object v2, p0, Ldv;->b:Ljava/lang/String;

    iget v3, p0, Ldv;->a:I

    iget v4, p0, Ldv;->b:I

    iget v5, p0, Ldv;->c:I

    invoke-static/range {v0 .. v5}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v0, p0, Ldv;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ldv;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/arrownock/push/IAnPushCallback;->setScheduledMute(ZLcom/arrownock/exception/ArrownockException;)V
    :try_end_1a
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    iget-object v1, p0, Ldv;->a:Lcom/arrownock/push/IAnPushCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ldv;->a:Lcom/arrownock/push/IAnPushCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/arrownock/push/IAnPushCallback;->setScheduledMute(ZLcom/arrownock/exception/ArrownockException;)V

    goto :goto_1a
.end method
