.class Lcn/dbox/ui/common/b$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/b;


# direct methods
.method private constructor <init>(Lcn/dbox/ui/common/b;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/dbox/ui/common/b;Lcn/dbox/ui/common/b$1;)V
    .registers 3

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcn/dbox/ui/common/b$a;-><init>(Lcn/dbox/ui/common/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->e(Lcn/dbox/ui/common/b;)Lcn/dbox/ui/common/DBoxGallery;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->e(Lcn/dbox/ui/common/b;)Lcn/dbox/ui/common/DBoxGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/common/DBoxGallery;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 160
    iget-object v0, p0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->e(Lcn/dbox/ui/common/b;)Lcn/dbox/ui/common/DBoxGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dbox/ui/common/DBoxGallery;->isOnGalleryTouch()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 161
    invoke-static {}, Lcn/dbox/ui/common/b;->b()Lcn/dbox/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start auto scroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcn/dbox/ui/common/b$a;->a:Lcn/dbox/ui/common/b;

    invoke-static {v0}, Lcn/dbox/ui/common/b;->f(Lcn/dbox/ui/common/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/dbox/ui/common/b$a$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/common/b$a$1;-><init>(Lcn/dbox/ui/common/b$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    :cond_4e
    return-void
.end method
