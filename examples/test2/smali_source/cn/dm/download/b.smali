.class final Lcn/dm/download/b;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic u:Lcn/dm/download/a;


# direct methods
.method constructor <init>(Lcn/dm/download/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v0}, Lcn/dm/download/a;->a(Lcn/dm/download/a;)V

    .line 67
    iget-object v0, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v0}, Lcn/dm/download/a;->b(Lcn/dm/download/a;)V

    .line 69
    iget-object v0, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v0}, Lcn/dm/download/a;->c(Lcn/dm/download/a;)Lcn/dm/download/d;

    move-result-object v0

    iget-object v1, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v1}, Lcn/dm/download/a;->d(Lcn/dm/download/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v1}, Lcn/dm/download/a;->e(Lcn/dm/download/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcn/dm/download/d;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 70
    iget-object v0, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/dm/download/b;->u:Lcn/dm/download/a;

    invoke-static {v2}, Lcn/dm/download/a;->f(Lcn/dm/download/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/dm/download/util/Constants;->Unfinished_Sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/dm/download/a;->a(Lcn/dm/download/a;Ljava/lang/String;)V

    .line 72
    :cond_40
    return-void
.end method
