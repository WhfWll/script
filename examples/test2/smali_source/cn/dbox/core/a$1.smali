.class Lcn/dbox/core/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a;->k(Lcn/dbox/core/bean/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a;


# direct methods
.method constructor <init>(Lcn/dbox/core/a;)V
    .registers 2

    .prologue
    .line 738
    iput-object p1, p0, Lcn/dbox/core/a$1;->a:Lcn/dbox/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 741
    iget-object v0, p0, Lcn/dbox/core/a$1;->a:Lcn/dbox/core/a;

    invoke-static {v0}, Lcn/dbox/core/a;->a(Lcn/dbox/core/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 743
    return-void
.end method
