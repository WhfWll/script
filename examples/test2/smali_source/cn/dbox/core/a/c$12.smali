.class Lcn/dbox/core/a/c$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dbox/core/a/c;->m()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/dbox/core/a/c;


# direct methods
.method constructor <init>(Lcn/dbox/core/a/c;)V
    .registers 2

    .prologue
    .line 728
    iput-object p1, p0, Lcn/dbox/core/a/c$12;->a:Lcn/dbox/core/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 731
    :try_start_0
    iget-object v0, p0, Lcn/dbox/core/a/c$12;->a:Lcn/dbox/core/a/c;

    invoke-static {v0}, Lcn/dbox/core/a/c;->o(Lcn/dbox/core/a/c;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 735
    :goto_5
    return-void

    .line 732
    :catch_6
    move-exception v0

    .line 733
    invoke-static {}, Lcn/dbox/core/a/c;->c()Lcn/dbox/core/h/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/dbox/core/a/c$12;->a:Lcn/dbox/core/a/c;

    invoke-static {v2}, Lcn/dbox/core/a/c;->p(Lcn/dbox/core/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/dbox/core/h/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5
.end method
