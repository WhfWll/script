.class public Lcn/dbox/core/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "s"

.field public static final b:Ljava/lang/String; = "ac"


# instance fields
.field final synthetic c:Lcn/dbox/core/a;


# direct methods
.method public constructor <init>(Lcn/dbox/core/a;)V
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcn/dbox/core/a$b;->c:Lcn/dbox/core/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
