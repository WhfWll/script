.class Lcn/dbox/ui/DBoxManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/DBoxManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/DBoxManager;


# direct methods
.method constructor <init>(Lcn/dbox/ui/DBoxManager;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 226
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    sget-object v1, Lcn/dbox/core/bean/Entrance$EntryReportType;->PRESENTED:Lcn/dbox/core/bean/Entrance$EntryReportType;

    invoke-virtual {v0, v1}, Lcn/dbox/ui/DBoxManager;->doEntryReports(Lcn/dbox/core/bean/Entrance$EntryReportType;)V

    .line 227
    iget-object v0, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v0}, Lcn/dbox/ui/DBoxManager;->c(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v1}, Lcn/dbox/ui/DBoxManager;->g(Lcn/dbox/ui/DBoxManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v2}, Lcn/dbox/ui/DBoxManager;->h(Lcn/dbox/ui/DBoxManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v3}, Lcn/dbox/ui/DBoxManager;->i(Lcn/dbox/ui/DBoxManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v4}, Lcn/dbox/ui/DBoxManager;->j(Lcn/dbox/ui/DBoxManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcn/dbox/ui/DBoxManager$5;->a:Lcn/dbox/ui/DBoxManager;

    invoke-static {v5}, Lcn/dbox/ui/DBoxManager;->k(Lcn/dbox/ui/DBoxManager;)Lcn/dbox/core/b;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/dbox/ui/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/dbox/core/b;)V

    .line 229
    return-void
.end method
