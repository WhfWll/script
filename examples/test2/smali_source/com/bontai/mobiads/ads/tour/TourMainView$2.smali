.class Lcom/bontai/mobiads/ads/tour/TourMainView$2;
.super Ljava/lang/Object;
.source "TourMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bontai/mobiads/ads/tour/TourMainView;->jumpTourMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/tour/TourMainView$2;

    const v1, 0x125

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/bontai/mobiads/ads/tour/TourMainView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bontai/mobiads/ads/tour/TourMainView$2;->this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bontai/mobiads/ads/tour/TourMainView$2;)Lcom/bontai/mobiads/ads/tour/TourMainView;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bontai/mobiads/ads/tour/TourMainView$2;->this$0:Lcom/bontai/mobiads/ads/tour/TourMainView;

    return-object v0
.end method


# virtual methods
.method public native onClick(Landroid/view/View;)V
.end method
