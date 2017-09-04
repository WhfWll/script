.class Lcn/domob/ui/item/AppListItem$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/AppListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field final synthetic j:Lcn/domob/ui/item/AppListItem;


# direct methods
.method private constructor <init>(Lcn/domob/ui/item/AppListItem;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$c;->j:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$1;)V
    .registers 3

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcn/domob/ui/item/AppListItem$c;-><init>(Lcn/domob/ui/item/AppListItem;)V

    return-void
.end method
