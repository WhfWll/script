.class Lcn/dbox/core/a/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c;->k()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c;)V
    .registers 2

    .prologue
    .line 688
    iput-object p1, p0, Lcn/dbox/core/a/c$10;->a:Lcn/dbox/core/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Lcn/dbox/core/a/c$10;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->m(Lcn/dbox/core/a/c;)V

    .line 691
    return-void
.end method
