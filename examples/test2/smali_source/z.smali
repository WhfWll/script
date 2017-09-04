.class final Lz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lz;->a:Lf;

    iput-object p2, p0, Lz;->a:Ljava/lang/String;

    iput-object p3, p0, Lz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lz;->a:Lf;

    iget-object v1, p0, Lz;->a:Ljava/lang/String;

    iget-object v2, p0, Lz;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lf;->a(Lf;Ljava/lang/String;Ljava/lang/String;)Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;

    move-result-object v0

    iget-object v1, p0, Lz;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lz;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Lcom/arrownock/im/callback/IAnIMCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMCallback;->getClientsStatus(Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;)V

    :cond_1b
    return-void
.end method
