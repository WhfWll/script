.class Lcn/dbox/ui/common/j$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/common/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/common/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/common/j;


# direct methods
.method constructor <init>(Lcn/dbox/ui/common/j;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcn/dbox/ui/common/j$6;->a:Lcn/dbox/ui/common/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcn/dbox/ui/common/j$6;->a:Lcn/dbox/ui/common/j;

    invoke-static {v0}, Lcn/dbox/ui/common/j;->d(Lcn/dbox/ui/common/j;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcn/dbox/ui/common/j$6;->a:Lcn/dbox/ui/common/j;

    invoke-static {v0}, Lcn/dbox/ui/common/j;->d(Lcn/dbox/ui/common/j;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_11
    return-void
.end method
