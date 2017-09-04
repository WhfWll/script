.class Lcn/dbox/ui/b/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/b;->e()V
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
    .line 179
    iput-object p1, p0, Lcn/dbox/ui/b/b$2;->a:Lcn/dbox/ui/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcn/dbox/ui/b/b$2;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    return-void
.end method
