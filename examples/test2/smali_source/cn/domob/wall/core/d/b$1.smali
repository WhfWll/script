.class Lcn/domob/wall/core/d/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/b;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b;

.field final synthetic b:Lcn/domob/wall/core/d/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/b;Lcn/domob/wall/core/b;)V
    .registers 3

    .prologue
    .line 39
    iput-object p1, p0, Lcn/domob/wall/core/d/b$1;->b:Lcn/domob/wall/core/d/b;

    iput-object p2, p0, Lcn/domob/wall/core/d/b$1;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 42
    invoke-static {}, Lcn/domob/wall/core/d/b;->b()Lcn/domob/wall/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EWallDetailsView onURLIntercepted URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h/d;->b(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p2}, Lcn/domob/wall/core/d/a;->loadUrl(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/d/b$1;->a:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_CLICK:Lcn/domob/wall/core/DService$EWallReportType;

    invoke-virtual {v0, v1, v2, p2}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V

    .line 47
    return-void
.end method
