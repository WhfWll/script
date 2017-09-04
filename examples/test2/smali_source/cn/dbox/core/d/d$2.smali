.class Lcn/dbox/core/d/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/d/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/d/d;


# direct methods
.method constructor <init>(Lcn/dbox/core/d/d;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcn/dbox/core/d/d$2;->a:Lcn/dbox/core/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    sget-object v0, Lcn/dbox/core/d/b;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/dbox/core/d/d$2;->a:Lcn/dbox/core/d/d;

    invoke-static {v1}, Lcn/dbox/core/d/d;->a(Lcn/dbox/core/d/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/dbox/core/d/b;

    .line 93
    if-eqz v0, :cond_1c

    .line 94
    invoke-virtual {v0}, Lcn/dbox/core/d/b;->b()V

    .line 95
    invoke-virtual {v0}, Lcn/dbox/core/d/b;->a()Lcn/dbox/core/d/c;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1c

    .line 98
    invoke-interface {v0}, Lcn/dbox/core/d/c;->b()V

    .line 101
    :cond_1c
    iget-object v0, p0, Lcn/dbox/core/d/d$2;->a:Lcn/dbox/core/d/d;

    invoke-virtual {v0}, Lcn/dbox/core/d/d;->finish()V

    .line 102
    return-void
.end method
