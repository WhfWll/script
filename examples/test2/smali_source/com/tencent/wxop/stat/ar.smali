.class Lcom/tencent/wxop/stat/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wxop/stat/h;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/aq;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/wxop/stat/ar;->a:Lcom/tencent/wxop/stat/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->c()V

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/au;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    if-lt v0, v1, :cond_1c

    invoke-static {}, Lcom/tencent/wxop/stat/au;->b()Lcom/tencent/wxop/stat/au;

    move-result-object v0

    invoke-static {}, Lcom/tencent/wxop/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/wxop/stat/au;->a(I)V

    :cond_1c
    return-void
.end method

.method public b()V
    .registers 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->d()V

    return-void
.end method
