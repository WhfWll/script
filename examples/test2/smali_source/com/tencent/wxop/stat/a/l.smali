.class public Lcom/tencent/wxop/stat/a/l;
.super Lcom/tencent/wxop/stat/a/e;


# instance fields
.field private a:Lcom/tencent/wxop/stat/common/b;

.field private m:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Lcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4}, Lcom/tencent/wxop/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/wxop/stat/StatSpecifyReportedInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    new-instance v0, Lcom/tencent/wxop/stat/common/b;

    invoke-direct {v0, p1}, Lcom/tencent/wxop/stat/common/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/wxop/stat/a/l;->a:Lcom/tencent/wxop/stat/common/b;

    iput-object p3, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/wxop/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/wxop/stat/a/f;->b:Lcom/tencent/wxop/stat/a/f;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/wxop/stat/a/e;->e:Lcom/tencent/wxop/stat/common/a;

    if-eqz v0, :cond_10

    const-string v0, "ut"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/e;->e:Lcom/tencent/wxop/stat/common/a;

    invoke-virtual {v1}, Lcom/tencent/wxop/stat/common/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_10
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    if-eqz v0, :cond_1b

    const-string v0, "cfg"

    iget-object v1, p0, Lcom/tencent/wxop/stat/a/l;->m:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/wxop/stat/common/k;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "ncts"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_28
    iget-object v0, p0, Lcom/tencent/wxop/stat/a/l;->a:Lcom/tencent/wxop/stat/common/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/wxop/stat/common/b;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    return v2
.end method
