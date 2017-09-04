.class Lcn/dbox/ui/b/b$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/b/b;
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
    .line 231
    iput-object p1, p0, Lcn/dbox/ui/b/b$4;->a:Lcn/dbox/ui/b/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget-object v0, p0, Lcn/dbox/ui/b/b$4;->a:Lcn/dbox/ui/b/b;

    iget-object v0, v0, Lcn/dbox/ui/b/b;->v:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 234
    return-void
.end method
