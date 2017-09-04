.class Lcn/dbox/ui/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field final synthetic e:Lcn/dbox/ui/a/f;


# direct methods
.method private constructor <init>(Lcn/dbox/ui/a/f;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcn/dbox/ui/a/f$a;->e:Lcn/dbox/ui/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/dbox/ui/a/f;Lcn/dbox/ui/a/f$1;)V
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcn/dbox/ui/a/f$a;-><init>(Lcn/dbox/ui/a/f;)V

    return-void
.end method
