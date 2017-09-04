.class Lcn/domob/wall/core/a/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a/b;->j()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b;)V
    .registers 2

    .prologue
    .line 606
    iput-object p1, p0, Lcn/domob/wall/core/a/b$12;->a:Lcn/domob/wall/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 608
    iget-object v0, p0, Lcn/domob/wall/core/a/b$12;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->m(Lcn/domob/wall/core/a/b;)V

    .line 609
    return-void
.end method
