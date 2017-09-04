.class final Lax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lat;

.field private synthetic a:Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;


# direct methods
.method constructor <init>(Lat;Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V
    .registers 3

    iput-object p1, p0, Lax;->a:Lat;

    iput-object p2, p0, Lax;->a:Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lax;->a:Lat;

    iget-object v0, v0, Lat;->a:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v0

    iget-object v1, p0, Lax;->a:Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    invoke-interface {v0, v1}, Lcom/arrownock/im/callback/IAnIMCallback;->statusUpdate(Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;)V

    return-void
.end method
