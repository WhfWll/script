.class Lcn/dbox/ui/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/ui/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcn/dbox/ui/a/c;


# direct methods
.method private constructor <init>(Lcn/dbox/ui/a/c;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcn/dbox/ui/a/c$a;->b:Lcn/dbox/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/dbox/ui/a/c;Lcn/dbox/ui/a/c$1;)V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcn/dbox/ui/a/c$a;-><init>(Lcn/dbox/ui/a/c;)V

    return-void
.end method
