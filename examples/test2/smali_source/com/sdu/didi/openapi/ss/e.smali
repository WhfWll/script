.class public Lcom/sdu/didi/openapi/ss/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sdu/didi/openapi/ss/e;->b:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/e;->b:Landroid/content/res/Resources;

    const-string v1, "id"

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/e;->b:Landroid/content/res/Resources;

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return v0
.end method

.method public c(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/e;->b:Landroid/content/res/Resources;

    const-string v1, "layout"

    iget-object v2, p0, Lcom/sdu/didi/openapi/ss/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return v0
.end method
