.class Lcn/dbox/ui/b/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/ui/common/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/b/f;->a(Landroid/content/Context;Lcn/dbox/core/bean/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/b/f;


# direct methods
.method constructor <init>(Lcn/dbox/ui/b/f;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcn/dbox/ui/b/f$1;->a:Lcn/dbox/ui/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/ui/common/e;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcn/dbox/ui/b/f$1;->a:Lcn/dbox/ui/b/f;

    iget-object v0, v0, Lcn/dbox/ui/b/f;->a:Lcn/dbox/ui/common/e;

    invoke-virtual {v0, p2}, Lcn/dbox/ui/common/e;->loadUrl(Ljava/lang/String;)V

    .line 41
    return-void
.end method
