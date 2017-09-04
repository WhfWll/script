.class Lcom/tencent/wxop/stat/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/wxop/stat/h;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/aq;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/wxop/stat/as;->a:Lcom/tencent/wxop/stat/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->c()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-static {}, Lcom/tencent/wxop/stat/StatServiceImpl;->d()V

    return-void
.end method
