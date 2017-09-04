.class Lcn/dbox/ui/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field final synthetic d:Lcn/dbox/ui/a/b;


# direct methods
.method private constructor <init>(Lcn/dbox/ui/a/b;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcn/dbox/ui/a/b$a;->d:Lcn/dbox/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/dbox/ui/a/b;Lcn/dbox/ui/a/b$1;)V
    .registers 3

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcn/dbox/ui/a/b$a;-><init>(Lcn/dbox/ui/a/b;)V

    return-void
.end method
