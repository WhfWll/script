.class Lcn/domob/wall/core/d/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/d/a$b;


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
    .line 120
    iput-object p1, p0, Lcn/domob/wall/core/d/d$5;->b:Lcn/domob/wall/core/d/d;

    iput-object p2, p0, Lcn/domob/wall/core/d/d$5;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/d/a;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/wall/core/d/d$5;->b:Lcn/domob/wall/core/d/d;

    invoke-static {v0}, Lcn/domob/wall/core/d/d;->d(Lcn/domob/wall/core/d/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    invoke-static {}, Lcn/domob/wall/core/f/a;->a()Lcn/domob/wall/core/f/a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/d/d$5;->a:Lcn/domob/wall/core/b;

    sget-object v2, Lcn/domob/wall/core/DService$EWallReportType;->E_PAGE_SHOW:Lcn/domob/wall/core/DService$EWallReportType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/f/a;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/DService$EWallReportType;Ljava/lang/String;)V

    .line 129
    return-void
.end method
