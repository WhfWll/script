.class public Lcom/tl/uic/util/UICOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "UICOnGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final uicActivity:Lcom/tl/uic/app/UICActivity;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    const v1, 0x42d

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/app/UICActivity;Landroid/view/View;)V
    .registers 3
    .param p1, "uicActivity"    # Lcom/tl/uic/app/UICActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    .line 28
    iput-object p2, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Landroid/view/View;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Lcom/tl/uic/app/UICActivity;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    return-object v0
.end method


# virtual methods
.method public final native onGlobalLayout()V
.end method

.method public final native setListenersOnChildren(Landroid/view/View;)V
.end method
