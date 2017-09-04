.class Lcn/domob/android/j/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/j/e;


# direct methods
.method constructor <init>(Lcn/domob/android/j/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lcn/domob/android/j/e$3;->b:Lcn/domob/android/j/e;

    iput-object p2, p0, Lcn/domob/android/j/e$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/j/e$3;->b:Lcn/domob/android/j/e;

    iget-object v1, p0, Lcn/domob/android/j/e$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/j/e;->loadUrl(Ljava/lang/String;)V

    .line 195
    return-void
.end method
