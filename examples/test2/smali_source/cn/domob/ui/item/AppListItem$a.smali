.class Lcn/domob/ui/item/AppListItem$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/item/AppListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcn/domob/ui/item/AppListItem;


# direct methods
.method private constructor <init>(Lcn/domob/ui/item/AppListItem;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcn/domob/ui/item/AppListItem$a;->b:Lcn/domob/ui/item/AppListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/item/AppListItem;Lcn/domob/ui/item/AppListItem$1;)V
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcn/domob/ui/item/AppListItem$a;-><init>(Lcn/domob/ui/item/AppListItem;)V

    return-void
.end method
