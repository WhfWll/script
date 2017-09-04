.class final Lbw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbn;

.field final synthetic a:Lcom/arrownock/social/IAnSocialCallback;

.field private synthetic a:Lez;

.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbn;Ljava/lang/String;Lez;Lcom/arrownock/social/IAnSocialCallback;)V
    .registers 5

    iput-object p1, p0, Lbw;->a:Lbn;

    iput-object p2, p0, Lbw;->a:Ljava/lang/String;

    iput-object p3, p0, Lbw;->a:Lez;

    iput-object p4, p0, Lbw;->a:Lcom/arrownock/social/IAnSocialCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lbw;->a:Lbn;

    invoke-static {v0}, Lbn;->a(Lbn;)Leq;

    move-result-object v0

    iget-object v1, p0, Lbw;->a:Lbn;

    iget-object v2, p0, Lbw;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lbn;->a(Lbn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbw;->a:Lez;

    new-instance v3, Lbx;

    invoke-direct {v3, p0}, Lbx;-><init>(Lbw;)V

    invoke-virtual {v0, v1, v2, v3}, Leq;->b(Ljava/lang/String;Lez;Lev;)V

    return-void
.end method
