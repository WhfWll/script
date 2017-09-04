.class Lcn/dbox/ui/common/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/b$a;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/b$a;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcn/dbox/ui/common/b$a$1;->a:Lcn/dbox/ui/common/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcn/dbox/ui/common/b$a$1;->a:Lcn/dbox/ui/common/b$a;

    iget-object v0, v0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->e(Lcn/dbox/ui/common/b;)Lcn/dbox/ui/common/DBoxGallery;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/dbox/ui/common/DBoxGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 167
    return-void
.end method
