.class Lcn/domob/android/f/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/f/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/f/d;


# direct methods
.method constructor <init>(Lcn/domob/android/f/d;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcn/domob/android/f/d$1;->a:Lcn/domob/android/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    invoke-static {}, Lcn/domob/android/f/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    invoke-static {p1}, Lcn/domob/android/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    return-void
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lcn/domob/android/f/d;->c()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    invoke-static {}, Lcn/domob/android/f/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
