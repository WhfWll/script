.class Lcn/dbox/core/h/b$a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dbox/core/h/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2


# instance fields
.field final synthetic d:Lcn/dbox/core/h/b$a;


# direct methods
.method private constructor <init>(Lcn/dbox/core/h/b$a;)V
    .registers 2

    .prologue
    .line 653
    iput-object p1, p0, Lcn/dbox/core/h/b$a$c;->d:Lcn/dbox/core/h/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
