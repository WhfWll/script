.class Lcn/domob/android/j/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 398
    iput-object p1, p0, Lcn/domob/android/j/a$10;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 401
    iget-object v0, p0, Lcn/domob/android/j/a$10;->a:Lcn/domob/android/j/a;

    invoke-static {v0}, Lcn/domob/android/j/a;->j(Lcn/domob/android/j/a;)Lcn/domob/android/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/j/d;->c()V

    .line 402
    const/4 v0, 0x0

    return v0
.end method
