.class Lcn/domob/android/j/d$a;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcn/domob/android/j/b$a$a$a;

.field final synthetic b:Lcn/domob/android/j/d;


# direct methods
.method public constructor <init>(Lcn/domob/android/j/d;Landroid/content/Context;Lcn/domob/android/j/b$a$a$a;)V
    .registers 4

    .prologue
    .line 604
    iput-object p1, p0, Lcn/domob/android/j/d$a;->b:Lcn/domob/android/j/d;

    .line 605
    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 606
    iput-object p3, p0, Lcn/domob/android/j/d$a;->a:Lcn/domob/android/j/b$a$a$a;

    .line 607
    return-void
.end method

.method private a()Lcn/domob/android/j/b$a$a$a;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcn/domob/android/j/d$a;->a:Lcn/domob/android/j/b$a$a$a;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/j/d$a;)Lcn/domob/android/j/b$a$a$a;
    .registers 2

    .prologue
    .line 601
    invoke-direct {p0}, Lcn/domob/android/j/d$a;->a()Lcn/domob/android/j/b$a$a$a;

    move-result-object v0

    return-object v0
.end method
