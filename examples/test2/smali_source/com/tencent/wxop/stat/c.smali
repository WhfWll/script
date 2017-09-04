.class Lcom/tencent/wxop/stat/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/wxop/stat/b;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/b;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/wxop/stat/c;->a:Lcom/tencent/wxop/stat/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/wxop/stat/c;->a:Lcom/tencent/wxop/stat/b;

    iget-object v0, v0, Lcom/tencent/wxop/stat/b;->a:Lcom/tencent/wxop/stat/a;

    invoke-virtual {v0}, Lcom/tencent/wxop/stat/a;->g()V

    return-void
.end method
