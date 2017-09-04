.class Lcn/domob/wall/core/d/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 77
    iput-object p1, p0, Lcn/domob/wall/core/d/b$5;->a:Lcn/domob/wall/core/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
