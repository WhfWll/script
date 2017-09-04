.class Lcn/domob/wall/core/d/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/d;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b;

.field final synthetic b:Lcn/domob/wall/core/d/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/d;Lcn/domob/wall/core/b;)V
    .registers 3

    .prologue
    .line 67
    iput-object p1, p0, Lcn/domob/wall/core/d/d$2;->b:Lcn/domob/wall/core/d/d;

    iput-object p2, p0, Lcn/domob/wall/core/d/d$2;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 70
    invoke-static {}, Lcn/domob/wall/core/d/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EWallView onURLIntercepted URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 72
    :try_start_1a
    iget-object v0, p0, Lcn/domob/wall/core/d/d$2;->b:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->c(Lcn/domob/wall/core/d/d;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/d/d$2$1;

    invoke-direct {v1, p0, p2}, Lcn/domob/wall/core/d/d$2$1;-><init>(Lcn/domob/wall/core/d/d$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/d/d$2;->a:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v0, v1, v2, p2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_35} :catch_36

    .line 92
    :goto_35
    return-void

    .line 89
    :catch_36
    move-exception v0

    .line 90
    invoke-static {}, Lcn/domob/wall/core/d/d;->a()Lcn/domob/wall/core/h/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/h/d;->a(Ljava/lang/Throwable;)V

    goto :goto_35
.end method
