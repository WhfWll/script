.class Lcn/dbox/ui/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/b;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/b;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcn/dbox/ui/b/b$1;->a:Lcn/dbox/ui/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcn/dbox/ui/b/b$1;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->p:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u8fd4\u56de\u9876\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcn/dbox/ui/b/b$1;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->o:Landroid/view/View;

    new-instance v1, Lcn/dbox/ui/b/b$1$1;

    invoke-direct {v1, p0}, Lcn/dbox/ui/b/b$1$1;-><init>(Lcn/dbox/ui/b/b$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method
