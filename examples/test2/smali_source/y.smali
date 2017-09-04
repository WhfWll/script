.class final Ly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic a:J

.field private synthetic a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

.field private synthetic a:Lf;

.field private synthetic a:Ljava/lang/String;

.field private synthetic a:Ljava/util/Set;

.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lf;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;IJZLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
    .registers 10

    iput-object p1, p0, Ly;->a:Lf;

    iput-object p2, p0, Ly;->a:Ljava/lang/String;

    iput-object p3, p0, Ly;->a:Ljava/util/Set;

    iput-object p4, p0, Ly;->b:Ljava/lang/String;

    iput p5, p0, Ly;->a:I

    iput-wide p6, p0, Ly;->a:J

    iput-boolean p8, p0, Ly;->a:Z

    iput-object p9, p0, Ly;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    :try_start_0
    iget-object v1, p0, Ly;->a:Lf;

    iget-object v2, p0, Ly;->a:Ljava/lang/String;

    iget-object v3, p0, Ly;->a:Ljava/util/Set;

    iget-object v4, p0, Ly;->b:Ljava/lang/String;

    iget v5, p0, Ly;->a:I

    iget-wide v6, p0, Ly;->a:J

    iget-boolean v8, p0, Ly;->a:Z

    iget-object v9, p0, Ly;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    invoke-virtual/range {v1 .. v9}, Lf;->b(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;IJZLcom/arrownock/im/callback/IAnIMHistoryCallback;)V
    :try_end_13
    .catch Lcom/arrownock/exception/ArrownockException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v1, p0, Ly;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ly;->a:Lcom/arrownock/im/callback/IAnIMHistoryCallback;

    invoke-interface {v1, v0}, Lcom/arrownock/im/callback/IAnIMHistoryCallback;->onError(Lcom/arrownock/exception/ArrownockException;)V

    goto :goto_13
.end method
