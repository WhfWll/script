.class public Lcom/sdu/didi/openapi/ss/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/ss/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/sdu/didi/openapi/ss/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/b;->b:Lcom/sdu/didi/openapi/ss/b$a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/sdu/didi/openapi/ss/b$a;

    iget-object v1, p0, Lcom/sdu/didi/openapi/ss/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/sdu/didi/openapi/ss/b$a;-><init>(Lcom/sdu/didi/openapi/ss/b;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/ss/b;->b:Lcom/sdu/didi/openapi/ss/b$a;

    :cond_d
    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/b;->b:Lcom/sdu/didi/openapi/ss/b$a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/ss/b$a;->show()V

    return-void
.end method
