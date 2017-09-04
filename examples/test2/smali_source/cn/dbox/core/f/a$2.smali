.class Lcn/dbox/core/f/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/dbox/core/c/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/f/a;


# direct methods
.method constructor <init>(Lcn/dbox/core/f/a;)V
    .registers 2

    .prologue
    .line 236
    iput-object p1, p0, Lcn/dbox/core/f/a$2;->a:Lcn/dbox/core/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/dbox/core/c/c;)V
    .registers 4

    .prologue
    .line 240
    if-eqz p1, :cond_13

    .line 241
    invoke-virtual {p1}, Lcn/dbox/core/c/c;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_13

    .line 242
    invoke-static {}, Lcn/dbox/core/f/a;->b()Lcn/dbox/core/h/d;

    move-result-object v0

    const-string v1, "Report finish: "

    invoke-virtual {v0, v1}, Lcn/dbox/core/h/d;->b(Ljava/lang/String;)V

    .line 247
    :cond_13
    return-void
.end method
