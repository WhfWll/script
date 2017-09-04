.class Lcn/dbox/core/d/l$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcn/dbox/core/d/l;


# direct methods
.method public constructor <init>(Lcn/dbox/core/d/l;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 139
    iput-object p1, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    iput-object p2, p0, Lcn/dbox/core/d/l$a;->a:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcn/dbox/core/d/l$a;->b:Landroid/widget/ImageView;

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget-object v0, p0, Lcn/dbox/core/d/l$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/dbox/core/d/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3c

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 149
    if-eqz v0, :cond_2a

    .line 150
    iget-object v1, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v1, v1, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    if-eqz v1, :cond_29

    .line 151
    iget-object v1, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v1, v1, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    iget-object v2, p0, Lcn/dbox/core/d/l$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/dbox/core/d/l$a;->b:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2, v3}, Lcn/dbox/core/b$k;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 165
    :cond_29
    :goto_29
    return-void

    .line 154
    :cond_2a
    iget-object v0, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v0, v0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    if-eqz v0, :cond_29

    .line 155
    iget-object v0, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v0, v0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    iget-object v1, p0, Lcn/dbox/core/d/l$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/dbox/core/d/l$a;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lcn/dbox/core/b$k;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_29

    .line 160
    :cond_3c
    iget-object v0, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v0, v0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    if-eqz v0, :cond_29

    .line 161
    iget-object v0, p0, Lcn/dbox/core/d/l$a;->c:Lcn/dbox/core/d/l;

    iget-object v0, v0, Lcn/dbox/core/d/l;->a:Lcn/dbox/core/b$k;

    iget-object v1, p0, Lcn/dbox/core/d/l$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/dbox/core/d/l$a;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2}, Lcn/dbox/core/b$k;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_29
.end method
