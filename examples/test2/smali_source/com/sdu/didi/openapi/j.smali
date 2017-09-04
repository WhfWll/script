.class Lcom/sdu/didi/openapi/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DiDiWebActivity;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DiDiWebActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdu/didi/openapi/j;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    iget-object v0, p0, Lcom/sdu/didi/openapi/j;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/g;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdu/didi/openapi/j;->a:Lcom/sdu/didi/openapi/DiDiWebActivity;

    invoke-static {v0}, Lcom/sdu/didi/openapi/DiDiWebActivity;->b(Lcom/sdu/didi/openapi/DiDiWebActivity;)Lcom/sdu/didi/openapi/ss/g;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sdu/didi/openapi/ss/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_16
    return-void
.end method
