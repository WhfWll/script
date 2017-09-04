.class Lcn/domob/android/j/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/a;


# direct methods
.method constructor <init>(Lcn/domob/android/j/a;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcn/domob/android/j/a$1;->a:Lcn/domob/android/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcn/domob/android/j/a$1;->a:Lcn/domob/android/j/a;

    invoke-virtual {v0}, Lcn/domob/android/j/a;->g()V

    .line 96
    return-void
.end method
