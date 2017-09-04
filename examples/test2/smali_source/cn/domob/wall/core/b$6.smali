.class Lcn/domob/wall/core/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/b;)V
    .registers 2

    .prologue
    .line 615
    iput-object p1, p0, Lcn/domob/wall/core/b$6;->a:Lcn/domob/wall/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 619
    iget-object v0, p0, Lcn/domob/wall/core/b$6;->a:Lcn/domob/wall/core/b;

    new-instance v1, Lcn/domob/wall/core/d/d;

    iget-object v2, p0, Lcn/domob/wall/core/b$6;->a:Lcn/domob/wall/core/b;

    iget-object v3, p0, Lcn/domob/wall/core/b$6;->a:Lcn/domob/wall/core/b;

    invoke-static {v3}, Lcn/domob/wall/core/b;->f(Lcn/domob/wall/core/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/wall/core/b$6;->a:Lcn/domob/wall/core/b;

    invoke-static {v4}, Lcn/domob/wall/core/b;->g(Lcn/domob/wall/core/b;)Lcn/domob/wall/core/bean/AdExtend;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/domob/wall/core/d/d;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V

    invoke-static {v0, v1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/b;Lcn/domob/wall/core/d/d;)Lcn/domob/wall/core/d/d;

    .line 621
    return-void
.end method
