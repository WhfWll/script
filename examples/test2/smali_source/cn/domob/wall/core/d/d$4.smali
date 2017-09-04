.class Lcn/domob/wall/core/d/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/d/d;-><init>(Lcn/domob/wall/core/b;Landroid/content/Context;Lcn/domob/wall/core/bean/AdExtend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/d/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/d/d;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcn/domob/wall/core/d/d$4;->a:Lcn/domob/wall/core/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
