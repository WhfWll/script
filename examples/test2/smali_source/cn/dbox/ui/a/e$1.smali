.class Lcn/dbox/ui/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/b$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/ui/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/ui/a/e;


# direct methods
.method constructor <init>(Lcn/dbox/ui/a/e;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcn/dbox/ui/a/e$1;->a:Lcn/dbox/ui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    .prologue
    .line 111
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    if-eqz p1, :cond_f

    .line 114
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 123
    return-void
.end method
