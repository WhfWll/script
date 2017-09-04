.class public Lcn/dbox/core/d/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcn/dbox/core/d/g;


# direct methods
.method protected constructor <init>(Lcn/dbox/core/d/g;)V
    .registers 3

    .prologue
    .line 147
    iput-object p1, p0, Lcn/dbox/core/d/g$a;->b:Lcn/dbox/core/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/dbox/core/d/g$a;->a:Z

    return-void
.end method
