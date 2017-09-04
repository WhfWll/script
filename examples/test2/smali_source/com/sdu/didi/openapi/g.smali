.class Lcom/sdu/didi/openapi/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/g;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/g;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-virtual {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->finish()V

    return-void
.end method
