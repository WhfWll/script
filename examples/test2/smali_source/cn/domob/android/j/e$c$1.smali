.class Lcn/domob/android/j/e$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/j/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/j/e$c;


# direct methods
.method constructor <init>(Lcn/domob/android/j/e$c;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcn/domob/android/j/e$c$1;->a:Lcn/domob/android/j/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/j/e$c$1;->a:Lcn/domob/android/j/e$c;

    iget-object v0, v0, Lcn/domob/android/j/e$c;->a:Lcn/domob/android/j/e;

    invoke-virtual {v0}, Lcn/domob/android/j/e;->stopLoading()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 144
    :goto_7
    return-void

    .line 141
    :catch_8
    move-exception v0

    .line 142
    invoke-static {}, Lcn/domob/android/j/e;->a()Lcn/domob/android/i/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/i/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
