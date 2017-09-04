.class final Lcom/tencent/wxop/stat/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/StatGameUser;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/StatGameUser;Landroid/content/Context;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/wxop/stat/am;->a:Lcom/tencent/wxop/stat/StatGameUser;

    iput-object p2, p0, Lcom/tencent/wxop/stat/am;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/wxop/stat/am;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/tencent/wxop/stat/am;->a:Lcom/tencent/wxop/stat/StatGameUser;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The gameUser of StatService.reportGameUser() can not be null!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/tencent/wxop/stat/am;->a:Lcom/tencent/wxop/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tencent/wxop/stat/am;->a:Lcom/tencent/wxop/stat/StatGameUser;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/StatGameUser;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    :cond_22
    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v0

    const-string v1, "The account of gameUser on StatService.reportGameUser() can not be null or empty!"

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/common/StatLogger;->error(Ljava/lang/Object;)V

    goto :goto_d

    :cond_2c
    :try_start_2c
    new-instance v0, Lcom/tencent/wxop/stat/a/g;

    iget-object v1, p0, Lcom/tencent/wxop/stat/am;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/wxop/stat/am;->b:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/wxop/stat/am;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-static {v2, v3, v4}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;ZLcom/tencent/wxop/stat/StatSpecifyReportedInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/wxop/stat/am;->a:Lcom/tencent/wxop/stat/StatGameUser;

    iget-object v4, p0, Lcom/tencent/wxop/stat/am;->c:Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/wxop/stat/a/g;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatGameUser;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    new-instance v1, Lcom/tencent/wxop/stat/aq;

    invoke-direct {v1, v0}, Lcom/tencent/wxop/stat/aq;-><init>(Lcom/tencent/wxop/stat/a/e;)V

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/aq;->a()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_48} :catch_49

    goto :goto_d

    :catch_49
    move-exception v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->f()Lcom/tencent/wxop/stat/common/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/wxop/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/wxop/stat/am;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/wxop/stat/StatServiceImpl;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
