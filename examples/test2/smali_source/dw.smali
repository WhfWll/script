.class final Ldw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:Lcom/arrownock/push/IAnPushSettingsCallback;

.field private synthetic a:Ldf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:I


# direct methods
.method constructor <init>(Ldf;Ljava/lang/String;Ljava/lang/String;IIILcom/arrownock/push/IAnPushSettingsCallback;)V
    .registers 8

    iput-object p1, p0, Ldw;->a:Ldf;

    iput-object p2, p0, Ldw;->a:Ljava/lang/String;

    iput-object p3, p0, Ldw;->b:Ljava/lang/String;

    iput p4, p0, Ldw;->a:I

    iput p5, p0, Ldw;->b:I

    iput p6, p0, Ldw;->c:I

    iput-object p7, p0, Ldw;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Ldw;->a:Ldf;

    iget-object v1, p0, Ldw;->a:Ljava/lang/String;

    iget-object v2, p0, Ldw;->b:Ljava/lang/String;

    iget v3, p0, Ldw;->a:I

    iget v4, p0, Ldw;->b:I

    iget v5, p0, Ldw;->c:I

    invoke-static/range {v0 .. v5}, Ldf;->a(Ldf;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v0, p0, Ldw;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ldw;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onSuccess()V
    :try_end_18
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    iget-object v1, p0, Ldw;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    if-eqz v1, :cond_18

    iget-object v1, p0, Ldw;->a:Lcom/arrownock/push/IAnPushSettingsCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/push/IAnPushSettingsCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_18
.end method
