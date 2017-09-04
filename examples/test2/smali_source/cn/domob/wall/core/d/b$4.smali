.class Lcn/domob/wall/core/d/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/b;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/d/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/b;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcn/domob/wall/core/d/b$4;->a:Lcn/domob/wall/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
