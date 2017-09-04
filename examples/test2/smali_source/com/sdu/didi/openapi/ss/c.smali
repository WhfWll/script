.class Lcom/sdu/didi/openapi/ss/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/ss/b$a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/ss/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/ss/c;->a:Lcom/sdu/didi/openapi/ss/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/ss/c;->a:Lcom/sdu/didi/openapi/ss/b$a;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/ss/b$a;->dismiss()V

    return-void
.end method
