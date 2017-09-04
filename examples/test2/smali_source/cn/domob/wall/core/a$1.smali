.class Lcn/domob/wall/core/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a;->q(Lcn/domob/wall/core/bean/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a;)V
    .registers 2

    .prologue
    .line 466
    iput-object p1, p0, Lcn/domob/wall/core/a$1;->a:Lcn/domob/wall/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 469
    iget-object v0, p0, Lcn/domob/wall/core/a$1;->a:Lcn/domob/wall/core/a;

    invoke-static {v0}, Lcn/domob/wall/core/a;->a(Lcn/domob/wall/core/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    return-void
.end method
